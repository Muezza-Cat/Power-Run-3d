using System;
using System.Collections.Generic;
using TMPro;
using UnityEngine;



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
    [SerializeField] private List<HordeHome> hordeHomeList;
    [SerializeField] private List<Transform> flagList;
    [HideInInspector] public List<HordeFormation> hordeFormations;


    [Header("Settings")]
    [SerializeField] private float gameplayTime = 6f;
    [SerializeField] private TextMeshProUGUI winnerText;

    [Header("Score")]
    private int baseFlagSPM = 60; //SPM = Score Per Minute




    private void Awake()
    {
        Instance = this;

        hordeFormations = new List<HordeFormation>();
        foreach (HordeHome hordeHome in hordeHomeList)
        {
            hordeFormations.Add(hordeHome.hordeFormation);
        }
    }

    private void Update()
    {
        CalculateScore();

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
        winner = hordeFormations[0];
        highestMorale = winner.hordeMorale;
        foreach (HordeFormation hordeFormation in hordeFormations)
        {
            if (hordeFormation.hordeMorale > highestMorale)
            {
                winner = hordeFormation;
                highestMorale = winner.hordeMorale;
            }
        }
        if (winnerText != null) winnerText.text = winner.name;
    }


    public Transform GetHomeTransform(HordeFormation hordeFormation)
    {
        Transform home = null;

        foreach (HordeHome hordeHome in hordeHomeList)
        {
            if (hordeHome.hordeFormation == hordeFormation)
            {
                home = hordeHome.home;
            }
        }
        return home;
    }
    private void CalculateScore()
    {
        foreach (HordeFormation hordeFormation in hordeFormations)
        {
            if (hordeFormation.GetOccupiedFlags().Count == 0) continue;

            foreach (Flag flag in hordeFormation.GetOccupiedFlags())
            {
                hordeFormation.score += ((flag.scorePerMinute + baseFlagSPM) * Time.deltaTime) / 60f;
            }
        }
    }
}
