Shader "Custom/DistortNoiseScrollShader"
{
	Properties
	{
		_MainTex("Main", 2D) = "white" {}
		_MColor("MainColor",Color) = (0.5,0.5,0.5,1)
		_XRange("X",Range(-5,5)) = 0
		_YRange("Y",Range(-5,5)) = 0
		_Brightness("Brightness", Range(0, 2)) = 1

		_NoiseTex("Noise", 2D) = "white" {}
		_Color("Color", Color) = (0.5, 0.5, 0.5, 1)
		_Speed("Speed", Range(0, 5)) = 0.7
		_NoiseAmount("NoiseAmount", Range(0, 1)) = 0.025
		_NBrightness("NBrightness", Range(0, 2)) = 1

	}

	SubShader
	{
			Tags{ "Queue" = "Transparent""RenderType" = "Transparent" }
		LOD 100

		Cull Off
		Blend One One
		Zwrite Off


		Pass
	{
		CGPROGRAM
#pragma vertex vert
#pragma fragment frag
#include "UnityCG.cginc"

		struct appdata
	{
		float4 vertex : POSITION;
		float2 uv : TEXCOORD0;
		float2 uv1 : TEXCOORD1;
		float4 color : COLOR;
	};

	struct v2f
	{
		float4 vertex : SV_POSITION;
		float2 uv : TEXCOORD0;
		float2 uv1 : TEXCOORD1;
		float4 color : COLOR;
	};

	fixed4 _Color;
	float4 _MColor;
	float _Speed;
	sampler2D _MainTex;
	float4 _MainTex_ST;
	sampler2D _NoiseTex;
	float _NoiseAmount;
	float _Brightness;
	float _NBrightness;
	float _XRange;
	float _YRange;

	v2f vert(appdata v)
	{
		v2f o = (v2f)0;
		o.uv = v.uv;
		o.color = v.color;
		o.vertex = UnityObjectToClipPos(v.vertex);
		o.uv = TRANSFORM_TEX(v.uv, _MainTex);
		return o;
	}

	fixed4 frag(v2f i) : SV_Target
	{
		float2 UVScoll = (i.uv + _Time * float2(_XRange, _YRange));
		float4 _MainTex_var = tex2D(_MainTex, TRANSFORM_TEX(UVScoll, _MainTex));
		float3 emissive = (_MainTex_var.rgb * i.color.rgb * _MColor.rgb*3.0);
		float3 finalColor = emissive;
		fixed4 finalRGBA = fixed4(finalColor, 1);

		float2 nUv = i.uv;
		nUv.y += _Time.x * _Speed;
		float4 uvNoise = 2 * tex2D(_NoiseTex, nUv) - 1;//0 - 1座標を-1 - 1に変換
		i.uv += uvNoise.xy * _NoiseAmount;
		fixed4 col = tex2D(_MainTex, i.uv);
		return col * _Color * _NBrightness+finalRGBA*_Brightness;
	}
		ENDCG
	}
	}
}
