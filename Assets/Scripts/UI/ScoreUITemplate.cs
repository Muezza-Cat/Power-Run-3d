using TMPro;
using UnityEngine;
using UnityEngine.UI;



public class ScoreUITemplate : MonoBehaviour
{
    public Image scoreBar;
    [SerializeField] private TextMeshProUGUI scoreText;


    public void Initialize(int score, float barWidth)
    {
        if (scoreBar == null || scoreText == null)
        {
            Debug.LogWarning("Missing Component Reference in : " + this.gameObject.name);
            return;
        }

        scoreText.text = score.ToString();
        scoreBar.rectTransform.sizeDelta = new Vector2(barWidth, scoreBar.rectTransform.sizeDelta.y);
    }
}
