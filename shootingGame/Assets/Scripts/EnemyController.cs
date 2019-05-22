using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyController : MonoBehaviour {

    [Header("移動速度")]
    public float movespeed = 0.04f;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {

        transform.Translate(0, 0, -movespeed);
        if (transform.position.z <= -3)
        {
            Destroy(gameObject);
        }
	}
    //敵との当たり判定
    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.tag == "Player")
        {
            Destroy(gameObject);
            
            Destroy(collision.gameObject);
        }
    }
}
