using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;


[Serializable]
public class PatrolState : BaseState
{
    public PatrolState(EnemyController enemyController, NavMeshAgent agent) : base(enemyController, agent) { }




    public override void OnStateEnter()
    {

    }
    public override void OnStateStay()
    {
        if (!agent.pathPending && agent.remainingDistance <= agent.stoppingDistance)
        {
            agent.SetDestination(GetRandomWaypointTransform().position);
        }

        if (Vector3.Distance(enemyController.player.transform.position, agent.transform.position) < 2f)
        {
            enemyController.SwitchState(EnemyController.State.FightState);
        }
    }

    public override void OnStateExit()
    {

    }



    private Transform GetRandomWaypointTransform()
    {
        List<Transform> waypoints = enemyController.GetWaypoints();

        Transform randomTransform = waypoints[UnityEngine.Random.Range(0, waypoints.Count - 1)];
        return randomTransform;
    }
}
