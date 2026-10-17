using System;
using UnityEngine;
using UnityEngine.UI;




public class PauseWindowUI : MonoBehaviour
{
    #region Events
    public event Action OnPauseWindowClosed;
    #endregion


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

            OnPauseWindowClosed?.Invoke();      
        });
        crossButton.onClick.AddListener(() =>
        {
            GameStateManager.Instance.ToggleGameState();
            UIManager.Instance.DisablePauseWindow();

            OnPauseWindowClosed?.Invoke();      
        });



        quitButton.onClick.AddListener(() =>
        {
            SceneLoader.ReloadScene();
        });
        restartButton.onClick.AddListener(() =>
        {
            SceneLoader.ReloadSceneAsRestartGame();
        });

        UIManager.Instance.DisablePauseWindow();
    }
}
