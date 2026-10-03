using UnityEngine;
using UnityEngine.UI;
using System;




public class MainMenuUI : MonoBehaviour
{
    #region Singleton
    public static MainMenuUI Instance { get; private set; }
    #endregion


    [Header("Reference")]
    [SerializeField] private SettingsUI settingsUI;


    //Buttons like Play, Quit, Settings (primarily sounds and touch sensitivity) and other options;
    [Header("MainMenuUI Buttons")]
    [SerializeField] private Button playButton;
    [SerializeField] private Button settingsButton;
    [SerializeField] private Button quitButton;

    //Spare
    [SerializeField] private Button spareButton1;
    [SerializeField] private Button spareButton2;
    [SerializeField] private Button spareButton3;
    [SerializeField] private Button spareButton4;






    private void Awake()
    {
        Instance = this;
    }


    private void Start()
    {
        playButton.onClick.AddListener(() => 
        {
            SceneLoader.LoadScene(SceneLoader.Scene.Level1);
        });
        settingsButton.onClick.AddListener(() => 
        {
            HideUnnecessaryButtons();
            settingsUI.ShowSettingsWindow();
        });
        quitButton.onClick.AddListener(() => {
            Application.Quit();
        });

        //Spare buttons;
        spareButton1.onClick.AddListener(() =>
        {

        });
        spareButton2.onClick.AddListener(() =>
        {

        });
        spareButton3.onClick.AddListener(() =>
        {

        });
        spareButton4.onClick.AddListener(() =>
        {

        });
    }
    


    public void ShowUnnecessaryButtons()
    {
        gameObject.SetActive(true);
    }

    private void HideUnnecessaryButtons()
    {
        gameObject.SetActive(false);
    }
}
