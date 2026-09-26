using UnityEngine;


public class PlayerController : BaseController
{
    [Header("Reference")]
    private CharacterController controller;
    [HideInInspector] public HordeFormation hordeFormation;

    [Header("Movement")]
    [SerializeField] private float moveSpeed = 4f;

    [Header("Settings")]
    private Vector3 moveDirection;
    private float radius = 0.5f;
    private float castDistance = 0.1f;

    [Header("LayerMask")]
    public LayerMask interactableLayer;

    [Header("Flag")]
    private bool canMove;


    private void Awake()
    {
        controller = GetComponent<CharacterController>();
        hordeFormation = GetComponent<HordeFormation>();
    }

    private void Update()
    {
        MovementHandler();
    }



    private void MovementHandler()
    {
        if (InputManager.Instance.GetMoveDirection() == Vector2.zero) return;
        moveDirection = new Vector3(InputManager.Instance.GetMoveDirection().x, 0f, InputManager.Instance.GetMoveDirection().y).normalized;

        Vector3 point1 = transform.position + Vector3.up * +0.5f;
        Vector3 point2 = transform.position + Vector3.up * -0.5f;
        canMove = !Physics.CapsuleCast(point1, point2, radius, moveDirection, castDistance, interactableLayer, QueryTriggerInteraction.Ignore);

        if (canMove)
        {
            transform.position += moveDirection * Time.deltaTime * moveSpeed;
        }
        else if (!canMove)
        {
            Vector3 moveDirectionX = new Vector3(moveDirection.x, 0f, 0f);
            canMove = (moveDirection.x > 0.1f || moveDirection.x < -0.1f) && !Physics.CapsuleCast(point1, point2, radius, moveDirectionX, castDistance, interactableLayer, QueryTriggerInteraction.Ignore);

            if (canMove)
            {
                transform.position += moveDirectionX * Time.deltaTime * moveSpeed;
            }
            else
            {
                Vector3 moveDirectionZ = new Vector3(0f, 0f, moveDirection.z);
                canMove = (moveDirection.z > 0.1f || moveDirection.z < -0.1f) && !Physics.CapsuleCast(point1, point2, radius, moveDirectionZ, castDistance, interactableLayer, QueryTriggerInteraction.Ignore);

                if (canMove)
                {
                    transform.position += moveDirectionZ * Time.deltaTime * moveSpeed;
                }
                else
                {
                    //No Movement;
                }
            }
        }
    }



    public override Vector3 GetRotation()
    {
        return new Vector3(0f, Mathf.Atan2(InputManager.Instance.GetMoveDirection().x, InputManager.Instance.GetMoveDirection().y) * Mathf.Rad2Deg, 0f);
    }

    public override float GetMoveSpeed()
    {
        return moveSpeed;
    }

    public override LayerMask GetInteractableLayers()
    {
        return interactableLayer;
    }
}
