using UnityEngine;
using System.Collections.Generic;
using TMPro;



public class HordeFormation : MonoBehaviour
{
    [Header("Important")]
    public LayerMask enemyLayer;
    public float hordeMorale { get; private set; }
    public int coins
    {
        get
        {
            return coins;
        }
        set
        {
            if (value < 0)
            {
                Debug.Log("Insufficient coins");
                return;
            }
            coins = value;
        }
    }
    [HideInInspector] public BaseController baseController; //Parent


    [Header("Reference")]
    [SerializeField] private Transform lookTransform;

    [Header("Setting")]
    [SerializeField] private int startingUnitsCount = 4;
    public int numberOfColumns { get; private set; } = 5; //X-Axis;
    public int numberOfRows { get; private set; } = 5; //Z-Axis;
    public float unitSpacingX { get; private set; }
    [SerializeField] private float unitSpacingX_Axis = 1f;
    public float unitSpacingZ { get; private set; }
    [SerializeField] private float unitSpacingZ_Axis = 1f;

    [SerializeField, Range(0, 1)] private float formationJitter = 0.3f; //Noise;

    private float halfOfUnitWidth;
    private float unitCount;

    private float moraleCalculationCooldown = 0.2f;
    private float moraleCalculationElapsedTime = 0f;

    [Header("Collections")]
    private List<Vector3> points;
    private List<Transform> units;
    private List<float> distanceFromPoints;
    private List<Flag> occupiedFlags;

    public float score { get; set; }
    [SerializeField] private TextMeshProUGUI scoreText;



    private void Awake()
    {
        points = new List<Vector3>();
        units = new List<Transform>();
        distanceFromPoints = new List<float>();
        occupiedFlags = new List<Flag>();

        halfOfUnitWidth = Mathf.CeilToInt((numberOfColumns - 1) / 2f);
        unitCount = startingUnitsCount;

        unitSpacingX = unitSpacingX_Axis;
        unitSpacingZ = unitSpacingZ_Axis;

        baseController = GetComponent<BaseController>();
    }

    private void Start()
    {
        EvaluatePoints();
    }

    private void Update()
    {
        ReturnToHome();
        CalculateHordeMorale();
        SetUnitDestination();
        if (scoreText != null) scoreText.text = Mathf.FloorToInt(score).ToString();

        //for (int i = 0; i < units.Count; i++)
        //{
        //    Transform unit = units[i];

        //    if (units.Count > points.Count) return;

        //    Vector3 worldPoint = transform.TransformPoint(points[i]); //Convert to world space;


        //    unitMoveSpeed = baseController.GetMoveSpeed();
        //    //unitMoveSpeed = (Vector3.Distance(unit.position, transform.TransformPoint(points[0])) > distanceFromPoints[i]) ? Random.Range(walkSpeed, runSpeed) : walkSpeed;

        //    //Position
        //    unit.position = Vector3.MoveTowards(unit.position, worldPoint, unitMoveSpeed * Time.deltaTime);
        //}
    }

    //Testing
    private void SetUnitDestination()
    {
        for (int i = 0; i < units.Count; i++)
        {
            Transform unit = units[i].transform;

            unit.GetComponent<Unit>().targetPosition = transform.TransformPoint(points[i]);
        }
    }


    //Unit position specification;
    private void EvaluatePoints() 
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
                    GameObject unitToSpawn = ObjectPooler.Instance.SpawnUnit(transform.TransformPoint(position), Quaternion.identity, this);
                    unitToSpawn.GetComponent<Unit>().targetPosition = position;
                    units.Add(unitToSpawn.transform);

                    unitToSpawn.layer = lookTransform.gameObject.layer;
                    unitToSpawn.GetComponent<Unit>().Initialize(this);
                }
            }
        }
    }


    private Vector3 GetSlotJitter() //Noise
    {
        Vector2 offset = Random.insideUnitCircle * formationJitter;
        return new Vector3(offset.x, 0f, offset.y);
    }

    //Addition and Removal;
    public void AddUnit(Vector3 vacantPos)
    {
        GameObject unitToAdd = ObjectPooler.Instance.SpawnUnit(vacantPos, Quaternion.identity, this);
        unitToAdd.layer = lookTransform.gameObject.layer;
        units.Add(unitToAdd.transform);

        Unit unit = unitToAdd.GetComponent<Unit>();
        unit.Initialize(this);
        
        unitCount++;
    }
    public void RemoveUnit(Transform unit)
    {
        units.Remove(unit);
        ObjectPooler.Instance.DespawnUnit(unit.gameObject);

        unit.gameObject.layer = 0;

        unitCount--;
    }
    private void CalculateHordeMorale()
    {
        moraleCalculationElapsedTime += Time.deltaTime;
        if (moraleCalculationElapsedTime >= moraleCalculationCooldown && unitCount >= 0)
        {
            moraleCalculationElapsedTime = 0f;
            int quotient = Mathf.FloorToInt(unitCount / 10f);

            float additionalMorale = (quotient == 0) ? 0f : quotient * EnemyManager.Instance.unitGroupMorale;
            hordeMorale = (units.Count * EnemyManager.Instance.singleUnitMorale) + additionalMorale;
        }
    }
    public int GetUnitCount()
    {
        return units.Count;
    }

    public Transform GetLookTransform()
    {
        return lookTransform;
    }

    private void ReturnToHome()
    {
        if (units.Count == 0)
        {
            baseController.transform.position = GameplayManager.Instance.GetHomeTransform(this).position;
            baseController.gameObject.SetActive(false);
        }
    }

    public void AddFlag(Flag flag)
    {
        occupiedFlags.Add(flag);
    }
    public void RemoveFlag(Flag flag)
    {
        occupiedFlags.Remove(flag);
    }

    public List<Flag> GetOccupiedFlags()
    {
        return occupiedFlags;
    }
}