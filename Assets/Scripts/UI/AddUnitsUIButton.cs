using UnityEngine;
using UnityEngine.UI;

public class AddUnitsUIButton : MonoBehaviour
{
    private Button button;
    [SerializeField] private HordeFormation playerHordeFormation;

    private void Awake()
    {
        button = GetComponent<Button>();
    }

    private void Start()
    {
        button.onClick.AddListener(() =>
        {
            playerHordeFormation.AddUnit();
        });
    }
}
