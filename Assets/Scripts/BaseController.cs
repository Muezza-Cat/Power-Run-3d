using UnityEngine;

public abstract class BaseController : MonoBehaviour
{
    public abstract LayerMask GetInteractableLayers();
    public abstract Vector3 GetRotation();
    public abstract float GetMoveSpeed();
}