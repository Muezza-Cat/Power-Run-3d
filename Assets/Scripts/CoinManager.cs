using UnityEngine;

public class CoinManager : MonoBehaviour
{
    #region Singleton
    public static CoinManager Instance { get; private set; }
    #endregion


    private int coinSpawned = 0;
    private int maxNumberOfCoinsAllowed = 100;


    private float cooldownTime = 0.1f;
    private float elapsedTime = 0f;

    public LayerMask interactableLayer;



    private void Awake()
    {
        Instance = this;
    }


    private void Update()
    {
        elapsedTime += Time.deltaTime;
        if (elapsedTime < cooldownTime) return;

        elapsedTime = 0f;
        SpawnCoin(RandomPositionCalculator());
    }


    private void SpawnCoin(Vector3 randomPosition)
    {
        if (coinSpawned < maxNumberOfCoinsAllowed)
        {
            ObjectPooler.Instance.SpawnCoin(randomPosition, Quaternion.identity);
            coinSpawned++;
        }
    }


    public void DespawnCoin(GameObject coinToDespawn)
    {
        ObjectPooler.Instance.RemoveCoin(coinToDespawn);
        coinSpawned--;
    }

    private Vector3 RandomPositionCalculator()
    {
        Vector3 randomPosition = new Vector3(Random.Range(-20f, 20f), 1f, Random.Range(-20f, 20f));
        return randomPosition;
    }
}
