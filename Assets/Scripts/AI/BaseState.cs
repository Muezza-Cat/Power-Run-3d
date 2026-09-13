using System;
using UnityEngine.AI;


[Serializable]
public abstract class BaseState
{
    protected EnemyController enemyController;
    protected NavMeshAgent agent;


    public BaseState(EnemyController enemyController, NavMeshAgent agent)
    {
        this.enemyController = enemyController;
        this.agent = agent;
    }


    public abstract void OnStateEnter();
    public abstract void OnStateExit();
    public abstract void OnStateStay();
}
