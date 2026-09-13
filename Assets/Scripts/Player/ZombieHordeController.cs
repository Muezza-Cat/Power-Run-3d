using TMPro;
using UnityEngine;


public class ZombieHordeController : MonoBehaviour
{
    public static ZombieHordeController Instance { get; private set; }


    [Header("Reference")]
    [SerializeField] private TextMeshProUGUI screenText;
    private CharacterController controller;
    public LayerMask interactableLayer;

    [Header("Movement")]
    [SerializeField] private float moveSpeed = 4f;

    [Header("Settings")]
    private Vector3 moveDirection;





    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
        }
        else
        {
            Destroy(this.gameObject);
        }

        controller = GetComponent<CharacterController>();
    }


    private void Update()
    {
        MovementHandler();
        //RotationHandler(); 
    }


    private void MovementHandler()
    {
        if (InputManager.Instance.GetMoveDirection() == Vector2.zero) return;
        moveDirection = new Vector3(InputManager.Instance.GetMoveDirection().x, 0f, InputManager.Instance.GetMoveDirection().y);
        controller.Move(moveDirection * moveSpeed * Time.deltaTime);
    }

    private void RotationHandler()
    {
        if (InputManager.Instance.GetMoveDirection() == Vector2.zero) return;
        Vector3 lookDir = new Vector3(InputManager.Instance.GetMoveDirection().x, 0f, InputManager.Instance.GetMoveDirection().y);
        transform.rotation = Quaternion.LookRotation(lookDir);
    }
}
