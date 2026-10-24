using UnityEngine;

public abstract class BaseController : MonoBehaviour
{
    public abstract LayerMask GetInteractableLayers();
    public abstract Vector3 GetRotation();
    public abstract void SetCurrentMoveSpeed(float newMoveSpeed);
    public abstract float GetNormalMoveSpeed();
    public abstract void UpdateMoveSpeed(float updatedMoveSpeed);

    public abstract bool IsMoving();
    public abstract void RemoveDeadEnemyLayer(int layer);

    public abstract void AddHomeAsWaypoint(Transform homeTransform);
}