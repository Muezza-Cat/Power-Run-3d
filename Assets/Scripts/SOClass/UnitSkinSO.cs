using UnityEngine;
using System.Collections.Generic;
using System;


[CreateAssetMenu(fileName = "SkinsSO", menuName = "Scriptable Objects/SkinsSO")]
public class UnitSkinSO : ScriptableObject
{
    [Serializable]
    public struct Horde_Skin
    {
        public LayerMask layer;
        public Material skinMaterial;
    }

    public List<Horde_Skin> hordeSkinList;
}
