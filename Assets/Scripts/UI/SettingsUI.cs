using UnityEngine;
using UnityEngine.UI;
using TMPro;




public class SettingsUI : MonoBehaviour
{
    [SerializeField] private TMP_InputField musicVolumeInputField;
    [SerializeField] private Slider musicVolumeSlider;

    [SerializeField] private TMP_InputField sfxVolumeInputField;
    [SerializeField] private Slider sfxVolumeSlider;

    [SerializeField] private Button resetButton;
    [SerializeField] private Button saveButton;
    [SerializeField] private Button crossButton;


    [Header("Default Values")]
    [SerializeField] private int defaultMusicVolume = 50;
    [SerializeField] private int defaultSFXVolume = 50;

    private float maxVolumeValue = 100;



    private void Awake()
    {
        musicVolumeInputField.text = defaultMusicVolume.ToString();
        sfxVolumeInputField.text = defaultSFXVolume.ToString();

        musicVolumeSlider.value = defaultMusicVolume;
        sfxVolumeSlider.value = defaultSFXVolume;
    }



    private void Start()
    {
        musicVolumeSlider.maxValue = maxVolumeValue;
        sfxVolumeSlider.maxValue = maxVolumeValue;
        
        
        
        resetButton.onClick.AddListener(() =>
        {
            ResetValues();
        });

        saveButton.onClick.AddListener(() =>
        {

        });
        crossButton.onClick.AddListener(() =>
        {
            MainMenuUI.Instance.ShowUnnecessaryButtons();
            HideSettingsWindow();
        });



        //Changing InputField also changes slider;
        musicVolumeInputField.onValueChanged.AddListener((volumeValue) =>
        {
            if (int.TryParse(volumeValue, out int parsedVolumeValue))
            {
                musicVolumeSlider.value = parsedVolumeValue;
            }
        });
        sfxVolumeInputField.onValueChanged.AddListener((volumeValue) =>
        {
            if (int.TryParse(volumeValue, out int parsedVolumeValue))
            {
                sfxVolumeSlider.value = parsedVolumeValue;
            }
        });



        //Changing Slider also changes InputField;
        musicVolumeSlider.onValueChanged.AddListener((value) =>
        {
            UpdateMusicFieldAndSlider((int)value);
        });
        sfxVolumeSlider.onValueChanged.AddListener((value) =>
        {
            UpdateSFXFieldAndSlider((int)value);
        });


        HideSettingsWindow();
    }




    private void UpdateMusicFieldAndSlider(int musicVolume)
    {
        musicVolumeInputField.text = musicVolume.ToString();

        musicVolumeSlider.value = musicVolume;
    }

    private void UpdateSFXFieldAndSlider(int sfxVolume)
    {
        sfxVolumeInputField.text = sfxVolume.ToString();

        sfxVolumeSlider.value = sfxVolume;
    }


    private void ResetValues()
    {
        UpdateMusicFieldAndSlider(defaultMusicVolume);
        UpdateSFXFieldAndSlider(defaultSFXVolume);
    }


    public void ShowSettingsWindow()
    {
        gameObject.SetActive(true);
    }


    private void HideSettingsWindow()
    {
        gameObject.SetActive(false);
    }
}
