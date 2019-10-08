using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MathMove : MonoBehaviour {

    public float x, y;
    public float a;
    Vector2 xyMove;
    // Use this for initialization
    void Start() {
        x = 1;
        a = 3;
        y = 0;
    }

    // Update is called once per frame
    void Update() {

        if (y > 5 && x >= 1.2)
        {
            x += 0.01f; Debug.Log("a");
        }
        else if (y > -5 && x >= 1.2)
        {
            x -= 0.01f;
        }
        else
        {
            x -= 0.01f;
        }

        y = a * Mathf.Pow(x, 2);
        xyMove.x = x;
        xyMove.y = y;
        transform.position = xyMove;
    }
}
