using TMPro;
using UnityEngine;

public class WorldCanvasFaceCamera : MonoBehaviour
{
    [SerializeField] private TextMeshProUGUI hordeName;
    private HordeFormation parentHordeFormation;



    private void Awake()
    {
        parentHordeFormation = GetComponentInParent<HordeFormation>();
    }

    private void Start()
    {
        if (parentHordeFormation != null) hordeName.color = GameplayManager.Instance.GetUnitMaterial(parentHordeFormation).color;
    }



    private void LateUpdate()
    {
        transform.forward = Camera.main.transform.forward;
    }
}
