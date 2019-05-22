using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AddForceBullet : MonoBehaviour {

    [Header("弾")]
    public GameObject bulletPre;

    [Header("射出場所")]
    public Transform shotpoint;

    [Header("連射制御")]
    public float shotlag;

    [Header("連射速度")]
    public float Firespeed =1;

    [Header("球を飛ばす力")]
    public float shotpower = 100;

    [Header("消えるまでの時間")]
    public float lifetime =3;

    // Use this for initialization
    void Start ()
    {
        
    }

    void FixedUpdate()
    {
        if (shotlag >= Firespeed)
        {
            if (Input.GetButton("Fire1"))
            {
                Shot();
            }
        }
        shotlag += Time.deltaTime;
    }

    //射撃制御
    void Shot()
    {
        var bulletInstance = GameObject.Instantiate(bulletPre, shotpoint.position, shotpoint.rotation) as GameObject;
        bulletInstance.GetComponent<Rigidbody>().AddForce(bulletInstance.transform.forward * shotpower);
        Destroy(bulletInstance, lifetime);
        shotlag = 0;
        Destroy(bulletInstance, lifetime);
    }
}
