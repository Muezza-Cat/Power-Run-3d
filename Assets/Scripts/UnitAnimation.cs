using UnityEngine;

public class UnitAnimation : MonoBehaviour
{
    [SerializeField] private Unit unit;
    [SerializeField] private Animator animator;

    private const string MOVE = "Move";
    private const string FIGHT = "Fight";
    private const string DEAD = "Death";

    private int moveHash;
    private int fightHash;
    private int deathHash;




    private void Awake()
    {
        animator = GetComponentInParent<Animator>();
        unit = GetComponentInParent<Unit>();

        moveHash = Animator.StringToHash(MOVE);
        fightHash = Animator.StringToHash(FIGHT);
        deathHash = Animator.StringToHash(DEAD);
    }

    private void Start()
    {
        unit.OnPositionChanged += Unit_OnPositionChanged;
        unit.OnPositionUnchanged += Unit_OnPositionUnchanged;
        unit.OnFightEvent += Unit_OnFightEvent;
        unit.OnUnitDead += Unit_OnUnitDead;
    }


    private void Unit_OnPositionChanged()
    {
        animator.SetBool(moveHash, true);
    }

    private void Unit_OnPositionUnchanged()
    {
        animator.SetBool(moveHash, false);
    }

    private void Unit_OnFightEvent()
    {
        animator.SetTrigger(fightHash);
    }

    private void Unit_OnUnitDead()
    {
        animator.SetTrigger(deathHash);
    }
}
