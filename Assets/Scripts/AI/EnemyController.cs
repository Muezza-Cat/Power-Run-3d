using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;




public class EnemyController : BaseController
{
    [Header("HordeStats")]
    [HideInInspector] public float moraleCount { get; private set; }
    private DifficultyMode.DifficultyModes mode; //EnemyController difficulty mode;


    private enum Decision
    {
        Fight,
        Flee,
        Ignore,
    }
    private Decision decision;

    [Header("Reference")]
    private NavMeshAgent agent;
    private HordeFormation enemyControllerHordeFormation;

    [Header("Collection")]
    [SerializeField] private List<Transform> waypoints;
    private List<HordeFormation> threatNearby;
    private NavMeshPath path;


    [Header("Settings")]
    private HordeFormation hordeToFight;

    private float updateMethodCooldownTime = 0.1f; //10 times per sec;
    private float updateMethodElapsedTime = 0f;
    private float safeDistance = 10f;
    private float moraleThreshold = 1.25f;





    private void Awake()
    {
        threatNearby = new List<HordeFormation>();
        path = new NavMeshPath();


        enemyControllerHordeFormation = GetComponent<HordeFormation>();
        agent = GetComponent<NavMeshAgent>();
    }

    public void Start()
    {
        decision = Decision.Ignore;
        path = new NavMeshPath();
    }

    
    public void Update()
    {
        updateMethodElapsedTime += Time.deltaTime;
        if (updateMethodElapsedTime < updateMethodCooldownTime) return;
        updateMethodElapsedTime = 0f;

        switch (mode)
        {
            default:
            case DifficultyMode.DifficultyModes.Easy:
                NormalAgentPatrol();
                break;
            case DifficultyMode.DifficultyModes.Medium:
                NormalAgentPatrol();
                AvoidStrongEnemies();
                break;
            case DifficultyMode.DifficultyModes.Hard:
                StateMachine(); //Handle different Decisions;

                ScanThreatsNearby();
                if (threatNearby.Count > 0) HardBotDecisionMakingProcess();
                else decision = Decision.Ignore;
                break;
        }
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
        Transform randomTransform = waypoints[UnityEngine.Random.Range(0, waypoints.Count)];
        return randomTransform;
    }


    //Medium Mode;
    
    private void AvoidStrongEnemies()
    {
        foreach (HordeFormation enemyHordeFormation in EnemyManager.Instance.hordeFormations)
        {
            if (enemyHordeFormation == enemyControllerHordeFormation) continue; //Except this controller;
            if (Vector3.Distance(transform.position, enemyHordeFormation.transform.position) > safeDistance) continue; //Enemy very close;

            if (enemyHordeFormation.hordeMorale > enemyControllerHordeFormation.hordeMorale * moraleThreshold) //If enemy is 1.25x or more stronger compared to us.
            {
                float minumumDotValue = 1f;
                Transform waypointAwayFromEnemy = null;
                if (Vector3.Dot((enemyHordeFormation.transform.position - transform.position), enemyHordeFormation.transform.forward) >= 0f) return; //Is not moving towards us;

                foreach (Transform waypoint in waypoints)
                {
                    //if (Vector3.Distance(enemyController.transform.position, waypoint.position) > 5f) continue;
                    float dot = Vector3.Dot((waypoint.position - transform.position), (enemyHordeFormation.transform.position - transform.position));
                    if (dot < minumumDotValue)
                    {
                        minumumDotValue = dot;
                        waypointAwayFromEnemy = waypoint;
                    }
                    if (dot < 0f && Vector3.Distance(transform.position, waypoint.position) > 5f)
                    {
                        agent.SetDestination(waypoint.position);
                        break;
                    }
                }
                if (minumumDotValue < 0.5f && Vector3.Distance(waypointAwayFromEnemy.position, transform.position) > 5f) agent.SetDestination(waypointAwayFromEnemy.position);
            }
        }
    }



    //Hard Mode;
    private void StateMachine()
    {
        switch (decision)
        {
            case Decision.Fight:
                FightThreat(hordeToFight);
                break;
            case Decision.Flee:
                AvoidStrongEnemies();
                break;
            case Decision.Ignore:
                NormalAgentPatrol();
                break;
        }
    }


    private void HardBotDecisionMakingProcess()
    {
        foreach (HordeFormation hordeFomration in threatNearby)
        {
            float dot = Vector3.Dot((hordeFomration.transform.position - transform.position), hordeFomration.transform.forward);

            if (dot < -0.5f) //Coming towards us;
            {
                if (IsEnemyVeryStrong())
                {
                    decision = Decision.Flee;
                }
                else
                {
                    decision = Decision.Fight;
                    hordeToFight = hordeFomration;
                }
            }
            else //Some other direction
            {
                decision = Decision.Ignore;
            }
        }
    }

    private void FightThreat(HordeFormation hordeToFight)
    {
        if (hordeToFight == null || hordeToFight.GetUnitCount() == 0) decision = Decision.Ignore;
        agent.SetDestination(hordeToFight.transform.position);
    }



    private void ScanThreatsNearby() //needs optimization;
    {
        threatNearby.Clear();
        foreach (HordeFormation enemyHordeFormation in EnemyManager.Instance.hordeFormations)
        {
            if (enemyHordeFormation == enemyControllerHordeFormation) continue;
            if (IsInThreatRadii(enemyHordeFormation))
            {
                threatNearby.Add(enemyHordeFormation);
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
            }
            if (completeDistance < safeDistance * safeDistance)
            {
                isInThreatRadius = true;
            }
            else
            {
                isInThreatRadius = false;
            }
        }
        return isInThreatRadius;
    }

    private bool IsEnemyVeryStrong()
    {
        foreach (HordeFormation enemyHordeFormation in threatNearby)
        {
            if (enemyHordeFormation.hordeMorale > enemyControllerHordeFormation.hordeMorale * moraleThreshold) //Enemy moraleThreshold..x stronger than us;
            {
                return true;
            }
        }
        return false;
    }


    public void SetDifficultyMode(DifficultyMode.DifficultyModes mode)
    {
        this.mode = mode;
    }


    public override Vector3 GetRotation()
    {
        return agent.transform.eulerAngles;
    }

    public override float GetMoveSpeed()
    {
        return agent.speed;
    }
}