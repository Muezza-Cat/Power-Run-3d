using UnityEngine;
using UnityEngine.UI;

public class GameOverUI : MonoBehaviour
{
    [Header("Button")]
    [SerializeField] private Button restartButton;
    [SerializeField] private Button quitButton;

    //Ads addon;
    [SerializeField] private Button reviveButton; //Need to watch an Ad;
    [SerializeField] private Button useGemsButton;


    private void Start()
    {
        restartButton.onClick.AddListener(() =>
        {
            SceneLoader.ReloadScene();
        });
        quitButton.onClick.AddListener(() => 
        {

        });


        Hide();
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
