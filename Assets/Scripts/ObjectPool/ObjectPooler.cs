using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;


[DefaultExecutionOrder(100)]
public class ObjectPooler : MonoBehaviour
{
    #region Singleton
    public static ObjectPooler Instance { get; private set; }
    #endregion



    [Header("Collection")]
    //public Queue<GameObject> pool;
    public Dictionary<PoolKey, Queue<GameObject>> bigPool;

    [Header("Reference")]
    //Testing
    [SerializeField] private GameObject playerUnit;
    [SerializeField] private GameObject enemyUnit;
    //[SerializeField] private GameObject unit;
    [SerializeField] private GameObject coin;
    [SerializeField] private GameObject apple;

    [Header("Settings")]
    private int numberOfHordes;
    [SerializeField] private int maxUnitCapacityInHorde = 25;
    private int numOfObjectsToPool;

    [Header("Spawnable")]
    public int totalNumOfCoins = 250;
    public int totalNumOfApples = 40;


    public enum PoolKey
    {
        EnemyUnit,
        PlayerUnit,
        Unit,
        Coin,
        Apple,
    }



    private void Awake()
    {
        Instance = this;

        bigPool = new Dictionary<PoolKey, Queue<GameObject>>();

        numberOfHordes = GameplayManager.Instance.GetHordeFormation().Count;
        numOfObjectsToPool = numberOfHordes * maxUnitCapacityInHorde;

        bigPool.Add(PoolKey.Unit, new Queue<GameObject>());
        bigPool.Add(PoolKey.Coin, new Queue<GameObject>());
        bigPool.Add(PoolKey.Apple, new Queue<GameObject>());

        //Testing
        bigPool.Add(PoolKey.PlayerUnit, new Queue<GameObject>());
        bigPool.Add(PoolKey.EnemyUnit, new Queue<GameObject>());


        /*for (int i = 0; i < numOfObjectsToPool; i++)
        {
            if (unit == null)
            {
                Debug.LogWarning("Null reference of UnitPrefab in ObjectPooler.cs");
                break;
            }
            GameObject obj = Instantiate(unit, transform.position, Quaternion.identity);
            obj.SetActive(false);

            bigPool[PoolKey.Unit].Enqueue(obj);
        }*/


        for (int i = 0; i < numOfObjectsToPool; i++)
        {
            if (enemyUnit == null)
            {
                Debug.LogWarning("Null reference of EnemyUnitPrefab in ObjectPooler.cs");
                break;
            }
            GameObject obj = Instantiate(enemyUnit, transform.position, Quaternion.identity);
            obj.SetActive(false);

            bigPool[PoolKey.EnemyUnit].Enqueue(obj);
        }


        for (int i = 0; i < maxUnitCapacityInHorde + 5f; i++)
        {
            if (playerUnit == null)
            {
                Debug.LogWarning("Null reference of PlayerUnitPrefab in ObjectPooler.cs");
                break;
            }
            GameObject obj = Instantiate(playerUnit, transform.position, Quaternion.identity);
            obj.SetActive(false);

            bigPool[PoolKey.PlayerUnit].Enqueue(obj);
        }


        for (int i = 0; i < totalNumOfCoins; i++)
        {
            if (coin == null)
            {
                Debug.LogWarning("Null reference of CoinPrefab in ObjectPooler.cs");
                break;
            }
            GameObject obj = Instantiate(coin, transform.position, Quaternion.identity);
            obj.SetActive(false);

            bigPool[PoolKey.Coin].Enqueue(obj);
        }

        for (int i = 0; i < totalNumOfApples; i++)
        {
            if (apple == null)
            {
                Debug.LogWarning("Null reference of ApplePrefab in ObjectPooler.cs");
                break;
            }
            GameObject obj = Instantiate(apple, transform.position, Quaternion.identity);
            obj.SetActive(false);

            bigPool[PoolKey.Apple].Enqueue(obj);
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


    /*public GameObject SpawnUnit(Vector3 spawnPosition, Quaternion spawnRotation, HordeFormation hordeFormation)
    {
        GameObject unitToSpawn = bigPool[PoolKey.Unit].Dequeue();

        unitToSpawn.transform.position = spawnPosition;
        unitToSpawn.transform.rotation = spawnRotation;
        
        unitToSpawn.SetActive(true);

        return unitToSpawn;
    }*/

    //Testing
    public GameObject SpawnUnit(Vector3 spawnPosition, Quaternion spawnRotation, HordeFormation hordeFormation)
    {
        GameObject unitToSpawn = bigPool[hordeFormation.GetBaseController().poolKey].Dequeue();

        unitToSpawn.transform.position = spawnPosition;
        unitToSpawn.transform.rotation = spawnRotation;
        
        unitToSpawn.SetActive(true);

        return unitToSpawn;
    }

    public void DespawnUnit(GameObject unitToEnqueue)
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

    public void DespawnCoin(GameObject coinToPool)
    {
        coinToPool.transform.position = Vector3.zero;
        coinToPool.transform.rotation = Quaternion.identity;

        coinToPool.SetActive(false);

        bigPool[PoolKey.Coin].Enqueue(coinToPool);
    }


    //Under Construction
    public void SpawnApple(Vector3 spawnPosition, Quaternion spawnRotation)
    {
        GameObject appleToSpawn = bigPool[PoolKey.Apple].Dequeue();
        appleToSpawn.SetActive(true);

        appleToSpawn.transform.position = spawnPosition;
        appleToSpawn.transform.rotation = spawnRotation;
    }

    public void DespawnApple(GameObject appleToPool)
    {
        appleToPool.transform.position = Vector3.zero;
        appleToPool.transform.rotation = Quaternion.identity;

        appleToPool.SetActive(false);

        bigPool[PoolKey.Apple].Enqueue(appleToPool);
    }



    public void ChangeUnitInPool(GameObject newTypeOfUnit)
    {
        if (newTypeOfUnit == null) 
        {
            Debug.Log("newTypeOfUnitIsNull");
            return;
        }

        while (bigPool[PoolKey.PlayerUnit].Count > 0)
        {
            GameObject obj = bigPool[PoolKey.PlayerUnit].Dequeue();
            if (obj != null)
            {
                Destroy(obj);
            }
        }


        for (int i = 0; i < maxUnitCapacityInHorde + 5; i++)
        {
            GameObject unit = Instantiate(newTypeOfUnit, transform.position, Quaternion.identity);
            unit.SetActive(false);
            bigPool[PoolKey.PlayerUnit].Enqueue(unit);
        }
    }
}
