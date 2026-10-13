using System;
using UnityEngine;
using UnityEngine.UI;


public class GameStateManager : MonoBehaviour
{

    //Under construction;
    public static GameStateManager Instance {  get; private set; }

    #region events
    public event Action OnStateChanged;
    #endregion


    [Header("UI")]
    [SerializeField] private GameObject tapToPlay;

    [SerializeField] private Button settingsButton;
    [SerializeField] private Button pauseButton;

    [Header("Settings")]
    [SerializeField] private float gameplayTimeMax = 6f;
    private float gameplayElapsedTime = 0f;




    //States;
    public enum State
    {
        MainMenu,
        TouchToStart,
        StartCountdown,
        Playing,
        Over
    }
    public State state;


    [Header("Flags")]
    [HideInInspector] public bool gamePaused = true;
    [HideInInspector] public bool isGameOver = false;


    public void Awake()
    {
        Instance = this;

        gameplayElapsedTime = gameplayTimeMax;
        state = State.MainMenu;
    }
    

    private void Start()
    {
        ToggleGameState();
    }


    public void Update()
    {
        
        switch (state)
        {
            default:
            case State.MainMenu:
                break;
            case State.TouchToStart:
                break;
            case State.StartCountdown:
                OnStateChanged?.Invoke();
                break;
            case State.Playing:
                gameplayElapsedTime -= Time.deltaTime;
                if (gameplayElapsedTime <= 0f)
                {
                    OnStateChanged?.Invoke();
                    state = State.Over;
                }
                break;
            case State.Over:
                if (isGameOver) return;
                OnStateChanged?.Invoke();
                SaveSystem.Instance.SaveData(); //Testing Phase
                isGameOver = true;
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
