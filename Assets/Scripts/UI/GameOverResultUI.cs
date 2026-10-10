using System.Collections.Generic;
using TMPro;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.UI;





//Result after the time is over and player is unable to kill other or doesn't die;
public class GameOverResultUI : MonoBehaviour
{
    [Header("Tempalte")]
    [SerializeField] private GameObject finalScoreUITemplate;
    [SerializeField] private Transform finalRankParentTransform;


    [Header("Buttons")]
    [SerializeField] private Button nextButton;
    [SerializeField] private Button quitButton;
    [SerializeField] private Button restartButton;


    [Header("Reference")]
    private GameplayManager gameplayManager;
    private GameStateManager gameStateManager;
    [SerializeField] private HordeFormation playerHorde;

    [SerializeField] private TextMeshProUGUI resultText; //Win or Lose;
    [SerializeField] private TextMeshProUGUI obtainedRankText;
    [SerializeField] private TextMeshProUGUI winnerText;


    [Header("Settings")]
    private float scoreBarWidthMax = 500f;
    float highestScore;
    HordeFormation highestScoringHorde;


    [Header("Collection")]
    List<float> sortedScoreList;
    List<HordeFormation> sortedHordeByScore;

    [Header("String")]
    private string LOSE = "Defeat";
    private string WIN = "Victory";


    private void Awake()
    {
        sortedScoreList = new List<float>();
        sortedHordeByScore = new List<HordeFormation>();
    }


    private void Start()
    {
        gameplayManager = GameplayManager.Instance;
        gameStateManager = GameStateManager.Instance;

        highestScore = 0f;
        highestScoringHorde = gameplayManager.GetHordeFormation()[0];

        gameStateManager.OnStateChanged += GameStateManager_OnStateChanged;

        nextButton.onClick.AddListener(() =>
        {

        });
        restartButton.onClick.AddListener(() =>
        {
            SceneLoader.ReloadScene();
        });
        quitButton.onClick.AddListener(() =>
        {
            SceneLoader.LoadScene(SceneLoader.Scene.MainMenuScene);
        });


        UIManager.Instance.DisableGameOverWindowUI();
    }


    private void GameStateManager_OnStateChanged()
    {
        if (gameStateManager.IsGameOver())
        {
            Debug.Log("Ran GameOver condition");

            UIManager.Instance.EnableGameOverWindowUI();

            CalculateFinalScore(GetDeadHordeList());
            DisplayFinalScores();

            gameStateManager.ToggleGameState();
        }
        else if (gameplayManager.GetPlayerRemainingLives(playerHorde) == 0) //If player dead;
        {
            Debug.Log("Ran Player eliminated condition");

            UIManager.Instance.EnableGameOverWindowUI();

            CalculateFinalScore(GetDeadHordeList());
            DisplayFinalScores();

            gameStateManager.ToggleGameState();
        }
        else if (gameplayManager.remainingHordeCount == 1 && gameplayManager.GetPlayerRemainingLives(playerHorde) > 0)
        {
            Debug.Log("Ran only player remaining condition");

            UIManager.Instance.EnableGameOverWindowUI();
            
            CalculateFinalScore(GetDeadHordeList());
            DisplayFinalScores();

            gameStateManager.ToggleGameState();
        }
    }



    private List<HordeFormation> GetDeadHordeList()
    {
        List<HordeFormation> excludingHorde = new List<HordeFormation>();
        foreach (HordeFormation hordeFormation in gameplayManager.GetHordeFormation())
        {
            if (gameplayManager.GetPlayerRemainingLives(hordeFormation) == 0) excludingHorde.Add(hordeFormation);
        }
        return excludingHorde;
    }


