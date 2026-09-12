using UnityEngine;

public class Killer : MonoBehaviour
{
    [SerializeField] private LayerMask enemyLayer;


    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.layer == 6)
        {
            HordeFormation.Instance.RemoveUnit(other.transform);
        }
    }
}
