using UnityEngine;

public class Unit : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        if ((ZombieHordeController.Instance.interactableLayer.value & (1 << other.gameObject.layer)) != 0)
        {
            Debug.Log("Interacted with the layer : " + other.gameObject.layer);

            other.transform.parent = null;
            other.gameObject.layer = 6;
            other.isTrigger = true;
            other.gameObject.GetComponentInChildren<MeshRenderer>().material.color = Color.red;
            other.gameObject.AddComponent<Unit>(); //Make it one of the units;
            Destroy(other.gameObject.GetComponent<Rigidbody>()); //Remove Rigidbody
            HordeFormation.Instance.AddNewRecruit(other.transform);
        }
    }
}
