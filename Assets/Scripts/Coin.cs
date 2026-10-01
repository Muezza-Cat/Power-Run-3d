using UnityEngine;

public class Coin : MonoBehaviour
{
    private int coinAmount = 1;
    private void OnTriggerEnter(Collider other)
    {
        if ((CoinManager.Instance.interactableLayer & (1 << other.gameObject.layer)) != 0)
        {
            other.gameObject.GetComponent<Unit>().hordeFormation.AddCoin(coinAmount);
            CoinManager.Instance.DisableCoin(this.gameObject);
        }
    }
}
