using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.AI;

public class CoinManager : MonoBehaviour
{
    #region Singleton
    public static CoinManager Instance { get; private set; }
    #endregion

    [Header("Settings")]
    [SerializeField] private int minXPos = 20;
    [SerializeField] private int maxXPos = 170;
    [SerializeField] private int minZPos = 17;
    [SerializeField] private int maxZPos = 180;

    private int coinSpawned = 0;
    private int maxCoinSpawnLimit = 100;


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
        if (coinSpawned < maxCoinSpawnLimit && spawnPosition != Vector3.zero)
        {
            ObjectPooler.Instance.SpawnCoin(spawnPosition, Quaternion.identity);
            coinSpawned++;
        }
    }

    public void DisableCoin(GameObject coinToDespawn)
    {
        ObjectPooler.Instance.DespawnCoin(coinToDespawn);
        coinSpawned--;
    }


    //Needs updating to Terrain, the magic numbers are for testing purpose only;
    private Vector3 RandomPositionCalculator()
    {
        Vector3 randomPosition = new Vector3(Random.Range(minXPos, maxXPos), 1f, Random.Range(minZPos, maxZPos));
        //Vector3 randomPosition = new Vector3(0f, 1f, 0f); //Testing Purpose;

        if (NavMesh.SamplePosition(randomPosition, out NavMeshHit hit, 0.1f, NavMesh.AllAreas))
        {
            return randomPosition;
        } 
        else
        {
            if (NavMesh.SamplePosition(randomPosition, out NavMeshHit hits, 15f, NavMesh.AllAreas))
            {
                return hits.position;
            }
        }
        return Vector3.zero;
    }
}
