using UnityEngine;
using System.Collections.Generic;
using System;


//Testing Phase;
public class UnitSelectionWindowUI : MonoBehaviour
{
    #region Singleton
    public static UnitSelectionWindowUI Instance;
    #endregion


    #region Events
    public event EventHandler ResetAllTemplates; //Disselect all other and select this one only;
    #endregion



    [Header("Reference")]
    [SerializeField] private UnitTemplateUI baseUnitTemplateUI; //Must have one default;
    public Sprite selectedButtonImage;
    public Sprite unselectedButtonImage;

    /*[SerializeField] */private UnitTemplateUI selectedUnitTemplateUI;


    [Header("Collection")]
    private List<UnitTemplateUI> unitTemplateList;





    private void Awake()
    {
        Instance = this;
        unitTemplateList = new List<UnitTemplateUI>();

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
        selectedUnitTemplateUI = e.unitTemplateUI;
        Debug.Log("selectedUnitTemplateUI: " + selectedUnitTemplateUI);
        SaveSystem.Instance.SaveData();

        ResetAllTemplates?.Invoke(this, EventArgs.Empty);
    }


    public List<UnitTemplateUI> GetUnitTemplateList()
    {
        return unitTemplateList;
    }





    [Serializable]
    public class SaveObject
    {
        public UnitTemplateUI unitTemplateUI;
    }

    public SaveObject Save()
    {
        return new SaveObject() { unitTemplateUI = selectedUnitTemplateUI };
    }

    public void Load(SaveObject saveObject)
    {
        if (saveObject.unitTemplateUI == null)
        {
            Debug.LogWarning("UnitTemplateUI is null");
            return;
        }
        selectedUnitTemplateUI = saveObject.unitTemplateUI;
        Debug.Log(selectedUnitTemplateUI);

        selectedUnitTemplateUI.DisplayAsSelected();
        selectedUnitTemplateUI.isSelected = true;
    }
}
