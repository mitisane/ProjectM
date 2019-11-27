
//SubShaderを二個
//Shader "Custom/Test1" {
//
//	SubShader{
//
//		Pass{
//			CGPROGRAM
//			#pragma vertex vert
//			#pragma fragment frag
//			float4 vert(float4 v:POSITION) : SV_POSITION{
//			return UnityObjectToClipPos(v);
//			}
//
//			float4 frag() : COLOR{
//			return fixed4(1,0,0,1);//赤
//			}
//			ENDCG
//
//		}
//
//	}
//
//SubShader
//{
//
//	Pass
//	{
//
//	CGPROGRAM
//	#pragma vertex vert
//	#pragma fragment frag
//	float4 vert(float4 v:POSITION) : SV_POSITION{
//	return UnityObjectToClipPos(v);
//	}
//
//	float4 frag() : COLOR{
//	return fixed4(0,1,0,1);//緑
//	}
//	ENDCG
//	}
//	}
//}
//Pass増やした
//Shader "Custom/Test1" {
//	SubShader{
//		Pass{
//		CGPROGRAM
//#pragma vertex vert
//#pragma fragment frag
//		float4 vert(float4 v:POSITION) : SV_POSITION{
//		return mul(UNITY_MATRIX_MVP,v);
//
//	}
//
//		float4 frag() : COLOR{
//		return fixed4(1,0,0,1);//赤
//	}
//		ENDCG
//
//	}
//		Pass{
//		CGPROGRAM
//#pragma vertex vert
//#pragma fragment frag
//		float4 vert(float4 v:POSITION) : SV_POSITION{
//		return mul(UNITY_MATRIX_MVP,v);
//	}
//
//		float4 frag() : COLOR{
//		return fixed4(0,1,0,1);//緑
//	}
//		ENDCG
//	}
//	}
//
//}
//modify_vertex
//Shader "Custom/Test1" {
//	SubShader{
//		Pass{
//		CGPROGRAM
//#pragma vertex vert
//#pragma fragment frag
//		float4 vert(float4 v:POSITION) : SV_POSITION{
//		//return mul(UNITY_MATRIX_MVP,v); 
//		return 0.5*v;
//	}
//
//		float4 frag() : COLOR{
//		return fixed4(1,0,0,1);//赤
//	}
//		ENDCG
//
//	}
//		Pass{
//		CGPROGRAM
//#pragma vertex vert
//#pragma fragment frag
//		float4 vert(float4 v:POSITION) : SV_POSITION{
//		return UnityObjectToClipPos(v);
//	}
//
//		float4 frag() : COLOR{
//		return fixed4(0,1,0,1);//緑
//	}
//		ENDCG
//	}
//	}
//
//}
Shader "Custom/Test1" {
	SubShader{
		Pass{
		CGPROGRAM
#pragma vertex vert
#pragma fragment frag

		struct appdata {
		float4 pos : POSITION;
	};

	float4 vert(appdata data) : POSITION{
		return mul(UNITY_MATRIX_MVP, data.pos);
	}

		float4 frag() : COLOR{
		return fixed4(1,0,0,1);//赤
	}

		ENDCG
	}
	}

}
