using UnityEngine;

public class UnitAnimation : MonoBehaviour
{
    [SerializeField] private Unit unit;
    [SerializeField] private Animator animator;

    private const string MOVE = "Move";
    private const string FIGHT = "Fight";

    private int moveHash;
    private int fightHash;




    private void Awake()
    {
        animator = GetComponentInParent<Animator>();
        unit = GetComponentInParent<Unit>();

        moveHash = Animator.StringToHash(MOVE);
        fightHash = Animator.StringToHash(FIGHT);
    }

    private void Start()
    {
        unit.OnPositionChanged += Unit_OnPositionChanged;
        unit.OnPositionUnchanged += Unit_OnPositionUnchanged;
        unit.OnFightEvent += Unit_OnFightEvent;
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
}
