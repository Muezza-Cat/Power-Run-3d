using System.IO;
using UnityEngine;
using System;
using UnityEngine.SceneManagement;



public class SaveSystem : MonoBehaviour
{
    #region Singleton
    public static SaveSystem Instance { get; private set; }
    #endregion

    [Header("Reference")]
    [SerializeField] private GameObject loaderCallbackObject;



    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
            DontDestroyOnLoad(gameObject);
        }
        else
        {
            Destroy(this.gameObject);
        }
    }


    private void Start()
    {
        LoadData();
    }



    [Serializable]
    public class MainSaveObjectClass
    {
        public GameplayManager.SaveObject gameplayManagerSaveObject;
    }




    //Saves the game everytime a level is completed or a new one is loaded.
    // - Saving when a new scene is loaded (done)
    // - Saving when a game is completed (not done)
    public void SaveData()
    {
        string json = JsonUtility.ToJson(new MainSaveObjectClass()
        {
            gameplayManagerSaveObject = GameplayManager.Instance.SaveOnLevelLoad(GameStateManager.Instance.IsGameOver()),
        });

        if (GameplayManager.Instance == null) Debug.LogWarning("Null reference to GameplayManager");
        File.WriteAllText(Application.dataPath + "/Saves/saveFile.sav" , json);
    }


    //Only run once when the game is opened.
    public void LoadData()
    {
        if (!File.Exists(Application.dataPath + "/Saves/saveFile.sav"))
        {
            return;
        }
        else
        {
            loaderCallbackObject.SetActive(false);

            string json = File.ReadAllText(Application.dataPath + "/Saves/saveFile.sav");

            MainSaveObjectClass saveLoadSystem = JsonUtility.FromJson<MainSaveObjectClass>(json);
            SceneManager.LoadScene(saveLoadSystem.gameplayManagerSaveObject.targetSceneIndex);
        }
    }
}
