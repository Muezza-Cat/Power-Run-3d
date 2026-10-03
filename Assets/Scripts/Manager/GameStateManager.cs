using System;
using UnityEngine;
using UnityEngine.UI;


public class GameStateManager : MonoBehaviour
{

    //Under construction;
    public static GameStateManager Instance {  get; private set; }

    #region events
    public event Action OnStateChanged;

    public event Action OnGamePaused;
    #endregion


    [Header("UI")]
    [SerializeField] private Button pauseButton;


    //States;
    public enum State
    {
        StartCountdown,
        Playing,
        Over
    }
    public State state;


    [Header("Flags")]
    public bool gamePaused = false;


    public void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
        }
        else
        {
            Destroy(this.gameObject);
        }

        state = State.StartCountdown;
    }

    private void Start()
    {
        Time.timeScale = 0f;
        pauseButton.onClick.AddListener(() =>
        {
            OnGamePaused?.Invoke();
            ToggleGameState();
        });
    }

    //Testing
    float startCountdownMax = 3f;
    float startCountdownElapsed = 0f;

    float gameplayTimeMax = 6f;
    float gameplayElapsedTime = 0f;
    bool isTimeOver = false;
    public void Update()
    {
        switch (state)
        {
            default:
            case State.StartCountdown:
                startCountdownElapsed += Time.unscaledDeltaTime;
                if (startCountdownElapsed > startCountdownMax)
                {
                    gameplayElapsedTime = gameplayTimeMax;
                    state = State.Playing;
                    OnStateChanged?.Invoke();
                    Time.timeScale = 1f;
                }
                break;
            case State.Playing:
                gameplayElapsedTime -= Time.deltaTime;
                if (gameplayElapsedTime <= 0f)
                {
                    isTimeOver = true;
                    state = State.Over;
                    OnStateChanged?.Invoke();
                }
                break;

            case State.Over:
                ToggleGameState();
                //Stop and show the over window;
                //Time.timeScale = 0f;
                OnStateChanged?.Invoke();
                break;
        }
    }

    public bool IsGameOver()
    {
        return state == State.Over;
    }

    public bool IsGamePlaying()
    {
        return state == State.Playing;
    }

    public bool IsGameTimeOut()
    {
        return isTimeOver;
    }

    public bool IsCountdownToStartActive()
    {
        return state == State.StartCountdown;
    }


    public void ToggleGameState()
    {
        gamePaused = !gamePaused;

        if (gamePaused)
        {
            Time.timeScale = 0f;
        }
        else
        {
            Time.timeScale = 1f;
        }
    }
}
