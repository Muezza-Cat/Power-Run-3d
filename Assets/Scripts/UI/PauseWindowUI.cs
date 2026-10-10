using UnityEngine;
using UnityEngine.UI;




public class PauseWindowUI : MonoBehaviour
{
    [SerializeField] private Button resumeButton;
    [SerializeField] private Button restartButton;
    [SerializeField] private Button crossButton;
    [SerializeField] private Button quitButton;





    private void Start()
    {
        resumeButton.onClick.AddListener(() =>
        {
            GameStateManager.Instance.ToggleGameState();
            UIManager.Instance.DisablePauseWindow();
        });
        crossButton.onClick.AddListener(() =>
        {
            GameStateManager.Instance.ToggleGameState();
            UIManager.Instance.DisablePauseWindow();
        });



        quitButton.onClick.AddListener(() =>
        {
            SceneLoader.LoadScene(SceneLoader.Scene.MainMenuScene);
        });
        restartButton.onClick.AddListener(() =>
        {
            SceneLoader.ReloadScene();
        });

        UIManager.Instance.DisablePauseWindow();
    }
}
