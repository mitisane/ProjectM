using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StageGenereter : MonoBehaviour {

    int[,] map = new int[25,7];

    public GameObject[] mapchip;

    float x;

    [Header("攻撃範囲")]
    public GameObject attackArea;

    float TimeCount = 0;

    int rnd;
    // Use this for initialization
    void Start () {
        MapInitialize();
        mapchipPlacement();
    }
	
	// Update is called once per frame
	void Update () {
        rnd =Random.Range(0, 7);
        TimeCount+= Time.deltaTime;
    }
    //マップ配列初期化
    public void MapInitialize()
    {
        int yLength = map.GetLength(0);
        int xLength = map.GetLength(1);
        for (int j = 0; j < yLength; j++)
        {
            for (int i = 0; i < xLength; i++)
            {
                map[j, i] = 0;
            }
        }
    }
    void mapchipPlacement()
    {
        //[y,x];
        int yLength = map.GetLength(0);
        int xLength = map.GetLength(1);
        for (int j = 0; j < yLength; j++)
        {
            for (int i = 0; i < xLength; i++)
            {
                Instantiate(mapchip[map[j, i]], new Vector3(i, 0, j), Quaternion.Euler(0, 0, 0));
            }
        }
    }
    public void BossAttack()
    {
        StartCoroutine("sample");
        
    }
    IEnumerator sample()
    {
        x = rnd;
        GameObject enemy = Instantiate(attackArea) as GameObject;
        enemy.transform.position = new Vector3(x, 0.15f, 11);
        Destroy(enemy, 2.0f);
        yield return new WaitForSeconds(2.0f);
        int yLength = map.GetLength(0);
        int xLength = map.GetLength(1);
        for (int j = 0; j < yLength; j++)
        {
            map[j, 0] = 1;
            Instantiate(mapchip[map[j, 0]], new Vector3(x, 0, j), Quaternion.Euler(0, 0, 0));
        }
        x = 0;
    }
}
