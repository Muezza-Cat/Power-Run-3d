using UnityEngine;


//Internal Logic part;
public class UnitSelector : MonoBehaviour
{
    #region Singleton
    public static UnitSelector Instance;
    #endregion

    [Header("Setting")]
    [HideInInspector] public GameObject selectedUnit;





    private void Awake()
    {
        Instance = this;
    }


    private void Start()
    {
        foreach (UnitTemplateUI unitTemplateUI in UnitSelectionWindowUI.Instance.GetUnitTemplateList())
        {
            unitTemplateUI.OnTemplateUpdated += UnitTemplateUI_OnTemplateUpdated;
        }
    }


    private void UnitTemplateUI_OnTemplateUpdated(object sender, UnitTemplateUI.OnTemplateUpdatedEventArgs e)
    {
        selectedUnit = e.unitTemplateUI.unitTemplateSO.unitPrefab;
        SaveSystem.Instance.SaveData();

        GameplayManager.Instance.playerHorde.ClearUnitsList(); //Units are dequeued in the beginning to spawn in the horde, so they must be cleared out too.
        ObjectPooler.Instance.ChangeUnitInPool(selectedUnit);

        GameplayManager.Instance.playerHorde.AddStartingUnits(GameplayManager.Instance.playerHorde.GetUnitPositionList());
    }
}
