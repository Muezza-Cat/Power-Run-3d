using UnityEngine;
using UnityEngine.AI;
using System.Collections.Generic;




public class EnemyController : BaseController
{
    [Header("HordeStats")]
    [HideInInspector] public float moraleCount { get; private set; }

    public enum State
    {
        PatrolState,
        FightState,
        RetreatState,
    }

    [HideInInspector] public DifficultyMode.DifficultyModes mode;

    [Header("Reference")]
    /*Testing*/
    public Transform player;
    private NavMeshAgent agent;
    [HideInInspector] public HordeFormation hordeFormation;

    [Header("States")]
    [SerializeField] private BaseState currentState;

    [SerializeField] private PatrolState patrolState;
    [SerializeField] private FightState fightState;
    [SerializeField] private RetreatState runState;

    [Header("Collection")]
    [SerializeField] private List<Transform> waypoints;



    private void Awake()
    {
        hordeFormation = GetComponent<HordeFormation>();
        agent = GetComponent<NavMeshAgent>();

        patrolState = new PatrolState(this, agent);
        fightState = new FightState(this, agent);
        runState = new RetreatState(this, agent);
    }

    private void Start()
    {
        currentState = patrolState;
        currentState.OnStateEnter();

    }


    private void Update()
    {
        currentState.OnStateUpdate();
    }

    public void SwitchState(State state)
    {
        currentState.OnStateExit();

        switch(state)
        { 
            case State.PatrolState:
                currentState = patrolState;
                break;
            case State.FightState:
                currentState = fightState;
                break;
            case State.RetreatState:
                currentState = runState;
                break;
        }

        currentState.OnStateEnter();
    }


    public List<Transform> GetWaypoints()
    {
        return waypoints;
    }

    public override Vector3 GetRotation()
    {
        return agent.transform.eulerAngles;
    }

    public override BaseController GetController()
    {
        return this;
    }

    public override float GetMoveSpeed()
    {
        return agent.speed;
    }


    public void SetDifficultyMode(DifficultyMode.DifficultyModes mode)
    {
        this.mode = mode;
    }
}
