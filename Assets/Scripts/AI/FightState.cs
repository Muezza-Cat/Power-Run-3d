using System;
using UnityEngine;
using UnityEngine.AI;


[Serializable]
public class FightState : BaseState
{
    public FightState(EnemyController enemyController, NavMeshAgent agent) : base(enemyController, agent) {}

    public override void OnStateEnter()
    {

    }

    public override void OnStateUpdate()
    {
        if (Vector3.Distance(agent.transform.position, enemyController.player.position) > 2f)
        {
            enemyController.SwitchState(EnemyController.State.PatrolState);
        }
        else
        {
            agent.SetDestination(enemyController.player.position);
        }
    }

    public override void OnStateExit()
    {

    }
}
