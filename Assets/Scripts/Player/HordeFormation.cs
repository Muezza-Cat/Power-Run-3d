using UnityEngine;
using System.Collections.Generic;



public class HordeFormation : MonoBehaviour
{
    //Singleton
    public static HordeFormation Instance { get; private set; }


    [Header("Reference")]
    [SerializeField] private Transform zombiePrefab;
    [SerializeField] private Transform lookTransform;

    [Header("Setting")]
    public int startingUnitsCount = 4;
    [SerializeField] private int numberOfColumns = 5; //X-Axis;
    [SerializeField] private int numberOfRows = 5; //Z-Axis;
    [SerializeField] private float unitSpacingX = 1f;
    [SerializeField] private float unitSpacingZ = 1f;
    [SerializeField, Range(0, 1)] private float formationJitter = 0.3f; //Noise;

    private float halfOfUnitWidth;
    private float unitCount;

    [Header("Collections")]
    private List<Vector3> points;
    private List<Transform> units;
    private List<float> distanceFromPoints;




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
        distanceFromPoints = new List<float>();

        halfOfUnitWidth = (numberOfColumns - 1) / 2f;
        unitCount = startingUnitsCount;
    }

    private void Start()
    {
        UpdateUnitDepth();
        EvaluatePoints(true);
    }


    
    private void EvaluatePoints(bool spawnInitialUnits) //Sets Position;
    {
        UpdateUnitDepth();
        
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
                    break;
                }

                Vector3 position = new Vector3(xPos * unitSpacingX, 0f, z * unitSpacingZ); //First (0,0);
                position += GetSlotJitter();
                points.Add(position);

                float distanceFromPoint = Vector3.Distance(position, Vector3.zero);
                distanceFromPoints.Add(distanceFromPoint);

                if (spawnInitialUnits)
                {
                    SpawnInitialUnits(/*position*/);
                } 
            }
        }
    }


    private void SpawnInitialUnits(/*Vector3 position*/)
    {
        //Vector3 worldPosition = transform.TransformPoint(position);
        Transform startingUnit = Instantiate(zombiePrefab, points[0], transform.rotation);
        units.Add(startingUnit);
    }


    private int UpdateUnitDepth()
    {
        numberOfRows = Mathf.CeilToInt(unitCount / numberOfColumns);
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
        distanceFromPoints.Clear();

        EvaluatePoints(false);
    }

    public void RemoveUnit(Transform unit)
    {
        units.Remove(unit);
        unitCount--;

        points.Clear();
        distanceFromPoints.Clear();

        EvaluatePoints(false);
        Destroy(unit.gameObject);
    }




    private float hurrySpeed = 4f;
    private float relaxedSpeed = 2f;
    private void Update()
    {
        for (int i = 0; i < units.Count; i++)
        {
            Transform unit = units[i];

            if (units.Count > points.Count) break;
            Vector3 worldPoint = transform.TransformPoint(points[i]); //Convert to world space;

            float unitMoveSpeed = (Vector3.Distance(unit.position, transform.TransformPoint(points[0])) > distanceFromPoints[i])? UnityEngine.Random.Range(relaxedSpeed, hurrySpeed): relaxedSpeed;
            unit.position = Vector3.MoveTowards(unit.position, worldPoint, unitMoveSpeed * Time.deltaTime);

            Vector3 lookRot = (lookTransform.position - unit.position).normalized;
            lookRot.y = 0f;
            unit.forward = lookRot;
        }
    }
}
