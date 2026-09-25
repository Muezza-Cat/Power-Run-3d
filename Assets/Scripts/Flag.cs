using UnityEngine;
using System.Collections.Generic;
using System.Collections;
using TMPro;



//Testing Phase; Not final;
public class Flag : MonoBehaviour
{
    [SerializeField] private TextMeshProUGUI flagText;

    private List<HordeFormation> hordeNearby;
    private HordeFormation flagOwner;
    private float flagCaptureRadius = 10f;

    public int scorePerMinute { get; set; } = 30;


    private void Awake()
    {
        hordeNearby = new List<HordeFormation>();
    }


    private void Start()
    {
        StartCoroutine(TestRoutine());
        flagText.text = "none : 0f";
    }

    private void Update()
    {
        DetectHordeAroundFlag();

        SetFlagOwner();
    }

    private IEnumerator TestRoutine()
    {
        while (true) 
        {
            yield return new WaitForSeconds(0.5f);
        }

    }

    private void DetectHordeAroundFlag()
    {
        if (hordeNearby.Count == EnemyManager.Instance.hordeFormations.Count) return;
        hordeNearby.Clear();
        Collider[] unitsNearby = Physics.OverlapSphere(transform.position, flagCaptureRadius);
        foreach (Collider collider in unitsNearby)
        {
            if (!collider.TryGetComponent<Unit>(out Unit unit)) return;
            if (hordeNearby.Count == 0)
            {
                hordeNearby.Add(unit.hordeFormation);
            }
            else
            {
                if (!hordeNearby.Contains(unit.hordeFormation))
                {
                    hordeNearby.Add(unit.hordeFormation);
                }
            }
        }
    }

    private float flagCaptureTime = 3f;
    private float flagCaptureElapsedTime = 0f;
    private float highestHordeMorale ;
    private HordeFormation worthyOwner;
    private List<float> hordeMorales = new List<float>();

    private bool startTimer = false;

    private void SetFlagOwner()
    {
        hordeMorales.Clear();
        if (hordeNearby.Count == 0)
        {
            flagCaptureElapsedTime = 0f;
            startTimer = false;
            return;
        }

        highestHordeMorale = hordeNearby[0].hordeMorale;
        if (hordeNearby.Count > 1)
        {
            foreach (HordeFormation hordeFormation in hordeNearby)
            {
                hordeMorales.Add(hordeFormation.hordeMorale);
            }
            hordeMorales.Sort();
            if (hordeMorales[hordeMorales.Count - 1] == hordeMorales[hordeMorales.Count - 2])
            {
                startTimer = false;
                flagCaptureElapsedTime = 0f;
            }
            else startTimer = true;
        }
        else
        {
            worthyOwner = hordeNearby[0];
            startTimer = true;
        }
        
        if (startTimer)
        {
            flagCaptureElapsedTime += Time.deltaTime;
            if (flagCaptureElapsedTime < flagCaptureTime) return;

            flagCaptureElapsedTime = 0f;
            if (flagOwner != null) flagOwner.RemoveFlag(this);
            flagOwner = worthyOwner;
            flagOwner.AddFlag(this);
        }
        //flagText.text = $"{flagOwner.name } + {flagCaptureElapsedTime.ToString()}";
    }
}