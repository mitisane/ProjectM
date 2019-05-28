using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class EnemyController : MonoBehaviour
{

    [Header("HPバー")]
    public Slider Emslider;

    [Header("移動速度")]
    public float movespeed = 0.07f;

    [Header("当たった回数")]
    public int Emhp = 100;

    int Damage = 10;

    int bossHP;
    // Use this for initialization
    void Start()
    {
        Emslider.maxValue = Emhp;
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
            Emslider.value = Emhp;
            Destroy(collision.gameObject);
            if (Emhp<=0)
            {
                bossHP = GameObject.Find("Boss").GetComponent<BossController>().SetBossHP(Damage);
                Destroy(gameObject);
            }
            
        }
    }
}
