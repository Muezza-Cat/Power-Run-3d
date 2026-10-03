using UnityEngine;
using UnityEngine.UI;




public class PauseWindowUI : MonoBehaviour
{
    [SerializeField] private Button resumeButton;
    [SerializeField] private Button restartButton;
    [SerializeField] private Button crossButton;
    [SerializeField] private Button settingsButton;
    [SerializeField] private Button quitButton;



    private void Start()
    {
        //Resume and Cross same;
        resumeButton.onClick.AddListener(() =>
        {
            GameStateManager.Instance.ToggleGameState();
            Hide();
        });
        crossButton.onClick.AddListener(() =>
        {
            GameStateManager.Instance.ToggleGameState();
            Hide();
        });



        quitButton.onClick.AddListener(() =>
        {
            SceneLoader.LoadScene(SceneLoader.Scene.MainMenuScene);
        });
        settingsButton.onClick.AddListener(() =>
        {
            //Under construction;
        });
        restartButton.onClick.AddListener(() =>
        {
            SceneLoader.ReloadScene();
        });

        Hide();
        GameStateManager.Instance.OnGamePaused += GameManager_OnGamePaused;
    }

    private void GameManager_OnGamePaused()
    {
        Show();
    }

    private void Show()
    {
        gameObject.SetActive(true);
    }

    private void Hide()
    {
        gameObject.SetActive(false);
    }
}
