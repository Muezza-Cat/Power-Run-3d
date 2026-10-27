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
        LoadLevelData();
    }



    [Serializable]
    public class MainSaveObjectClass
    {
        public GameplayManager.SaveObject gameplayManagerSaveObject;
        public ObjectPooler.SaveObject objectPoolerSaveObject;
        public UnitSelectionWindowUI.SaveObject unitSelectionWindowUISaveObject;
    }




    //Saves the game everytime a level is completed or a new one is loaded.
    // - Saving when a new scene is loaded (done)
    // - Saving when a game is completed (not done)
    public void SaveData()
    {
        Debug.Log("Saved Data");
        string json = JsonUtility.ToJson(new MainSaveObjectClass()
        {
            gameplayManagerSaveObject = GameplayManager.Instance.SaveOnLevelLoad(GameStateManager.Instance.IsGameOver()),
            objectPoolerSaveObject = ObjectPooler.Instance.Save(),
            unitSelectionWindowUISaveObject = UnitSelectionWindowUI.Instance.Save()
        });

        if (GameplayManager.Instance == null) Debug.LogWarning("Null reference to GameplayManager");
        File.WriteAllText(Application.dataPath + "/Saves/saveFile.sav" , json);
    }


    //Only run once when the game is opened.
    public void LoadLevelData()
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
            //GameplayManager.Instance.Load(saveLoadSystem.gameplayManagerSaveObject);

            SceneManager.LoadScene(SceneLoader.targetSceneIndex);
        }
    }


    public void LoadInGameData()
    {
        if (!File.Exists(Application.dataPath + "/Saves/saveFile.sav")) { return; }
        else
        {
            string json = File.ReadAllText(Application.dataPath + "/Saves/saveFile.sav");

            MainSaveObjectClass saveLoadSystem = JsonUtility.FromJson<MainSaveObjectClass>(json);

            if (saveLoadSystem.unitSelectionWindowUISaveObject == null || saveLoadSystem.objectPoolerSaveObject == null)
            {
                Debug.LogWarning("Null Reference");
            }

            if (ObjectPooler.Instance == null) Debug.Log("ObjectPooler's Instance is null");
            if (UnitSelectionWindowUI.Instance == null) Debug.Log("UnitSelectionWindowUI's Instance is null");


            ObjectPooler.Instance.Load(saveLoadSystem.objectPoolerSaveObject);
            UnitSelectionWindowUI.Instance.Load(saveLoadSystem.unitSelectionWindowUISaveObject);
        }
    }
}
