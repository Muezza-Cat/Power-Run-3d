using System.IO;
using UnityEngine;
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



    public class MainSaveObjectClass
    {

    }




    //Saves the game everytime a level is completed or a new one is loaded.
    // - Saving when a new scene is loaded (done)
    // - Saving when a game is completed (not done)
    public void SaveData()
    {
        string json = JsonUtility.ToJson(GameplayManager.Instance.SaveOnLevelLoad(GameStateManager.Instance.IsGameOver()));

        if (GameplayManager.Instance == null) Debug.LogWarning("Null reference to GameplayManager");
        File.WriteAllText(Application.dataPath + "/Saves/saveFile.sav" , json);

        //string jsonTest1 = Application.dataPath + "/Saves";
        //string jsonTest2 = Application.dataPath + "/Saves";

        //if (File.Exists(jsonTest1)) Debug.Log("The folder Saves is present");
        //if (File.Exists(jsonTest2)) Debug.Log("The folder Saves and the File saveFile is present");

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

            GameplayManager.SaveObject saveLoadSystem = JsonUtility.FromJson<GameplayManager.SaveObject>(json);
            SceneManager.LoadScene(saveLoadSystem.targetSceneIndex);
        }



        //GameplayManager.Instance.Load(saveLoadSystem);
    }
}
