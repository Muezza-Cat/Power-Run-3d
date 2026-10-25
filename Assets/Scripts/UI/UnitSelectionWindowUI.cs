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
    [SerializeField] private UnitTemplateUI baseUnitTemplateUI;
    public Sprite selectedButtonImage;
    public Sprite unselectedButtonImage;


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
        ResetAllTemplates?.Invoke(this, EventArgs.Empty);
    }


    public List<UnitTemplateUI> GetUnitTemplateList()
    {
        return unitTemplateList;
    }
}
