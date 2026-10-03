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
        SceneManager.LoadScene(SceneLoader.Scene.LoadingScene.ToString());
    }
    public static void ReloadScene()
    {
        SceneManager.LoadScene(SceneLoader.Scene.LoadingScene.ToString());
    }


    public static void LoaderCallback() 
    {
        SceneManager.LoadScene(SceneLoader.targetScene.ToString());
    }
}
