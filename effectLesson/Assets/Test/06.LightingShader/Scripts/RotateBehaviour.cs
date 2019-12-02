using UnityEngine;

public class RotateBehaviour : MonoBehaviour {
	void Update () {
        transform.Rotate(Vector3.up, Time.deltaTime * 100);
	}
}
