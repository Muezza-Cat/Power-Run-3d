using UnityEngine.SceneManagement;



//Under Construction;
public static class SceneLoader
{
    public enum Scene
    {
        MainMenuScene,
        LoadingScene,
        Level1,
        Level2,
        Level3,
    }
    public static Scene targetScene;


    public static void LoadScene(Scene targetScene)
    {
        SceneLoader.targetScene = targetScene;
        SceneManager.LoadScene((int)SceneLoader.Scene.LoadingScene);
    }


    public static void LoaderCallback() 
    {
        SceneManager.LoadScene((int)SceneLoader.targetScene);
    }
}
