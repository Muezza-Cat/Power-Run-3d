using UnityEngine;
using System.Collections.Generic;


public class EnemyManager : MonoBehaviour
{
    #region Singleton
    public static EnemyManager Instance { get; private set; }
    #endregion


    [Header("Collection")]
    [SerializeField] private List<DifficultyMode> difficultyModes;

    [Header("Setting")]
    public float singleUnitMorale = 2f;
    public float unitGroupMorale = 10f; //if unit Count is in the multiple of 10;


    private void Awake()
    {
        if (Instance == null) Instance = this;
        else Destroy(this.gameObject);


        foreach (DifficultyMode controller in difficultyModes)
        {
            controller.enemyController.SetDifficultyMode(controller.difficultyMode);
        }
    }
}
