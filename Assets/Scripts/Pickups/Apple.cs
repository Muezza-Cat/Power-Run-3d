using UnityEngine;




public class Apple : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        if ((PickupsManager.Instance.interactableLayer & (1 << other.gameObject.layer)) != 0)
        {
            if (other.TryGetComponent<Unit>(out Unit unit))
            {
                unit.hordeFormation.appleCount++;
                PickupsManager.Instance.DisableApple(this.gameObject);
            }
        }
    }
}
