using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class BossController : MonoBehaviour {

    private int bossHP = 100;

    int damage = 5;

    public Slider bossslider;

    // Use this for initialization
    void Start()
    {
        bossslider.maxValue = bossHP;
        StartCoroutine("BossMove");
    }
	
	// Update is called once per frame
	void Update ()
    {
		Debug.Log(bossHP);
        if (bossHP <= 0)
        {
            Destroy(gameObject);
            SceneManager.LoadScene("clear");
        }
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
        bossslider.value = bossHP;
        return bossHP;
    }
}
