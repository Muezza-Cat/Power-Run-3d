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
        moveDirection = new Vector3(-InputManager.Instance.GetMoveDirection().y, 0f, InputManager.Instance.GetMoveDirection().x);
        controller.Move(moveDirection * moveSpeed * Time.deltaTime);
    }



    public override Vector3 GetRotation()
    {
        return new Vector3(0f, Mathf.Atan2(InputManager.Instance.GetMoveDirection().x, InputManager.Instance.GetMoveDirection().y) * Mathf.Rad2Deg, 0f);
    }

    public override float GetMoveSpeed()
    {
        return moveSpeed;
    }
}
