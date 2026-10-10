using System;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.UI;




public class MainMenuUI : MonoBehaviour
{
    #region Singleton
    public static MainMenuUI Instance { get; private set; }
    #endregion


    [Header("Reference")]
    private UIManager uiManager;
    private GameStateManager gameStateManager;
    [SerializeField] private SettingsUI settingsUI;

    [Header("MainMenuUI Buttons")]
    [SerializeField] private Button playButton;
    [SerializeField] private Button quitButton;

    [SerializeField] private Button upgradeStartingUnitsCountButton;
    [SerializeField] private Button upgradeStartingGoldCountButton;
    [SerializeField] private Button selectUnitSkinButton;
    [SerializeField] private Button purchaseDiamondButton;
    [SerializeField] private Button watchAdForDiamondButton;
    //etc.....




    private void Awake()
    {
        Instance = this;
    }


    TouchInputSystem touchInputSystem;
    private void Start()
    {
        touchInputSystem = new TouchInputSystem();
        uiManager = UIManager.Instance;
        gameStateManager = GameStateManager.Instance;

        playButton.onClick.AddListener(() => 
        {
            gameStateManager.state = GameStateManager.State.TouchToStart;
            OnPlayButtonPressed();
            touchInputSystem.Touch.Touch.started += OnTapToPlay;
            touchInputSystem.Enable();
        });
        quitButton.onClick.AddListener(() => 
        {
            Application.Quit();
        });
    }





    private void OnPlayButtonPressed()
    {
        uiManager.EnableTouchToStartUI();
        uiManager.DisableMainMenuUIContainer();
        uiManager.TogglePauseAndSettingsButton(true);
    }

    public void OnTapToPlay(InputAction.CallbackContext context)
    {
        Debug.Log("TouchStarted");
        gameStateManager.state = GameStateManager.State.StartCountdown;

        uiManager.DisableTouchToStartUI();
        touchInputSystem.Touch.Touch.started -= OnTapToPlay;
    }
}
