using UnityEngine;
using System;
using System.Collections.Generic;
using TMPro;

public class GameplayManager : MonoBehaviour
{
    #region Singleton
    public static GameplayManager Instance { get; private set; }
    #endregion


    [Serializable]
    private struct HordeHome
    {
        public Transform home;
        public HordeFormation hordeFormation;
    }


    [Header("Collection")]
    [SerializeField] private List<HordeHome> horde_Homes_List;
    [SerializeField] private List<Transform> flagList;


    [Header("Settings")]
    [SerializeField] private float gameplayTime = 6f;
    [SerializeField] private TextMeshProUGUI winnerText;

    [Header("Score")]
    private int baseFlagSPM = 60; //SPM = Score Per Minute




    private void Awake()
    {
        Instance = this;
    }

    private void Update()
    {
        gameplayTime -= Time.deltaTime;
        if (gameplayTime <= 0f)
        {
            DisplayWinner();
            Time.timeScale = 0f;
            return;
        }
    }

    float highestMorale;
    HordeFormation winner;
    
    private void DisplayWinner()
    {
        winner = EnemyManager.Instance.hordeFormations[0];
        highestMorale = winner.hordeMorale;
        foreach (HordeFormation hordeFormation in EnemyManager.Instance.hordeFormations)
        {
            if (hordeFormation.hordeMorale > highestMorale)
            {
                winner = hordeFormation;
                highestMorale = winner.hordeMorale;
            }
        }
        winnerText.text = winner.name;
    }


    public Transform GetHomeTransform(HordeFormation hordeFormation)
    {
        Transform home = null;

        foreach (HordeHome hordeHome in horde_Homes_List)
        {
            if (hordeHome.hordeFormation == hordeFormation)
            {
                home = hordeHome.home;
            }
        }
        return home;
    }
}