    //Logic part of FinalScore calculation;
    private HordeFormation winnerHorde;
    private void CalculateFinalScore(List<HordeFormation> excludingHordes)
    {
        bool shouldIterate = true;
        int highestScoreIndex = 0;

        List<int> alreadySelectedIndexes = new List<int>();
        for (int i = 0; i < gameplayManager.GetScoreList().Count; i++)
        {
            highestScore = 0f;
            for (int j = 0; j < gameplayManager.GetScoreList().Count; j++)
            {
                shouldIterate = true;
                foreach (int index in alreadySelectedIndexes)
                {
                    if (j == index)
                    {
                        shouldIterate = false;
                    }
                }


                if (gameplayManager.GetScoreList()[j] > highestScore && shouldIterate)
                {
                    highestScore = gameplayManager.GetScoreList()[j];
                    highestScoreIndex = j;
                    highestScoringHorde = gameplayManager.GetHordeFormation()[j];
                }
            }
            sortedScoreList.Add(highestScore);
            sortedHordeByScore.Add(highestScoringHorde);
            alreadySelectedIndexes.Add(highestScoreIndex);
        }

        winnerHorde = sortedHordeByScore[0];

        for (int k = 0; k < excludingHordes.Count; k++)
        {
            foreach (HordeFormation excludingHorde in excludingHordes)
            {
                if (sortedHordeByScore[k] == excludingHorde)
                {
                    winnerHorde = sortedHordeByScore[k + 1];
                }
            }
        }
    }

    //Just UI of the FinalScore;
    private void DisplayFinalScores()
    {
        for (int i = 0; i < GameplayManager.Instance.GetHordeFormation().Count; i++)
        {
            ScoreUITemplate scoreUITemplate = Instantiate(finalScoreUITemplate, finalRankParentTransform).GetComponent<ScoreUITemplate>();
            scoreUITemplate.gameObject.SetActive(true);
            scoreUITemplate.transform.localPosition = new Vector2(0f, i * -75f);

            float scoreBarWidth = (sortedScoreList[i] / (sortedScoreList[i] + 110f)) * scoreBarWidthMax;
            scoreUITemplate.Initialize(Mathf.FloorToInt(sortedScoreList[i]), scoreBarWidth + 10f);
            scoreUITemplate.scoreBar.color = gameplayManager.GetUnitMaterial(sortedHordeByScore[i]).color;
            Debug.Log(scoreBarWidth);
        }

        if (winnerHorde == playerHorde)
        {
            resultText.text = WIN;
            obtainedRankText.text = "Your Rank : #1";
            winnerText.text = "Winner : " + winnerHorde.name;

            winnerText.color = gameplayManager.GetUnitMaterial(winnerHorde).color;

            HideUIButton(new Button[] { quitButton, restartButton, quitButton }); //Just for formality;
            ShowUIButton(new Button[] { quitButton, restartButton, quitButton });
        }
        else
        {
            resultText.text = LOSE;
            obtainedRankText.text = "Your Rank : #" + (sortedHordeByScore.IndexOf(playerHorde) + 1).ToString();
            winnerText.text = winnerHorde.name;

            HideUIButton(new Button[] { quitButton, restartButton, quitButton });
            ShowUIButton(new Button[] {quitButton, restartButton});
        }
    }
   

    //private void DisplayGameOverOnPlayerWin()
    //{
    //    resultText.text = WIN;
    //    obtainedRankText.text = "Your Rank : #1";

    //    HideUIButton(new Button[] { quitButton, restartButton, quitButton }); //Just for formality;
    //    ShowUIButton(new Button[] { quitButton, restartButton, quitButton });
    //}

    //private void DisplayGameOverOnPlayerLost()
    //{
    //    resultText.text = LOSE;
    //    obtainedRankText.text = "Your Rank : NIL";

    //    HideUIButton(new Button[] { quitButton, restartButton, quitButton });
    //    ShowUIButton(new Button[] { quitButton, restartButton });
    //}

    private void ShowUIButton(Button[] buttons)
    {
        foreach (Button button in buttons)
        {
            button.gameObject.SetActive(true);
        }
    }
    private void HideUIButton(Button[] buttons)
    {
        foreach (Button button in buttons)
        {
            button.gameObject.SetActive(false);
        }
    }
}