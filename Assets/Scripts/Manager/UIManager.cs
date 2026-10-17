using UnityEngine;
using UnityEngine.UI;



public class UIManager : MonoBehaviour
{

    #region Singleton
    public static UIManager Instance { get; private set; }
    #endregion


    [Header("References")]
    [SerializeField] private GameObject mainMenuContainer;
    [SerializeField] private GameObject pauseWindowUI;
    [SerializeField] private GameObject gameOverWindowUI;
    [SerializeField] private GameObject settingsWindowUI;
    [SerializeField] private GameObject inGameUI;
    [SerializeField] private GameObject touchToStartUI;
    //[SerializeField] private GameObject joystickUI;

    [SerializeField] private Button settingsButton;
    [SerializeField] private Button pauseButton;

    private SettingsUI settingsUI;
    private PauseWindowUI pauseUI;





    private void Awake()
    {
        Instance = this;

        DisableScoreUI();
        DisableTouchToStartUI();

        settingsUI = settingsWindowUI.GetComponent<SettingsUI>();
        if (settingsUI == null) Debug.LogWarning("Null reference to settingsUI");
        pauseUI = pauseWindowUI.GetComponent<PauseWindowUI>();
        if (pauseUI == null) Debug.LogWarning("Null reference to pauseUI");
    }


    private void Start()
    {
        pauseButton.gameObject.SetActive(false);
        settingsButton.gameObject.SetActive(true);

        settingsButton.onClick.AddListener(() =>
        {
            EnableSettingsWindow();
        });
        pauseButton.onClick.AddListener(() =>
        {
            EnablePauseWindow();

            GameStateManager.Instance.ToggleGameState();
        });

        settingsUI.OnSettingsClosed += SettingsUI_OnSettingsClosed;
        pauseUI.OnPauseWindowClosed += PauseUI_OnPauseWindowClosed;
    }

    private void PauseUI_OnPauseWindowClosed()
    {
        pauseButton.gameObject.SetActive(true);
    }

    private void SettingsUI_OnSettingsClosed()
    {
        settingsButton.gameObject.SetActive(true); 
    }


    //MainMenuUI
    public void EnableMainMenuUIContainer()
    {
        mainMenuContainer.SetActive(true);
    }
    public void DisableMainMenuUIContainer()
    {
        mainMenuContainer.SetActive(false);
    }

    //GameOver Window
    public void EnableGameOverWindowUI()
    {
        gameOverWindowUI.SetActive(true);
    }
    public void DisableGameOverWindowUI()
    {
        gameOverWindowUI.SetActive(false);
    }

    //Settings Window
    public void EnableSettingsWindow()
    {
        settingsWindowUI.SetActive(true);
        settingsButton.gameObject.SetActive(false);
    }
    public void DisableSettingsWindow()
    {
        settingsWindowUI.SetActive(false);
    }

    //Pause Window
    public void EnablePauseWindow()
    {
        pauseWindowUI.SetActive(true);
        pauseButton.gameObject.SetActive(false);
    }
    public void DisablePauseWindow()
    {
        pauseWindowUI.SetActive(false);
    }

    //Score UI
    public void EnableInGameUI()
    {
        inGameUI.SetActive(true);
    }
    public void DisableScoreUI()
    {
        inGameUI.SetActive(false);
    }

    //TouchToStart UI
    public void EnableTouchToStartUI()
    {
        touchToStartUI.SetActive(true);
    }
    public void DisableTouchToStartUI()
    {
        touchToStartUI.SetActive(false);
    }

    //Joystick UI
   /* public void EnableJoystickUI()
    {
        joystickUI.SetActive(true);
    }
    public void DisableJoystickUI()
    {
        joystickUI.SetActive(false);
    }
   */

    bool toggleButtonActivity = false;
    public void TogglePauseAndSettingsButton()
    {
        toggleButtonActivity = !toggleButtonActivity;

        pauseButton.gameObject.SetActive(toggleButtonActivity);
        settingsButton.gameObject.SetActive(!toggleButtonActivity);
    }
}
