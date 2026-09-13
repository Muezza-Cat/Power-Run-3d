using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.InputSystem;


public class InputManager : MonoBehaviour
{
    public static InputManager Instance { get; private set; }

    private TouchInputSystem touchInputSystem;

    public delegate void OnTouchStart(Vector2 position, float time);
    public event OnTouchStart OnTouchStartEvent;
    public delegate void OnTouchEnd(Vector2 position, float time);
    public event OnTouchEnd OnTouchEndEvent;

    public float swipeValueNormalized { get; private set; }
    public bool isTouchValid = true;

    private Vector2 moveDirection;



    private void Awake()
    {
        Instance = this;

        touchInputSystem = new TouchInputSystem();
        touchInputSystem.Enable();
    }

    private void Start()
    {
        touchInputSystem.Touch.Touch.started += Touch_Started;
        touchInputSystem.Touch.Touch.canceled += Touch_Canceled;
    }


    private void Touch_Started(InputAction.CallbackContext context)
    {
        if (TouchPosition().y > Screen.height * 0.7f)
        {
            isTouchValid = false;
        }
        else
        {
            isTouchValid = true;
            OnTouchStartEvent?.Invoke(TouchPosition(), (float)context.startTime);
        }
    }

    private void Touch_Canceled(InputAction.CallbackContext context)
    {
        OnTouchEndEvent?.Invoke(TouchPosition(), (float)context.time);
    }

    public Vector2 TouchPosition()
    {
        return touchInputSystem.Touch.TouchPosition.ReadValue<Vector2>();
    }


    private void Update()
    {
        moveDirection = touchInputSystem.Touch.Move.ReadValue<Vector2>();
    }

    public Vector2 GetMoveDirection()
    {
        return moveDirection.normalized;
    }
}
