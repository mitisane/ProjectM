using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Playercontroller : MonoBehaviour {

    int movecntY = 0;
    int movecntX = 0;

    public int hitPoint = 100;

    public int EmAtk = 10;

    public int BossAtk = 20;


    // Use this for initialization
    void Start ()
    {
    }
	
	// Update is called once per frame
	void Update ()
    {
        Move();
	}

    void Move()
    {
        if (Input.GetKeyDown(KeyCode.LeftArrow))
        {

            if (movecntX < 3)
            {
                transform.Translate(-1, 0, 0);
                movecntX++;
                movecntY--;
            }
        }
        if (Input.GetKeyDown(KeyCode.RightArrow))
        {
            if (movecntY < 3)
            {
                transform.Translate(1, 0, 0);
                movecntY++;
                movecntX--;
            }
        }
    }
    //プレイヤーとの当たり判定・弾との当たり判定
    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.tag == "Enemy")
        {
            hitPoint -= EmAtk;
            Debug.Log(hitPoint);
            Destroy(collision.gameObject);
            if (0 >= hitPoint)
            {
                Destroy(gameObject);
            }
        }
    }
    private void OnTriggerEnter(Collider collision)
    {
        if(collision.gameObject.tag == "Ground")
        {
            hitPoint -= BossAtk;
            Debug.Log(hitPoint);
            if (0 >= hitPoint)
            {
                Destroy(gameObject);
            }
        }
    }

}
