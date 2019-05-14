using UnityEngine;
using System.Collections;

public class collisionEffects : MonoBehaviour
{
    private ParticleSystem particle;

    // Use this for initialization
    void Start()
    {
        particle = this.GetComponent<ParticleSystem>();

        particle.Stop();
    }

    // Update is called once per frame
    void Update()
    {
    }

    void OnCollisionEnter(Collision collision)
    {
        if (Time.timeSinceLevelLoad > 10.0f & Time.timeSinceLevelLoad < 50.0f)
        {
            if (collision.gameObject.tag == "Cube")
            {
                particle.Play(); //パーティクルの再生
            }
        }
    }
}