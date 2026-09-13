using UnityEngine;

public class GroundMover : MonoBehaviour
{
    private bool hasGameStarted = false;
    [SerializeField] private float moveSpeed = 6f;

    private void Start()
    {
        hasGameStarted = true;
    }

    private void Update()
    {
        if (!hasGameStarted) return;

        transform.position -= new Vector3(0f, 0f, moveSpeed * Time.deltaTime);
    }
}
