using System;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.SceneManagement;


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
    public float remainingHordeCount;
    private List<float> hordeScore;
    private List<int> playerLives; //Each player i.e. hordes, have 4 lives before perma- dead;


    [Header("Reference")]
    public HordeFormation playerHorde;


    [Header("Settings")]
    [SerializeField] private TextMeshProUGUI winnerText;
    [SerializeField] private int Lives = 4;

    [Header("Score")]
    private int baseFlagSPM = 60; //SPM = Score Per Minute

    float scoreByFlags = 0f;
    float scoreByHome = 0f;



    private void Awake()
    {
        Instance = this;


        hordeFormations = new List<HordeFormation>();
        playerLives = new List<int>();
        hordeScore = new List<float>();

        remainingHordeCount = hordeFormations.Count;

        foreach (HordeData hordeHome in hordeHomeList)
        {
            HordeFormation hordeFormation = hordeHome.hordeFormation;
            hordeFormations.Add(hordeFormation);
            playerLives.Add(Lives);
            hordeScore.Add(hordeFormation.score);
        }

        scoreByHome = (baseFlagSPM * Time.deltaTime) / 60f;
    }

    private void Start()
    {
        SaveSystem.Instance.SaveData();

        foreach (HordeFormation hordeFormation in hordeFormations)
        {
            hordeFormation.OnDisableUpdateEnemyLayer += UpdateInteractableLayer;
            hordeFormation.UpdatePlayerLives += PlayerLivesCounter;
        }
    }


    private void Update()
    {
        CalculateScore();
    }


    private void CalculateScore()
    {
        scoreByFlags = 0f;

        hordeScore.Clear();
        foreach (HordeFormation hordeFormation in hordeFormations)
        {
            hordeScore.Add(hordeFormation.score);

            foreach (Flag flag in hordeFormation.GetOccupiedFlags())
            {
                scoreByFlags += (flag.scorePerMinute * Time.deltaTime) / 60f; 
            }
            hordeFormation.score += (scoreByFlags);
        }

        
        OnScoreUpdated?.Invoke(hordeScore);
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
                    hordeFormation.AddUnitForFree(GetHomeTransform(hordeFormation));
                }
                else
                {
                    hordeFormation.gameObject.SetActive(false);
                    hordeFormation.gameObject.transform.position = GetHomeTransform(hordeFormation).position;

                    hordeFormation.UpdatePlayerLives -= PlayerLivesCounter;
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
    public int GetPlayerRemainingLives(HordeFormation hordeFormation)
    {
        int playerIndex = hordeFormations.IndexOf(hordeFormation);
        return playerLives[playerIndex];
    }

    public List<Transform> GetFlagList()
    {
        return flagList;
    }

    


    public class SaveObject
    {
        public int targetSceneIndex;
    }

    public SaveObject SaveOnLevelLoad(bool levelCompleted)
    {
        if (levelCompleted)
        {
            return new SaveObject() { targetSceneIndex = SceneManager.GetActiveScene().buildIndex + 1 };
        }
        else
        {
            return new SaveObject() { targetSceneIndex = SceneManager.GetActiveScene().buildIndex };
        }
    }

    public SaveObject SaveOnLevelComplete()
    {
        return new SaveObject() { targetSceneIndex = SceneManager.GetActiveScene().buildIndex + 1 };
    }

    public void Load(SaveObject saveObject)
    {
        int sceneIndex = saveObject.targetSceneIndex;
        SceneLoader.LoadScene(/*(SceneLoader.Scene) */sceneIndex);
    }
}
