using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class circle01 : MonoBehaviour
{

    public float speed;
    public float radius;
    public float zPosition;
    float x;
    float y;
    float z;

    // Use this for initialization
    void Start()
    {
        speed = 5.0f;
        radius = 1.0f;
        zPosition = 0f;
    }

    // Update is called once per frame
    void Update()
    {
        x = radius * Mathf.Sin(Time.time * speed);
        y = radius * Mathf.Cos(Time.time * speed);
        z = zPosition;

        transform.position = new Vector3(x, y+5, z);
    }
}