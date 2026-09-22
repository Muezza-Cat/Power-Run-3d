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

    [Header("Reference")]
    [SerializeField] private GameObject unit;

    [Header("Settings")]
    private int numberOfHordes;
    [SerializeField] private readonly int maxUnitCapacityInHorde = 25;
    private int numOfObjectsToPool;




    private void Awake()
    {
        Instance = this;

        pool = new Queue<GameObject>();
        numberOfHordes = EnemyManager.Instance.hordeFormations.Count;

        numOfObjectsToPool = numberOfHordes * maxUnitCapacityInHorde;

        for (int i = 0; i < numOfObjectsToPool; i++)
        {
            GameObject obj = Instantiate(unit, transform.position, Quaternion.identity);
            obj.SetActive(false);

            pool.Enqueue(obj);
        }
    }


    public GameObject SpawnUnit(Vector3 spawnPosition, Quaternion spawnRotation, HordeFormation hordeFormation)
    {
        GameObject unitToSpawn = pool.Dequeue();

        unitToSpawn.transform.position = spawnPosition;
        unitToSpawn.transform.rotation = spawnRotation;
        
        unitToSpawn.SetActive(true);

        return unitToSpawn;
    }

    public void RemoveUnit(GameObject unitToEnqueue)
    {
        unitToEnqueue.SetActive(false);

        unitToEnqueue.transform.position = Vector3.zero;
        unitToEnqueue.transform.rotation = Quaternion.identity;

        pool.Enqueue(unitToEnqueue);
    }
}
