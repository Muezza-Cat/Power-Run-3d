using System.Collections.Generic;
using UnityEngine;


[DefaultExecutionOrder(100)]
public class ObjectPooler : MonoBehaviour
{
    #region Singleton
    public static ObjectPooler Instance { get; private set; }
    #endregion

    [Header("Collection")]
    public Queue<GameObject> pool;
    public Dictionary<PoolKey, Queue<GameObject>> bigPool;

    [Header("Reference")]
    [SerializeField] private GameObject unit;
    [SerializeField] private GameObject coin;

    [Header("Settings")]
    private int numberOfHordes;
    [SerializeField] private readonly int maxUnitCapacityInHorde = 25;
    private int numOfObjectsToPool;

    private int totalNumOfCoins = 100;


    public enum PoolKey
    {
        Unit,
        Coin,
    }



    private void Awake()
    {
        Instance = this;

        bigPool = new Dictionary<PoolKey, Queue<GameObject>>();

        numberOfHordes = EnemyManager.Instance.hordeFormations.Count;
        numOfObjectsToPool = numberOfHordes * maxUnitCapacityInHorde;

        bigPool.Add(PoolKey.Unit, new Queue<GameObject>());
        bigPool.Add(PoolKey.Coin, new Queue<GameObject>());

        for (int i = 0; i < numOfObjectsToPool; i++)
        {
            GameObject obj = Instantiate(unit, transform.position, Quaternion.identity);
            obj.SetActive(false);

            bigPool[PoolKey.Unit].Enqueue(obj);
        }

        for (int i = 0; i < totalNumOfCoins; i++)
        {
            GameObject obj = Instantiate(coin, transform.position, Quaternion.identity);
            obj.SetActive(false);

            bigPool[PoolKey.Coin].Enqueue(obj);
        }

        //pool = new Queue<GameObject>();
        //numberOfHordes = EnemyManager.Instance.hordeFormations.Count;

        //numOfObjectsToPool = numberOfHordes * maxUnitCapacityInHorde;

        //for (int i = 0; i < numOfObjectsToPool; i++)
        //{
        //    GameObject obj = Instantiate(unit, transform.position, Quaternion.identity);
        //    obj.SetActive(false);

        //    pool.Enqueue(obj);
        //}
    }


    public GameObject SpawnUnit(Vector3 spawnPosition, Quaternion spawnRotation, HordeFormation hordeFormation)
    {
        GameObject unitToSpawn = bigPool[PoolKey.Unit].Dequeue();

        unitToSpawn.transform.position = spawnPosition;
        unitToSpawn.transform.rotation = spawnRotation;
        
        unitToSpawn.SetActive(true);

        return unitToSpawn;
    }

    public void RemoveUnit(GameObject unitToEnqueue)
    {
        unitToEnqueue.transform.position = Vector3.zero;
        unitToEnqueue.transform.rotation = Quaternion.identity;

        unitToEnqueue.SetActive(false);

        bigPool[PoolKey.Unit].Enqueue(unitToEnqueue);
    }

    public void SpawnCoin(Vector3 spawnPosition, Quaternion spawnRotation)
    {
        GameObject coinToSpawn = bigPool[PoolKey.Coin].Dequeue();
        coinToSpawn.SetActive(true);

        coinToSpawn.transform.position = spawnPosition;
        coinToSpawn.transform.rotation = spawnRotation;
    }

    public void RemoveCoin(GameObject coinToPool)
    {
        coinToPool.transform.position = Vector3.zero;
        coinToPool.transform.rotation = Quaternion.identity;

        coinToPool.SetActive(false);

        bigPool[PoolKey.Coin].Enqueue(coinToPool);
    }
}
