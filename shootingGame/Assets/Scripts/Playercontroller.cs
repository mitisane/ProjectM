using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class Playercontroller : MonoBehaviour {

    int movecntY = 0;
    int movecntX = 0;

    public int hitPoint = 100;

    public int EmAtk = 10;

    public int BossAtk = 20;

    public Slider Playerslider;

    // Use this for initialization
    void Start ()
    {
        Playerslider.maxValue = hitPoint;
    }
	
	// Update is called once per frame
	void Update ()
    {
        Move();
        if (hitPoint <= 0)
        {
            SceneManager.LoadScene("gameover");
        }
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
            Playerslider.value = hitPoint;
            Debug.Log(hitPoint);
            Destroy(collision.gameObject);
        }
    }
    private void OnTriggerEnter(Collider collision)
    {
        if(collision.gameObject.tag == "Ground")
        {
            hitPoint -= BossAtk;
            Debug.Log(hitPoint);
        }
    }

}
