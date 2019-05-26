using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossController : MonoBehaviour {

    private int bossHP = 1000;

    int Damage = 10;

    public GameObject GroundGenereter;

    // Use this for initialization
    void Start()
    {
        StartCoroutine("BossMove");
    }
	
	// Update is called once per frame
	void Update ()
    {
		Debug.Log(bossHP);
	}
    private IEnumerator BossMove()
    {
        yield return new WaitForSeconds(5.0f);
        do
        {
            GameObject.Find("GroundGenereter").GetComponent<StageGenereter>().BossAttack();
            yield return new WaitForSeconds(3.0f);
        } while (true);
    }

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.tag == "Bullet")
        {
            Destroy(collision.gameObject);
        }
    }
    public int SetBossHP(int Damage)
    {
        bossHP -= Damage;
        return bossHP;
    }
}
