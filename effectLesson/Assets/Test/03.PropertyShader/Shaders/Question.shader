// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "ShaderLesson/03.PropertyShader/Question" {
    Properties {
        _Intensity("色の強さ", Float) = 1.0
    }

	SubShader {
        Pass {
	        Tags { "RenderType" = "Opaque" }
        
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
           
            uniform fixed _Intensity;

            float4 vert(float4 v:POSITION) : SV_POSITION {
                return UnityObjectToClipPos (v);
            }

            fixed4 frag() : SV_Target {
                return fixed4(_Intensity, 0, 0, 1.0);
            }
            ENDCG
        }
    }
}
