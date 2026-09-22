using UnityEngine;



public class Unit : MonoBehaviour
{
    [Header("Reference")]
    public HordeFormation hordeFormation;
    [HideInInspector] public BaseController baseController;


    [Header("Settings")]
    [SerializeField] private float angularVelocity = 5f;
    private float currentHealth;
    public float CurrentHealth
    {
        get
        {
            return currentHealth;
        }
        set
        {
            if (value <= 0f)
            {
                Elimination();
                currentHealth = 0f;
                return;
            }

            currentHealth = value;
        }
    }


    private float hitCooldown = 0.1f; //10 times per second;
    private float elapsedTime = 0f;

    private float attackRange = 1f;
    public float damageAmount = 1f;

    [Header("Flag")]
    public bool isDetected = false;



    private void Awake()
    {
        currentHealth = Random.Range(0.5f, 1.5f);
        elapsedTime = hitCooldown;
    }

    public void Initialize(HordeFormation hordeFormation)
    {
        this.hordeFormation = hordeFormation;
        baseController = hordeFormation.baseController;
    }

    

    private void Update()
    {
        elapsedTime += Time.deltaTime;
        if (elapsedTime >= hitCooldown)
        {
            FightOnlyAtSight();
        }

        IndependentRotationHandler();
    }


    private void IndependentRotationHandler()
    {
        if (baseController != null && baseController.GetRotation() != Vector3.zero)
        {
            transform.eulerAngles = new Vector3(0f, Mathf.LerpAngle(transform.eulerAngles.y, baseController.GetRotation().y, Time.deltaTime * angularVelocity), 0f);
        }
    }



    private void FightOnlyAtSight()
    {
        elapsedTime = 0f;
        Collider[] collider = Physics.OverlapSphere(transform.position, attackRange, hordeFormation.enemyLayer, QueryTriggerInteraction.Ignore);

        if (collider == null || collider.Length == 0) return;

        //First check the first unit is either already detected or not;
        //If not;
        Unit unit = collider[0].GetComponent<Unit>();
        if (unit != null && !unit.isDetected)
        {
            unit.isDetected = true;
            unit.TakeDamage(damageAmount);

            if (!isDetected)
            {
                TakeDamage(unit.damageAmount);
                isDetected = false;
            }
            else
            {
                isDetected = false;
            }
        }
        //If yes;
        else
        {
            foreach (Collider enemyCollider in collider)
            {
                Unit otherUnit = enemyCollider.GetComponent<Unit>();
                if (otherUnit.isDetected) continue;
                else
                {
                    otherUnit.isDetected = true;
                    otherUnit.TakeDamage(damageAmount);

                    if (!isDetected)
                    {
                        TakeDamage(unit.damageAmount);
                        isDetected = false;
                        return;
                    }
                    else
                    {
                        isDetected = false;
                    }
                }
            }
        }
    }


    public void TakeDamage(float dmgAmt)
    {
        CurrentHealth -= dmgAmt;
    }

    private void Elimination()
    {
        hordeFormation.RemoveUnit(this.transform);
    }
}
