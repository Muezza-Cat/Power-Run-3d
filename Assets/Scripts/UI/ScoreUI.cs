using UnityEngine;
using TMPro;
using System.Collections.Generic;
using UnityEngine.UI;




public class ScoreUI : MonoBehaviour
{
    [Header("TMP Text")]
    [SerializeField] private RectTransform rankTransform;
    [SerializeField] private GameObject scoreUITemplate;

    [Header("Collection")]
    private List<TextMeshProUGUI> scoreTextList;
    private List<RectTransform> scoreBarTransformList;


    [Header("Settings")]
    private float scoreTemplateSpacing = 10f;
    private float scoreBarMaxWidth = 500f;
    private float scoreBarFixedHeight;
    private static float highestScore = 0f;
    private float scoreBarDisplayWidthMax;


    private void Awake()
    {
        scoreTextList = new List<TextMeshProUGUI>();
        scoreBarTransformList = new List<RectTransform>();
    }

    private void Start()
    {
        Image image = scoreUITemplate.GetComponentInChildren<Image>();
        scoreBarFixedHeight = image.rectTransform.sizeDelta.y;
        if (image != null) rankTransform.sizeDelta = new Vector2(rankTransform.sizeDelta.x, GameplayManager.Instance.GetHordeFormation().Count * (scoreBarFixedHeight + scoreTemplateSpacing));

        foreach (HordeFormation hordeFormation in GameplayManager.Instance.GetHordeFormation())
        {
            Transform scoreUITemplateTransform = Instantiate(scoreUITemplate, transform).transform;
            scoreUITemplateTransform.gameObject.SetActive(true);

            TextMeshProUGUI scoreText = scoreUITemplateTransform.GetComponentInChildren<TextMeshProUGUI>();
            scoreTextList.Add(scoreText);

            image = scoreUITemplateTransform.GetComponentInChildren<Image>();
            scoreBarTransformList.Add(image.rectTransform);
            image.color = GameplayManager.Instance.GetUnitMaterial(hordeFormation).color;
        }

        GameplayManager.Instance.OnScoreUpdated += UpdateUIScore;
        GameplayManager.Instance.OnScoreUpdated += UpdateUIScoreBar;
    }



    private void UpdateUIScore(List<float> scoreList)
    {
        for (int i = 0; i < scoreList.Count; i++)
        {
            scoreTextList[i].text = Mathf.FloorToInt(scoreList[i]).ToString();
        }
    }
    private void UpdateUIScoreBar(List<float> scoreList)
    {
        for(int i = 0; i < scoreBarTransformList.Count; i++)
        {
            if (scoreList[i] > highestScore) highestScore = scoreList[i];
            scoreBarDisplayWidthMax = highestScore + 100f;

            RectTransform rTransform = scoreBarTransformList[i];

            float scoreBarWidth = (scoreList[i] / scoreBarDisplayWidthMax) * scoreBarMaxWidth;
            rTransform.sizeDelta = new Vector2(scoreBarWidth + 10f, rTransform.sizeDelta.y);
        }
    }

    public static float GetHighestScore()
    {
        return highestScore;
    }
}