Shader "Custom/UVShader02"
{
	Properties
	{
		_Color("Color", Color) = (0.5,0.5,0.5,1)
		_MainTex("MainTex", 2D) = "white" {}
		_XRange("X",Range(-5,5)) = 0
		_YRange("Y",Range(-5,5)) = 0
	}
		SubShader
		{
		Tags { "Queue" = "Transparent""RenderType" = "Transparent" }

			Blend One One
			Zwrite Off

			CGPROGRAM
	#pragma vertex vert
	#pragma fragment frag
	#include "UnityCG.cginc"

			sampler2D _MainTex;
			float4 _Color;
			uniform float4 _MainTex_ST;
			float _XRange;
			float _YRange;

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
				float4 color : COLOR;
			};

			struct v2f
			{
				float4 pos : SV_POSITION;
				float2 uv : TEXCOORD0;
				float4 color : COLOR;
			};

			v2f vert(appdata v)
			{
				v2f o = (v2f)0;
				o.uv = v.uv;
				o.color = v.color;
				o.pos = UnityObjectToClipPos(v.vertex);
				return o;
			}

			float4 frag(v2f i): COLOR{

				float2 UVScoll = (i.uv + _Time * float2(_XRange, _YRange));
				float4 _MainTex_var = tex2D(_MainTex, TRANSFORM_TEX(UVScoll, _MainTex));
				float3 emissive = (_MainTex_var.rgb * i.color.rgb * _Color.rgb*3.0);
				float3 finalColor = emissive;
				fixed4 finalRGBA = fixed4(finalColor, 1);
				return _MainTex_var;
			}
			ENDCG
		}
		}
	}

