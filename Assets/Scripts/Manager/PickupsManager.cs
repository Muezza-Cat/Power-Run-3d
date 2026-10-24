using UnityEngine;
using UnityEngine.AI;

public class PickupsManager : MonoBehaviour
{
    #region Singleton
    public static PickupsManager Instance { get; private set; }
    #endregion

    [Header("Settings")]
    [SerializeField] private int minXPos = 20;
    [SerializeField] private int maxXPos = 170;
    [SerializeField] private int minZPos = 17;
    [SerializeField] private int maxZPos = 180;

    private int coinSpawned = 0;
    private int appleSpawned = 0;


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
        SpawnApple(RandomPositionCalculator());
    }


    private void SpawnCoin(Vector3 spawnPosition)
    {
        if (coinSpawned < ObjectPooler.Instance.totalNumOfCoins && spawnPosition != Vector3.zero)
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



    private void SpawnApple(Vector3 spawnPosition)
    {
        if (appleSpawned < ObjectPooler.Instance.totalNumOfApples && spawnPosition != Vector3.zero)
        {
            ObjectPooler.Instance.SpawnApple(spawnPosition, Quaternion.identity);
            appleSpawned++;
        }
    }

    public void DisableApple(GameObject appleToDespawn)
    {
        ObjectPooler.Instance.DespawnApple(appleToDespawn);
        appleSpawned--;
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
