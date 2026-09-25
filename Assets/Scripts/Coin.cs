using UnityEngine;

public class Coin : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        if ((CoinManager.Instance.interactableLayer.value & (1 << other.gameObject.layer)) != 0)
        {
            CoinManager.Instance.DespawnCoin(this.gameObject);
        }
    }
}
