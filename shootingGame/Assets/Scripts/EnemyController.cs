using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyController : MonoBehaviour
{

    [Header("移動速度")]
    public float movespeed = 0.07f;

    [Header("当たった回数")]
    public int Emhp = 20;

    int Damage = 10;

    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

        transform.Translate(0, 0, -movespeed);
        if (transform.position.z <= -3)
        {
            Destroy(gameObject);
        }
    }
    //プレイヤーとの当たり判定・弾との当たり判定
    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.tag == "Bullet")
        {
            Emhp -= Damage;
            Destroy(collision.gameObject);
            if (Emhp<=0)
            {
                Destroy(gameObject);
            }
        }
    }
}
