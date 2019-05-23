using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossController : MonoBehaviour {

    public int Bosshp = 1000;

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
            Bosshp -= Damage;
            Debug.Log(Bosshp);
            Destroy(collision.gameObject);
            if (0 >= Bosshp)
            {
                Destroy(gameObject);
            }
        }
    }
}
