using UnityEngine;



public class Unit : MonoBehaviour
{
    [Header("Reference")]
    [HideInInspector] public HordeFormation hordeFormation;
    [HideInInspector] public BaseController baseController;
    private CapsuleCollider capsuleCollider;


    [Header("Settings")]
    [SerializeField] private float angularVelocity = 10f;
    public Vector3 targetPosition;
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

    //Linear Velocity
    private float crestMoveSpeed = 8f;
    private float troughMoveSpeed = 3f;
    private float currentMoveSpeed;

    //Angular Velocity
    private float crestAngularVelocity = 15f;
    private float troughAngularVelocity = 6f;
    private float currentAngularVelocity;

    [Header("Flag")]
    public bool isDetected = false;



    private void Awake()
    {
        capsuleCollider = GetComponent<CapsuleCollider>();

        CurrentHealth = Random.Range(0.5f, 1.5f);
        currentMoveSpeed = Random.Range(troughMoveSpeed, crestMoveSpeed);
        currentAngularVelocity = Random.Range(troughAngularVelocity, crestAngularVelocity);
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

        IndependentMovementHandler();
        IndependentRotationHandler();

        UpdateLinearAndAngularVelocity();
    }

    


    private bool canMove;

    private float radius = 0.5f;
    private float castDistance = 0.1f;

    private float teleportationTime = 2f;
    private float teleportationElapsedTime = 0f;
    private void IndependentMovementHandler()
    {
        Vector3 moveDirection = (targetPosition - transform.position).normalized;
        Vector3 p1 = transform.position + Vector3.up * +0.5f;
        Vector3 p2 = transform.position + Vector3.up * -0.5f;
        canMove = !Physics.CapsuleCast(p1, p2, radius, moveDirection, castDistance, baseController.GetInteractableLayers(), QueryTriggerInteraction.Ignore);

        if (canMove)
        {
            transform.position = Vector3.MoveTowards(transform.position, targetPosition, Time.deltaTime * currentMoveSpeed);
            return;
        }
        else if (!canMove)
        {
            Vector3 moveDirectionX = new Vector3(moveDirection.x, 0f, 0f).normalized;
            canMove = !Physics.CapsuleCast(p1, p2, radius, moveDirectionX, castDistance, baseController.GetInteractableLayers(), QueryTriggerInteraction.Ignore);

            if (canMove)
            {
                transform.position += moveDirectionX * Time.deltaTime * currentMoveSpeed;
            }
            else
            {
                Vector3 moveDirectionZ = new Vector3(0f, 0f, moveDirection.z).normalized;
                canMove = !Physics.CapsuleCast(p1, p2, radius, moveDirectionZ, castDistance, baseController.GetInteractableLayers(), QueryTriggerInteraction.Ignore);

                if (canMove)
                {
                    transform.position += moveDirectionZ * Time.deltaTime * currentMoveSpeed;
                }
                else
                {
                    teleportationElapsedTime += Time.deltaTime;
                    if (teleportationElapsedTime < teleportationTime) return;
                    teleportationElapsedTime = 0f;
                }
            }
        }
    }


    private void IndependentRotationHandler()
    {
        if (baseController != null && baseController.GetRotation() != Vector3.zero)
        {
            transform.eulerAngles = new Vector3(0f, Mathf.LerpAngle(transform.eulerAngles.y, baseController.GetRotation().y, Time.deltaTime * currentAngularVelocity), 0f);
        }
    }


    private float velocityUpdateCooldown = 0.5f;
    private float velocityUpdateElapsedTime = 0f;
    private void UpdateLinearAndAngularVelocity()
    {
        velocityUpdateElapsedTime += Time.deltaTime;
        if (velocityUpdateElapsedTime < velocityUpdateCooldown) return;

        currentMoveSpeed = Random.Range(troughMoveSpeed, crestMoveSpeed);
        currentAngularVelocity = Random.Range(troughAngularVelocity, crestAngularVelocity);
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
