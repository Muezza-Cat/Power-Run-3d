using UnityEngine;
using System.Collections.Generic;



public class HordeFormation : MonoBehaviour
{
    [Header("Important")]
    public LayerMask enemyLayer;
    public int score;
    [HideInInspector] public BaseController baseController; //Parent


    [Header("Reference")]
    [SerializeField] private Transform unitPrefab;
    [SerializeField] private Transform lookTransform;

    [Header("Setting")]
    [SerializeField] private int startingUnitsCount = 4;
    public int numberOfColumns { get; private set; } = 5; //X-Axis;
    public int numberOfRows { get; private set; } = 5; //Z-Axis;
    public float unitSpacingX { get; private set; } = 1f;
    public float unitSpacingZ { get; private set; } = 1f;
    [SerializeField, Range(0, 1)] private float formationJitter = 0.3f; //Noise;

    private float halfOfUnitWidth;
    private float unitCount;

    [Header("Collections")]
    private List<Vector3> points;
    private List<Transform> units;
    private List<float> distanceFromPoints;




    private void Awake()
    {
        points = new List<Vector3>();
        units = new List<Transform>();
        distanceFromPoints = new List<float>();

        halfOfUnitWidth = Mathf.CeilToInt((numberOfColumns - 1) / 2f);
        unitCount = startingUnitsCount;

        baseController = GetComponent<BaseController>();
    }

    private void Start()
    {
        //UpdateUnitDepth();
        EvaluatePoints(true);
    }


    
    private void EvaluatePoints(bool spawnInitialUnits) //Fixed Points; 
    {
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

                Vector3 position = new Vector3(xPos * unitSpacingX, 0f, z * unitSpacingZ); //First (0,0);
                position += GetSlotJitter();
                points.Add(position);

                float distanceFromPoint = Vector3.Distance(position, Vector3.zero);
                distanceFromPoints.Add(distanceFromPoint);

                if (units.Count < startingUnitsCount)
                {
                    SpawnInitialUnits();
                }
            }
        }
    }


    private void SpawnInitialUnits()
    {
        Unit unit = Instantiate(unitPrefab, transform.TransformPoint(points[0]), transform.rotation).GetComponent<Unit>();
        unit.Initialize(this);

        unit.gameObject.layer = lookTransform.gameObject.layer;
        units.Add(unit.transform);
    }


    //private int UpdateUnitDepth()
    //{
    //    numberOfRows = Mathf.CeilToInt(unitCount / (float) numberOfColumns);
    //    return numberOfRows;
    //}

    private Vector3 GetSlotJitter() //Noise
    {
        Vector2 offset = Random.insideUnitCircle * formationJitter;
        return new Vector3(offset.x, 0f, offset.y);
    }




    //Addition and Removal;
    public void AddNewRecruit(Transform newRecruit)
    {
        units.Add(newRecruit);

        Unit unit = newRecruit.GetComponent<Unit>();
        unit.Initialize(this);
        
        unitCount++;
    }


    public void RemoveUnit(Transform unit)
    {
        units.Remove(unit);
        unitCount--;
    }
    
   

    private float unitMoveSpeed;


    private void Update()
    {
        for (int i = 0; i < units.Count; i++)
        {
            Transform unit = units[i];

            if (units.Count > points.Count) return;

            Vector3 worldPoint = transform.TransformPoint(points[i]); //Convert to world space;


            unitMoveSpeed = baseController.GetMoveSpeed();
            //unitMoveSpeed = (Vector3.Distance(unit.position, transform.TransformPoint(points[0])) > distanceFromPoints[i]) ? Random.Range(walkSpeed, runSpeed) : walkSpeed;

            //Position
            unit.position = Vector3.MoveTowards(unit.position, worldPoint, unitMoveSpeed * Time.deltaTime);
        }
    }

    public int GetUnitCount()
    {
        return units.Count;
    }
}
