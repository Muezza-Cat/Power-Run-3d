using UnityEngine;

public abstract class BaseController : MonoBehaviour
{

    public abstract BaseController GetController();
    public abstract Vector3 GetRotation();
    public abstract float GetMoveSpeed();
}