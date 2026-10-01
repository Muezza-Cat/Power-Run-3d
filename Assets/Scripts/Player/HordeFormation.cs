using UnityEngine;
using System.Collections.Generic;
using TMPro;
using System;



public class HordeFormation : MonoBehaviour
{
    #region Event
    public event Action<int, HordeFormation> OnDisableUpdateEnemyLayer;
    public event Action<HordeFormation> UpdatePlayerLives;
    #endregion

    [Header("Important")]
    public LayerMask enemyLayer;
    public float hordeMorale { get; private set; }
    public int coins { get; set; }
    public int coinsAllTime;
    [HideInInspector] public BaseController baseController; //Parent


    [Header("Reference")]
    [SerializeField] private Transform lookTransform;

    [Header("Setting")]
    [SerializeField] private int startingUnitsCount = 4;
    public int perUnitCost { get; private set; } = 5;
    public int numberOfColumns { get; private set; } = 5; //X-Axis;
    public int numberOfRows { get; private set; } = 5; //Z-Axis;
    public float unitSpacingX { get; private set; }
    [SerializeField] private float unitSpacingX_Axis = 1f;
    public float unitSpacingZ { get; private set; }
    [SerializeField] private float unitSpacingZ_Axis = 1f;

    [SerializeField, Range(0, 1)] private float formationJitter = 0.3f; //Noise;

    private float halfOfUnitWidth;

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
        //points.Add(new Vector3(0f, 0f, 0f));

        units = new List<Transform>();
        distanceFromPoints = new List<float>();
        occupiedFlags = new List<Flag>();

        halfOfUnitWidth = Mathf.CeilToInt((numberOfColumns - 1) / 2f);

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
        //ReturnToHome();
        CalculateHordeMorale();
        AssignUnitPosition();
        if (scoreText != null) scoreText.text = Mathf.FloorToInt(score).ToString();
    }

    private void OnDisable()
    {
        OnDisableUpdateEnemyLayer?.Invoke(lookTransform.gameObject.layer, this);
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

    private void AssignUnitPosition()
    {
        if(units == null || points == null || points.Count == 0)
        {
            Debug.LogWarning("points is empty or null, please check the List");
        }

        for (int i = 0; i < units.Count; i++)
        {
            Unit unit = units[i].GetComponent<Unit>();
            unit.targetPosition = transform.TransformPoint(points[i]);
        }
    }


    private Vector3 GetSlotJitter() //Noise
    {
        Vector2 offset = UnityEngine.Random.insideUnitCircle * formationJitter;
        return new Vector3(offset.x, 0f, offset.y);
    }

    //Addition and Removal;

    public void AddUnitForFree()
    {
        GameObject unitToAdd = ObjectPooler.Instance.SpawnUnit(GameplayManager.Instance.GetHomeTransform(this).position, Quaternion.identity, this);
        unitToAdd.layer = lookTransform.gameObject.layer;
        units.Add(unitToAdd.transform);

        Unit unit = unitToAdd.GetComponent<Unit>();
        unit.Initialize(this);
        unit.isDetected = false;
    }

    public void AddUnit()
    {
        if (units.Count >= points.Count) return;

        if (RemoveCoin(perUnitCost))
        {
            AddUnitForFree();
        }
    }

    
    public void RemoveUnit(Transform unit)
    {
        units.Remove(unit);
        ObjectPooler.Instance.DespawnUnit(unit.gameObject);

        unit.gameObject.layer = 0;
        UpdatePlayerLives?.Invoke(this);
    }


    private void CalculateHordeMorale()
    {
        moraleCalculationElapsedTime += Time.deltaTime;
        if (moraleCalculationElapsedTime >= moraleCalculationCooldown && units.Count >= 0)
        {
            moraleCalculationElapsedTime = 0f;
            int quotient = Mathf.FloorToInt(units.Count / 10f);

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

    
    public void AddFlag(Flag flag)
    {
        occupiedFlags.Add(flag);
    }
    public void RemoveFlag(Flag flag)
    {
        occupiedFlags.Remove(flag);
    }

    public void AddCoin(int amount)
    {
        coins += amount;

        coinsAllTime += amount;
    }

    public bool RemoveCoin(int amount)
    {
        bool removedCoin = false;
        if (coins >= amount)
        {
            coins -= amount;
            removedCoin = true;
        }
        else
        {
            removedCoin = false;
        }
        return removedCoin;
    }

    public List<Flag> GetOccupiedFlags()
    {
        return occupiedFlags;
    }

    public int GetMaxNumberOfPosition()
    {
        return points.Count;
    }
}