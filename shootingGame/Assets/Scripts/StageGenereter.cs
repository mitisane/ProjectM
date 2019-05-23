using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StageGenereter : MonoBehaviour {

    int[,] map = new int[25,7];

    public GameObject[] mapchip;

	// Use this for initialization
	void Start () {
        MapInitialize();
        mapchipPlacement();
    }
	
	// Update is called once per frame
	void Update () {
	}
    //マップ配列初期化
    void MapInitialize()
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
}
