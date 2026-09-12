using NUnit.Framework;
using System.Collections;
using TMPro;
using UnityEngine;


public class ZombieHordeController : MonoBehaviour
{
    public static ZombieHordeController Instance { get; private set; }


    [Header("Reference")]
    [SerializeField] private TextMeshProUGUI screenText;
    private HordeFormation testScript;
    public LayerMask interactableLayer;

    [Header("Movement")]
    private Vector3 initialPlayerPosition;

    [SerializeField] private float movementFactor = 10f;

    private float maxHorizontalPosition = 3f;
    private float minHorizontalPosition = -3f;

    [SerializeField] private float moveSpeed = 4f;

    private float drag;
    public float Drag
    {
        get { return drag; }
        private set
        {
            if (value < -1f) value = -1f;
            else if (value > 1f) value = 1f;
            drag = value;
        }
    }


    [Header("Settings")]
    private Vector2 startTouchPosition;
    private Vector2 endTouchPosition;


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

        testScript = GetComponent<HordeFormation>();
        initialPlayerPosition = transform.position;
    }


    private void Start()
    {
        InputManager.Instance.OnTouchStartEvent += InputManager_OnTouchStartEvent;
        InputManager.Instance.OnTouchEndEvent += InputManager_OnTouchEndEvent;
    }


    private void InputManager_OnTouchStartEvent(Vector2 position, float time)
    {
        initialPlayerPosition = transform.position;
        //targetZPos = 0f;
        startTouchPosition = position;
    }

    private void InputManager_OnTouchEndEvent(Vector2 position, float time)
    {
        endTouchPosition = position;    
    }



    private void Update()
    {
        FingerDragCalculation();
        HordeHorizontalMovementHandler();
    }





    //private float targetZPos = 0f;
    private void HordeHorizontalMovementHandler()
    {
        float targetXPos = Drag * movementFactor; //How much to move in total;
        //targetZPos += moveSpeed * Time.deltaTime;

        Vector3 targetPosition = initialPlayerPosition + new Vector3(targetXPos, 0f, 0f);

        targetPosition.x = Mathf.Clamp(targetPosition.x, minHorizontalPosition, maxHorizontalPosition);

        transform.position = targetPosition;
    }

    private void FingerDragCalculation()
    {
        if (!InputManager.Instance.isTouchValid) return;
        Drag = (InputManager.Instance.TouchPosition().x - startTouchPosition.x) / Screen.width; //In Pixels;
        screenText.text = Drag.ToString();
    }

}
