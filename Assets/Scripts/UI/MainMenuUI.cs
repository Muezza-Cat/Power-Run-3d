using UnityEngine;
using UnityEngine.UI;

public class MainMenuUI : MonoBehaviour
{
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


    private void Start()
    {
        playButton.onClick.AddListener(() => {/* something */});
        settingsButton.onClick.AddListener(() => {/* something */});
        quitButton.onClick.AddListener(() => {
            Application.Quit();
        });

        //Spare buttons;
        spareButton1.onClick.AddListener(() => { });
        spareButton2.onClick.AddListener(() => { });
        spareButton3.onClick.AddListener(() => { });
        spareButton4.onClick.AddListener(() => { });
    }

}
