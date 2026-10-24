using UnityEngine;
using System.Collections.Generic;
using System;


//Testing Phase;
public class UnitSelectionWindowUI : MonoBehaviour
{
    #region Events
    public event EventHandler ResetAllTemplates; //Disselect all other and select this one only;
    #endregion



    [Header("Reference")]
    [SerializeField] private UnitTemplateUI baseUnitTemplateUI;
    public Sprite selectedButtonImage;
    public Sprite unselectedButtonImage;


    [Header("Collection")]
    private List<UnitTemplateUI> unitTemplateList;





    private void Awake()
    {
        unitTemplateList = new List<UnitTemplateUI>();
    }


    private void Start()
    {
        foreach (Transform child in transform)
        {
            if (child == baseUnitTemplateUI.transform) continue;
            UnitTemplateUI unitTemplateUI = child.GetComponent<UnitTemplateUI>();
            unitTemplateList.Add(unitTemplateUI);

            unitTemplateUI.OnTemplateUpdated += UnitTemplateUI_OnTemplateUpdated;
        }
    }

    private void UnitTemplateUI_OnTemplateUpdated(object sender, UnitTemplateUI.OnTemplateUpdatedEventArgs e)
    {
        ResetAllTemplates?.Invoke(this, EventArgs.Empty);
    }
}
