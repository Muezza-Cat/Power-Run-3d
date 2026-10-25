using UnityEngine;


//Internal Logic part;
public class UnitSelector : MonoBehaviour
{
    private void Start()
    {
        foreach (UnitTemplateUI unitTemplateUI in UnitSelectionWindowUI.Instance.GetUnitTemplateList())
        {
            unitTemplateUI.OnTemplateUpdated += UnitTemplateUI_OnTemplateUpdated;
        }
    }


    private void UnitTemplateUI_OnTemplateUpdated(object sender, UnitTemplateUI.OnTemplateUpdatedEventArgs e)
    {
        GameplayManager.Instance.playerHorde.ClearUnitsList(); //Units are dequeued in the beginning to spawn in the horde, so they must be cleared out too.
        ObjectPooler.Instance.ChangeUnitInPool(e.unitTempalteUI.unitTemplateSO.unitPrefab);

        GameplayManager.Instance.playerHorde.AddStartingUnits(GameplayManager.Instance.playerHorde.GetUnitPositionList());
    }



    //Under Construction;
    public class SaveSystem
    {

    }


    public void Save()
    {

    }

    public void Load()
    {

    }
}
