using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class efRotate : MonoBehaviour {

    public float yrota;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        transform.Rotate(0, yrota, 0);
	}
}
