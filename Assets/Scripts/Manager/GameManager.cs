using System;
using UnityEngine;


public class GameManager : MonoBehaviour
{
    public static GameManager Instance {  get; private set; }

    #region events
    public event Action OnStateChanged;

    public event Action OnGamePaused;
    public event Action OnGameResumed;
    #endregion

    //States;
    public enum GameState
    {
        MainMenu,
        Playing,
        Over,
    }
    public GameState state;


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
    }





    public void Update()
    {
        switch (state)
        {
            default:
            case GameState.MainMenu:
                break;

            case GameState.Playing:
                //spawn and initialize everything;
                OnStateChanged?.Invoke();
                break;

            case GameState.Over:
                //gameover window popup;
                OnStateChanged?.Invoke();
                break;
        }
    }





    public void ToggleGameState()
    {
        gamePaused = !gamePaused;

        if (gamePaused)
        {
            //do something; maybe UI popup or Time stopped;
        }
        else
        {
            //do something else;
        }
    }
}
