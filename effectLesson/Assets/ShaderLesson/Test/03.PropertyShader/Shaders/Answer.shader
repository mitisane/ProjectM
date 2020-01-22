// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "ShaderLesson/03.PropertyShader/Answer" {
    Properties {
        _Color("色", Color) = (0.5, 0.5, 0.5, 1)
    }
	SubShader {
        Pass {
	        Tags { "RenderType" = "Opaque" }
        
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag

            uniform fixed4 _Color;

            float4 vert(float4 v:POSITION) : SV_POSITION {
                return UnityObjectToClipPos (v);
            }

            fixed4 frag() : SV_Target {
                return _Color;
            }
            ENDCG
        }
    }
}
