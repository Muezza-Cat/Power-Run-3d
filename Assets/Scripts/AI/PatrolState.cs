using NUnit.Framework;
using System;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.AI;

//Move from one waypoint to the other;


[Serializable]
public class PatrolState : BaseState
{
    public PatrolState(EnemyController enemyController, NavMeshAgent agent) : base(enemyController, agent) { }



    public override void OnStateEnter()
    {
        Debug.Log("Difficulty Mode of " + enemyController.name + " : " + enemyController.mode);
        path = new NavMeshPath();
    }


    private float cooldownTime = 0.5f;
    private float elapsedTime = 0f;
    public override void OnStateUpdate()
    {
        elapsedTime += Time.deltaTime;
        if (elapsedTime < cooldownTime) return;
        elapsedTime = 0f;

        ScanThreatsNearby();
        Debug.Log(enemyController.name + " Threats Count : " + threatNearby.Count);

        //switch (enemyController.mode)
        //{
        //    default:
        //    case DifficultyMode.DifficultyModes.Easy:
        //        NormalAgentPatrol();
        //        break;
        //    case DifficultyMode.DifficultyModes.Medium:
        //        NormalAgentPatrol();
        //        AvoidStrongEnemies();
        //        break;
        //    case DifficultyMode.DifficultyModes.Hard:
        //        NormalAgentPatrol();
        //        ScanThreatsNearby();
        //        break;
        //}

    }

    public override void OnStateExit()
    {

    }



    //Easy Mode;
    private void NormalAgentPatrol()
    {
        if (!agent.pathPending && agent.remainingDistance <= agent.stoppingDistance)
        {
            agent.SetDestination(GetRandomWaypointTransform().position);
        }
    } //Needs changing;
    private Transform GetRandomWaypointTransform()
    {
        List<Transform> waypoints = enemyController.GetWaypoints();

        Transform randomTransform = waypoints[UnityEngine.Random.Range(0, waypoints.Count)];
        return randomTransform;
    }


    //Medium Mode;
    private float safeDistance = 10f;
    private float moraleThreshold = 0.75f;
    private void AvoidStrongEnemies()
    {
        foreach (HordeFormation hordeFormation in EnemyManager.Instance.hordeFormations)
        {
            if (hordeFormation == enemyController.hordeFormation) continue;
            if (Vector3.Distance(enemyController.transform.position, hordeFormation.transform.position) > safeDistance) continue;

            if (hordeFormation.GetUnitCount() * moraleThreshold >= enemyController.hordeFormation.GetUnitCount())
            {
                float minumumDotValue = 1f;
                foreach (Transform waypoint in enemyController.GetWaypoints())
                {
                    float dot = Vector3.Dot((waypoint.position - enemyController.transform.position).normalized, (hordeFormation.transform.position - enemyController.transform.position).normalized);
                    if (dot < minumumDotValue) minumumDotValue = dot;
                    if (dot < 0f)
                    {
                        agent.SetDestination(waypoint.position);
                        break;
                    }
                }
            }
        }
    }





    //Hard Mode;
    private enum Decision
    {
        Fight,
        Flee,
        Ignore,
    }
    private Decision decision;

    private void HardBotStateMachine()
    {
        
    }


    private float threatDistance = 10f;
    private List<HordeFormation> threatNearby = new List<HordeFormation>();
    private NavMeshPath path = new NavMeshPath();
    private void ScanThreatsNearby() //needs optimization;
    {
        threatNearby.Clear();
        foreach (HordeFormation hordeFormation in EnemyManager.Instance.hordeFormations)
        {
            if (IsInThreatRadii(hordeFormation))
            {
                threatNearby.Add(hordeFormation);
            }
        }
    }

    private bool IsInThreatRadii(HordeFormation targetHorde)
    {
        bool isInThreatRadius = false;
        if (agent.CalculatePath(targetHorde.transform.position, path))
        {
            float completeDistance = 0f;
            for (int i = 1; i < path.corners.Length; i++)
            {
                completeDistance += (path.corners[i] - path.corners[i - 1]).sqrMagnitude;
                //Debug.Log("CompleteDistance to " + targetHorde.gameObject.name + "is : " + completeDistance);
            }
            if (completeDistance < threatDistance * threatDistance)
            {
                Debug.Log("yes, " + targetHorde.gameObject.name + "is in threat radius of " + enemyController.gameObject.name);
                isInThreatRadius = true;
            }
            else
            {
                Debug.Log("no, " + targetHorde.gameObject.name + "is not in threat radius of " + enemyController.gameObject.name);
                isInThreatRadius = false;
            }
        }
        //Debug.Log(enemyController.name + " " + isInThreatRadius);
        return isInThreatRadius;
    }


    private bool isWalkingTowardsUs = false;
    private bool IsWalkingTowardsUs()
    {
        foreach (HordeFormation threatHorde in threatNearby)
        {
            float dot = Vector3.Dot(threatHorde.transform.forward, (threatHorde.transform.position - enemyController.transform.position));
            if (dot >= -1f || dot <= -0.9f)
            {
                isWalkingTowardsUs = true;
            }
        }
        return isWalkingTowardsUs;
    }
}
