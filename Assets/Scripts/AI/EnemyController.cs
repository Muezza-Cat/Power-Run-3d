using UnityEngine;
using UnityEngine.AI;
using System.Collections.Generic;




public class EnemyController : MonoBehaviour
{


    public enum State
    {
        PatrolState,
        FightState,
        RunState,
    }

    [Header("Reference")]
    /*Testing*/
    public Transform player;
    private NavMeshAgent agent;

    [Header("States")]
    [SerializeField] private BaseState currentState;

    [SerializeField] private PatrolState patrolState;
    [SerializeField] private FightState fightState;
    [SerializeField] private RunState runState;

    [Header("Collection")]
    [SerializeField] private List<Transform> waypoints;





    private void Awake()
    {
        agent = GetComponent<NavMeshAgent>();

        patrolState = new PatrolState(this, agent);
        fightState = new FightState(this, agent);
        runState = new RunState(this, agent);
    }

    private void Start()
    {
        currentState = patrolState;
        currentState.OnStateEnter();
    }


    private void Update()
    {
        currentState.OnStateStay();
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
            case State.RunState:
                currentState = runState;
                break;
        }

        currentState.OnStateEnter();
    }


    public List<Transform> GetWaypoints()
    {
        return waypoints;
    }
}
