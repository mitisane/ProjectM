using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EffectScoll : MonoBehaviour {

    public float rota = 1000;
	// Use this for initialization
	void Start () {
		
	}

    // Update is called once per frame
    void Update()
    {
        transform.Rotate(0, 0, rota);
    }
}
