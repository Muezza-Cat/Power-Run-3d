using System;
using System.Collections.Generic;
using TMPro;
using UnityEngine;



public class GameplayManager : MonoBehaviour
{
    #region Singleton
    public static GameplayManager Instance { get; private set; }
    #endregion

    #region Events
    public Action<List<float>> OnScoreUpdated;
    #endregion


    [Serializable]
    private struct HordeData
    {
        public Transform home;
        public HordeFormation hordeFormation;
        public Material unitMaterial;
    }


    [Header("Collection")]
    [SerializeField] private List<HordeData> hordeHomeList;
    [SerializeField] private List<Transform> flagList;
    private List<HordeFormation> hordeFormations;
    private List<float> hordeScore;
    private List<int> playerLives; //Each player i.e. hordes, have 4 lives before perma- dead;


    [Header("Settings")]
    [SerializeField] private TextMeshProUGUI winnerText;
    [SerializeField] private int Lives = 4;

    [Header("Score")]
    private int baseFlagSPM = 60; //SPM = Score Per Minute




    private void Awake()
    {
        Instance = this;

        hordeFormations = new List<HordeFormation>();
        playerLives = new List<int>();  
        hordeScore = new List<float>();

        foreach (HordeData hordeHome in hordeHomeList)
        {
            HordeFormation hordeFormation = hordeHome.hordeFormation;
            hordeFormations.Add(hordeFormation);
            playerLives.Add(Lives);
            hordeScore.Add(hordeFormation.score);
        }
    }

    private void Start()
    {
        foreach (HordeFormation hordeFormation in hordeFormations)
        {
            hordeFormation.OnDisableUpdateEnemyLayer += UpdateInteractableLayer;
            hordeFormation.UpdatePlayerLives += PlayerLivesCounter;
        }
    }
    

    private void Update()
    {
        CalculateScore();

        if (GameStateManager.Instance.IsGameTimeOut())
        {
            DisplayWinner();
        }
    }

    float highestScore;
    HordeFormation winner;
    
    //Logic Incorrect; Needs modification for final product;
    private void DisplayWinner()
    {
        //TimeoutWindow.Show();
        winner = hordeFormations[0];
        highestScore = winner.score;
        foreach (HordeFormation hordeFormation in hordeFormations)
        {
            if (hordeFormation.score > highestScore)
            {
                winner = hordeFormation;
                highestScore = winner.hordeMorale;
            }
        }

        Debug.Log(winner.name);
        //if (winnerText != null) winnerText.text = winner.name;
    }



    private void CalculateScore()
    {
        hordeScore.Clear();

        foreach (HordeFormation hordeFormation in hordeFormations)
        {
            hordeScore.Add(hordeFormation.score);

            if (hordeFormation.GetOccupiedFlags().Count == 0)
            {
                hordeFormation.score = hordeFormation.coinsAllTime / 2f;
                continue;
            }
            else
            {
                foreach (Flag flag in hordeFormation.GetOccupiedFlags())
                {
                    hordeFormation.score += ((flag.scorePerMinute * Time.deltaTime) / 60f) + hordeFormation.coinsAllTime / 2f;
                }
            }
        }
        OnScoreUpdated?.Invoke(hordeScore); //UI score...
    }


    private void UpdateInteractableLayer(int layer, HordeFormation eliminatedHorde)
    {
        foreach (HordeFormation hordeFormation in hordeFormations)
        {
            if (hordeFormation == eliminatedHorde) continue;
            hordeFormation.baseController.RemoveDeadEnemyLayer(layer);
        }

        eliminatedHorde.OnDisableUpdateEnemyLayer -= UpdateInteractableLayer;
    }

    private void PlayerLivesCounter(HordeFormation respawningHorde)
    {
        for (int i = 0; i < hordeFormations.Count; i++)
        {
            if (hordeFormations[i] == respawningHorde)
            {
                HordeFormation hordeFormation = hordeFormations[i];
                if (hordeFormation.GetUnitCount() != 0) return;

                playerLives[i]--;

                if (playerLives[i] != 0)
                {
                    hordeFormation.gameObject.transform.position = GetHomeTransform(hordeFormation).position;
                    hordeFormation.AddUnitForFree();
                }
                else
                {
                    hordeFormation.gameObject.SetActive(false);
                    hordeFormation.UpdatePlayerLives -= PlayerLivesCounter;

                    //Display GameOver window or something like those;
                    return;
                }
            }
        }
    }


    public List<float> GetScoreList()
    {
        return hordeScore;
    }
    public List<HordeFormation> GetHordeFormation()
    {
        return hordeFormations;
    }
    public Transform GetHomeTransform(HordeFormation hordeFormation)
    {
        Transform home = null;

        foreach (HordeData hordeHome in hordeHomeList)
        {
            if (hordeHome.hordeFormation == hordeFormation)
            {
                home = hordeHome.home;
            }
        }
        return home;
    }
    public Material GetUnitMaterial(HordeFormation hordeFormation)
    {
        Material unitMaterial = null;
        foreach (HordeData hordeHome in hordeHomeList)
        {
            if (hordeHome.hordeFormation != hordeFormation) continue;

            unitMaterial = hordeHome.unitMaterial;
        }
        return unitMaterial;
    }
}
