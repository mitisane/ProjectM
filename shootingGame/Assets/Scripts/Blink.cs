using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Blink : MonoBehaviour {

    Color color;

    float time;
    // Use this for initialization
    void Start () {
         color = gameObject.GetComponent<Renderer>().material.color;
         color.a = 0.5f;
         gameObject.GetComponent<Renderer>().material.color = color;
        StartCoroutine("Blinkalpha");
    }
	
	// Update is called once per frame
	void Update () {
	}
    private IEnumerator Blinkalpha()
    {
        while (true)
        {
            BlinkAlpha_a();
            yield return new WaitForSeconds(0.2f);
            BlinkAlpha_b();
            yield return new WaitForSeconds(0.2f);
        }
    }

    void BlinkAlpha_a()
    {
        color.a = 0.4f;
        gameObject.GetComponent<Renderer>().material.color = color;
    }
    void BlinkAlpha_b()
    {
        color.a = 0.9f;
        gameObject.GetComponent<Renderer>().material.color = color;
    }
}
