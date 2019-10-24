Shader "Custom/UVShader"
{
	Properties
	{
	_MainTex("MainTex", 2D) = "white" {}
	_TintColor("Color", Color) = (0.5,0.5,0.5,1)
	_XRange("X",Range(-1,1))=0
	_YRange("Y",Range(-1,1))=0

	}
	SubShader
	{
	Tags{"IgnoreProjector" = "True""Queue" = "Transparent""RenderType" = "Transparent"}
		
	Pass
	
	{
		Name "FORWARD"
		Tags{
		"LightMode" = "ForwardBase"
	}
		Blend One One
		ZWrite Off

		CGPROGRAM
#pragma vertex vert
#pragma fragment frag
#include "UnityCG.cginc"
		uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
	uniform float4 _TintColor;
	struct VertexInput {
		float4 vertex : POSITION;
		float2 texcoord0 : TEXCOORD0;
		float4 vertexColor : COLOR;
	};
	struct VertexOutput {
		float4 pos : SV_POSITION;
		float2 uv0 : TEXCOORD0;
		float4 vertexColor : COLOR;
		//UNITY_FOG_COORDS(1)
	};
	VertexOutput vert(VertexInput v) {
		VertexOutput o = (VertexOutput)0;
		o.uv0 = v.texcoord0;
		o.vertexColor = v.vertexColor;
		o.pos = UnityObjectToClipPos(v.vertex);
		UNITY_TRANSFER_FOG(o,o.pos);
		return o;
	}

	float _XRange;
	float _YRange;

	float4 frag(VertexOutput i) : COLOR{
		////// Lighting:
		////// Emissive:
		float4 node_2486 = _Time;
		float2 UVScoll = (i.uv0 + node_2486 *float2(_XRange,_YRange));
		float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(UVScoll, _MainTex));
		float3 emissive = (_MainTex_var.rgb*i.vertexColor.rgb*_TintColor.rgb*3.0);
		float3 finalColor = emissive;
		fixed4 finalRGBA = fixed4(finalColor,1);
		//UNITY_APPLY_FOG_COLOR(i.fogCoord, finalRGBA, fixed4(0,0,0,1));
		return finalRGBA;
	}
		ENDCG
	}
	}
}
