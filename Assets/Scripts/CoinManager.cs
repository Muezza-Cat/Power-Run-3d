using UnityEngine;
using UnityEngine.AI;

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


    private void SpawnCoin(Vector3 spawnPosition)
    {
        if (coinSpawned < maxNumberOfCoinsAllowed && spawnPosition != Vector3.zero)
        {
            ObjectPooler.Instance.SpawnCoin(spawnPosition, Quaternion.identity);
            coinSpawned++;
        }
    }


    public void DespawnCoin(GameObject coinToDespawn)
    {
        ObjectPooler.Instance.DespawnCoin(coinToDespawn);
        coinSpawned--;
    }

    private Vector3 RandomPositionCalculator()
    {
        Vector3 randomPosition = new Vector3(Random.Range(-20f, 20f), 1f, Random.Range(-20f, 20f));
        Vector3 finalPosition = Vector3.zero;

        if (NavMesh.SamplePosition(randomPosition, out NavMeshHit hit, 10f, NavMesh.AllAreas))
        {
            finalPosition = hit.position;
        }
        return finalPosition;
    }
}
