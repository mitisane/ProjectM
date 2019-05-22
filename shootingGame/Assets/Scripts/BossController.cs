using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossController : MonoBehaviour {

    [Header("攻撃範囲")]
    public GameObject attackArea;

    // Use this for initialization
    void Start()
    {
        StartCoroutine("BossMove");
    }
	
	// Update is called once per frame
	void Update ()
    {
		
	}
    private IEnumerator BossMove()
    {
        do
        {
            BossAttack();
            yield return new WaitForSeconds(10.0f);
        } while (true);
    }
    void BossAttack()
    {
        Debug.Log("a");
        GameObject enemy = Instantiate(attackArea) as GameObject;
        float x = Random.Range(3, -3);
        enemy.transform.position = new Vector3(x, 0, 5);
        Destroy(enemy,2.0f);
    }
}
