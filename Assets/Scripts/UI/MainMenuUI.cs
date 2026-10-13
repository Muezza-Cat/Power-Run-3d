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
    private TouchInputSystem touchInputSystem;


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

        if (SceneLoader.directlyPlayGame) //Directly play the game instead of going into the main menu;
        {
            playButton.onClick.Invoke();
            SceneLoader.directlyPlayGame = false;
        }
    }





    private void OnPlayButtonPressed()
    {
        uiManager.DisableMainMenuUIContainer();

        uiManager.EnableTouchToStartUI();
        uiManager.TogglePauseAndSettingsButton();
    }

    public void OnTapToPlay(InputAction.CallbackContext context)
    {
        Debug.Log("TouchStarted");
        gameStateManager.state = GameStateManager.State.StartCountdown;

        uiManager.DisableTouchToStartUI();
        touchInputSystem.Touch.Touch.started -= OnTapToPlay;
        touchInputSystem.Touch.Disable();
        touchInputSystem.Dispose();
    }
}
