using System;

[Serializable]
public struct DifficultyMode
{
    public enum DifficultyModes
    {
        Easy,
        Medium,
        Hard,
    }

    public EnemyController enemyController;
    public DifficultyModes difficultyMode;
}
