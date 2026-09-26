using System;

[Serializable]
public struct DifficultyMode
{
    public enum DifficultyModes
    {
        Easy = 1,
        Medium,
        Hard,
    }

    public EnemyController enemyController;
    public DifficultyModes difficultyMode;
}
