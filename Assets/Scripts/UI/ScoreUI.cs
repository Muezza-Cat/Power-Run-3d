using UnityEngine;
using TMPro;
using System.Collections.Generic;
using UnityEngine.UI;

public class ScoreUI : MonoBehaviour
{
    [Header("Reference")]
    [SerializeField] private UnitSkinSO unitSkinSO;

    [Header("TMP Text")]
    [SerializeField] private RectTransform rankTransform;
    [SerializeField] private GameObject scoreUITemplate;

    [Header("Collection")]
    private List<TextMeshProUGUI> scoreTextList;
    private List<RectTransform> scoreBarTransformList;


    [Header("Settings")]
    private float scoreTemplateSpacing = 10f;
    private float scoreBarMaxWidth = 500f;


    private void Awake()
    {
        scoreTextList = new List<TextMeshProUGUI>();
        scoreBarTransformList = new List<RectTransform>();
    }

    private void Start()
    {
        Image image = null;

        if (image != null) rankTransform.sizeDelta = new Vector2(rankTransform.sizeDelta.x, GameplayManager.Instance.GetHordeFormation().Count * (image.rectTransform.sizeDelta.y + scoreTemplateSpacing));

        foreach (HordeFormation hordeFormation in GameplayManager.Instance.GetHordeFormation())
        {
            Transform template = Instantiate(scoreUITemplate, transform).transform;
            template.gameObject.SetActive(true);

            TextMeshProUGUI scoreText = template.GetComponentInChildren<TextMeshProUGUI>();
            scoreTextList.Add(scoreText);

            image = template.GetComponentInChildren<Image>();
            scoreBarTransformList.Add(image.rectTransform);
            image.color = GameplayManager.Instance.GetUnitMaterial(hordeFormation).color;
        }

        GameplayManager.Instance.OnScoreUpdated += UpdateUIScore;
        GameplayManager.Instance.OnScoreUpdated += UpdateScoreBar;
    }

    private void UpdateUIScore(List<float> scoreList)
    {
        for (int i = 0; i < scoreList.Count; i++)
        {
            scoreTextList[i].text = Mathf.FloorToInt(scoreList[i]).ToString();
        }
    }

    //Testing
    float highestScore = 0f;
    float extremeRightValue;
    private void UpdateScoreBar(List<float> scoreList)
    {
        for(int i = 0; i < scoreBarTransformList.Count; i++)
        {
            if (scoreList[i] > highestScore) highestScore = scoreList[i];
            extremeRightValue = highestScore + 100f;

            RectTransform rTransform = scoreBarTransformList[i];

            float scoreBarWidth = (scoreList[i] / extremeRightValue) * scoreBarMaxWidth;
            rTransform.sizeDelta = new Vector2(scoreBarWidth + 10f, rTransform.sizeDelta.y);
        }
    }
}