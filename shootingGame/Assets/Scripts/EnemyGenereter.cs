using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyGenereter : MonoBehaviour {


    [Header("敵prefab")]
    public GameObject EnemyPre;
    [Header("生成速度")]
    public float span = 1.0f;

	// Use this for initialization
	void Start () {
        StartCoroutine("Emergence");
	}
	
	// Update is called once per frame
	void Update () {
    }
    private IEnumerator Emergence()
    {
        do
        {
            Generate();
            yield return new WaitForSeconds(span);
        } while (true);
    }

    void Generate()
    {
        GameObject enemy = Instantiate(EnemyPre) as GameObject;
        float x = Random.Range(3, -3);
        enemy.transform.position = new Vector3(x, 0, 14);
    }

}
