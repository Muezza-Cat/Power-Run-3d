using UnityEngine;
using System.Collections;
using System.Collections.Generic;



public class HordeFormation : MonoBehaviour
{
    //Singleton
    public static HordeFormation Instance { get; private set; }


    [Header("Reference")]
    [SerializeField] private Transform zombiePrefab;
    [SerializeField] private Transform unitsParent;
    [SerializeField] private Transform spawnPoint;

    [Header("Setting")]
    public int startingUnitsCount = 4;
    [SerializeField] private int numberOfColumns = 5; //X-Axis;
    [SerializeField] private int numberOfRows = 5; //Z-Axis;
    [SerializeField] private float unitSpacingX = 1f;
    [SerializeField] private float unitSpacingZ = 1f;
    [SerializeField, Range(0, 1)] private float formationJitter = 0.3f; //Noise;

    private float halfOfUnitWidth;
    private float unitCount;

    private List<Vector3> points;
    private List<Transform> units;




    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
        }
        else
        {
            Destroy(this.gameObject);
        }


        points = new List<Vector3>();
        units = new List<Transform>();

        halfOfUnitWidth = (numberOfColumns - 1) / 2f;
        unitCount = startingUnitsCount;
    }

    private void Start()
    {
        UpdateUnitDepth();
        Debug.Log("Starting number of Rows: " + UpdateUnitDepth());
        EvaluatePoints(true);
    }


    
    private void EvaluatePoints(bool spawnInitialUnits) //Sets Position;
    {
        UpdateUnitDepth();
        Debug.Log("Number of Rows: " + UpdateUnitDepth());
        Debug.Log("UnitCount: " + unitCount);
        Debug.Log("Number of Columns: " + numberOfColumns);
        Debug.Log("pointsCount: " + points.Count);
        for (float z = 0; z > -numberOfRows; z--)
        {
            for (float x = 0; x < numberOfColumns; x++)
            {
                float xPos;
                xPos = x;
                if (x > halfOfUnitWidth)
                {
                    xPos = -(x - halfOfUnitWidth); //Order 0, 1 ,2 ,-1 ,-2; for 5 Columns.
                }

                if (points.Count >= unitCount) 
                {
                    Debug.Log("Broken out of Evaluate Points");
                    break;
                }
                Vector3 position = new Vector3(xPos * unitSpacingX, 0f, z * unitSpacingZ); //First (0,0);
                position += GetSlotJitter();
                points.Add(position);
                if (spawnInitialUnits)
                {
                    SpawnInitialUnits(position);
                } 
            }
        }
    }


    private void SpawnInitialUnits(Vector3 position)
    {
        Transform startingUnit = Instantiate(zombiePrefab, position, Quaternion.identity);
        units.Add(startingUnit);
    }


    private int UpdateUnitDepth()
    {
        numberOfRows = Mathf.CeilToInt( unitCount / numberOfColumns);
        return numberOfRows;
    }

    private Vector3 GetSlotJitter() //Noise
    {
        Vector2 offset = Random.insideUnitCircle * formationJitter;
        return new Vector3(offset.x, 0f, offset.y);
    }

    //Addition and Removal;
    public void AddNewRecruit(Transform newRecruit)
    {
        units.Add(newRecruit);
        unitCount++;
        points.Clear();
        EvaluatePoints(false);
    }

    public void RemoveUnit(Transform unit)
    {
        units.Remove(unit);
        unitCount--;
        points.Clear();
        EvaluatePoints(false);
        Destroy(unit.gameObject);
    }


    
    private void Update()
    {
        float catchupSpeed = 6f;
        for (int i = 0; i < units.Count; i++)
        {
            Transform unit = units[i];

            if (units.Count > points.Count) break;
            Vector3 worldPoint = transform.TransformPoint(points[i]); //Convert to world space;

            unit.position = Vector3.MoveTowards(unit.position, worldPoint, catchupSpeed * Time.deltaTime);

            //Needs Upgrades;
            Quaternion unitRotation = unit.rotation;
            unitRotation = Quaternion.LookRotation(transform.TransformPoint(points[0]));
            unitRotation.x = unitRotation.z = 0f;
            unit.rotation = unitRotation;
        }
    }
}
