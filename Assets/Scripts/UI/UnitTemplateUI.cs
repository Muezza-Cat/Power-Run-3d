using System;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class UnitTemplateUI : MonoBehaviour
{
    #region Events
    public event EventHandler<OnTemplateUpdatedEventArgs> OnTemplateUpdated;
    #endregion

    public class OnTemplateUpdatedEventArgs : EventArgs
    {
        public UnitTemplateUI unitTempalteUI;
    }




    [Header("Reference")]
    private UnitSelectionWindowUI unitSelectionWindowUI;
    public Image unitImage;
    public Image backgroundImage;

    public Button selectionButton;
    private TextMeshProUGUI selectionButtonText;


    [Header("Settings")]
    private const string SELECTED = "Selected";
    private const string SELECT = "Select";

    private float bgDefaultAlphaValue = 130f / 255f; //Color uses a normalized value, i.e, 0f - 1f;
    private float bgSelectedAlphaValue = 1f;

    public bool isSelected = false;



    private void Awake()
    {
        unitSelectionWindowUI = GetComponentInParent<UnitSelectionWindowUI>();
    }


    private void Start()
    {
        selectionButtonText = selectionButton.GetComponentInChildren<TextMeshProUGUI>();

        unitSelectionWindowUI.ResetAllTemplates += ResetToDefault;

        selectionButton.onClick.AddListener(() =>
        {
            if (isSelected) return;

            OnTemplateUpdated?.Invoke(this, new OnTemplateUpdatedEventArgs() { unitTempalteUI = this});

            isSelected = true;
            DisplayAsSelected();
        });
    }


    public void DisplayAsSelected()
    {
        selectionButtonText.text = SELECTED;
        selectionButton.image.sprite = unitSelectionWindowUI.selectedButtonImage;

        Color color = backgroundImage.color;
        color.a = bgSelectedAlphaValue;
        backgroundImage.color = color;
    }

    public void ResetToDefault(object sender, EventArgs e)
    {
        isSelected = false;
        selectionButtonText.text = SELECT;
        selectionButton.image.sprite = unitSelectionWindowUI.unselectedButtonImage;

        Color color = backgroundImage.color;
        color.a = bgDefaultAlphaValue;
        backgroundImage.color = color;
    }
}
