using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class SceneManeger : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {

	}
    public void ButtonClickedMain()
    {
        SceneManager.LoadScene("main");
    }
    public void ButtonClickedTitle()
    {
        SceneManager.LoadScene("title");
    }
    public void ButtonClickedOver()
    {
        SceneManager.LoadScene("gameover");
    }
    public void ButtonClicledClear()
    {
        SceneManager.LoadScene("clear");
    }
}
