// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "ShaderLesson/05.TransparencyShader/Answer" {
    Properties {
        _MainTex("テクスチャ", 2D) = "white" { }
    }

	SubShader {
        Pass {
	        Tags { "RenderType" = "Transparent" "Queue"="Transparent" }
            Blend SrcAlpha OneMinusSrcAlpha

            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            
            uniform sampler2D _MainTex;
            uniform fixed4 _MainTex_ST;

            struct appdata {
                float4 vertex : POSITION;
                float4 texcoord : TEXCOORD0;
            };

            struct v2f {
                float4 pos : SV_POSITION;
                float2 uv : TEXCOORD0;
            };
        
            v2f vert (appdata v) {
                v2f o;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.uv = TRANSFORM_TEX (v.texcoord, _MainTex);
                return o;
            }

            fixed4 frag(v2f v) : SV_Target {
                fixed4 c = tex2D(_MainTex, v.uv);
                if(c.r + c.g + c.b > 2) {
                    discard;  
                }
                return tex2D(_MainTex, v.uv);
            }
            ENDCG
        }
    }
}
