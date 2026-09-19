using UnityEngine;
using System.Collections.Generic;


public class EnemyManager : MonoBehaviour
{
    //Singleton
    public static EnemyManager Instance { get; private set; }

    [SerializeField] private List<DifficultyMode> difficultyModes;
    public List<HordeFormation> hordeFormations;


    private void Awake()
    {
        if (Instance == null) Instance = this;
        else Destroy(this.gameObject);
    }

    private void Start()
    {
        foreach (DifficultyMode controller in difficultyModes)
        {
            controller.enemyController.SetDifficultyMode(controller.difficultyMode);
        }
    }
}
