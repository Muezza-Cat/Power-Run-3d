using UnityEngine;
using UnityEngine.UI;

public class FlagCaptureTimer : MonoBehaviour
{

    [Header("Reference")]
    private Flag flag;
    private Image progressIndicator;


    private void Awake()
    {
        flag = GetComponentInParent<Flag>();
        progressIndicator = GetComponent<Image>();
    }


    private void Start()
    {
        flag.OnCaptureProgress += Flag_OnCaptureProgress;
    }

    private void Flag_OnCaptureProgress(float progressNormalized)
    {
        progressIndicator.fillAmount = progressNormalized;
    }
}
