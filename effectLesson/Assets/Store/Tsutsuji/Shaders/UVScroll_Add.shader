// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:32898,y:32650,varname:node_4795,prsc:2|emission-2393-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:32209,y:32542,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b33d68e8275874d4ea316190b470b988,ntxv:0,isnm:False|UVIN-3651-OUT;n:type:ShaderForge.SFN_Multiply,id:2393,x:32649,y:32750,varname:node_2393,prsc:2|A-8905-OUT,B-5293-RGB,C-5388-OUT;n:type:ShaderForge.SFN_Color,id:797,x:32209,y:32726,ptovrint:True,ptlb:Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_TexCoord,id:6112,x:31608,y:32547,varname:node_6112,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:1770,x:31399,y:32618,varname:node_1770,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1934,x:31628,y:32705,varname:node_1934,prsc:2|A-1770-T,B-6534-OUT;n:type:ShaderForge.SFN_Slider,id:6534,x:31242,y:32795,ptovrint:False,ptlb:ScrollX,ptin:_ScrollX,varname:node_6534,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-10,cur:0,max:10;n:type:ShaderForge.SFN_Multiply,id:4964,x:31695,y:32855,varname:node_4964,prsc:2|A-1770-T,B-5922-OUT;n:type:ShaderForge.SFN_Slider,id:5922,x:31368,y:32966,ptovrint:False,ptlb:ScrollY,ptin:_ScrollY,varname:node_5922,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-10,cur:-1.09472,max:10;n:type:ShaderForge.SFN_Append,id:5138,x:31866,y:32730,varname:node_5138,prsc:2|A-1934-OUT,B-4964-OUT;n:type:ShaderForge.SFN_Add,id:3651,x:31955,y:32580,varname:node_3651,prsc:2|A-6112-UVOUT,B-5138-OUT;n:type:ShaderForge.SFN_TexCoord,id:7840,x:31209,y:33103,varname:node_7840,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Clamp01,id:9780,x:32098,y:33380,varname:node_9780,prsc:2|IN-4253-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:4253,x:31917,y:33380,varname:node_4253,prsc:2|IN-7840-V,IMIN-3644-OUT,IMAX-9928-OUT,OMIN-3644-OUT,OMAX-2412-OUT;n:type:ShaderForge.SFN_Vector1,id:3644,x:31564,y:33374,varname:node_3644,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:2412,x:31583,y:33409,varname:node_2412,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:9928,x:31274,y:33529,ptovrint:False,ptlb:FadeInY,ptin:_FadeInY,varname:node_9928,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4372329,max:1;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:5819,x:31917,y:33551,varname:node_5819,prsc:2|IN-2783-OUT,IMIN-7581-OUT,IMAX-1196-OUT,OMIN-7581-OUT,OMAX-8820-OUT;n:type:ShaderForge.SFN_Vector1,id:7581,x:31683,y:33601,varname:node_7581,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:8820,x:31683,y:33675,varname:node_8820,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:1196,x:31366,y:33643,ptovrint:False,ptlb:FadeOutY,ptin:_FadeOutY,varname:_FadeInY_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4271147,max:1;n:type:ShaderForge.SFN_Clamp01,id:2499,x:32098,y:33551,varname:node_2499,prsc:2|IN-5819-OUT;n:type:ShaderForge.SFN_OneMinus,id:2783,x:31728,y:33475,varname:node_2783,prsc:2|IN-7840-V;n:type:ShaderForge.SFN_Multiply,id:5388,x:32339,y:33199,varname:node_5388,prsc:2|A-2285-OUT,B-210-OUT,C-9780-OUT,D-2499-OUT;n:type:ShaderForge.SFN_Clamp01,id:2285,x:32102,y:33043,varname:node_2285,prsc:2|IN-5894-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:5894,x:31921,y:33043,varname:node_5894,prsc:2|IN-7840-U,IMIN-3401-OUT,IMAX-5432-OUT,OMIN-3401-OUT,OMAX-4726-OUT;n:type:ShaderForge.SFN_Vector1,id:3401,x:31544,y:33069,varname:node_3401,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:4726,x:31569,y:33099,varname:node_4726,prsc:2,v1:1;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:6706,x:31921,y:33214,varname:node_6706,prsc:2|IN-1373-OUT,IMIN-3401-OUT,IMAX-5933-OUT,OMIN-3401-OUT,OMAX-4726-OUT;n:type:ShaderForge.SFN_Slider,id:5933,x:31370,y:33306,ptovrint:False,ptlb:FadeOutX,ptin:_FadeOutX,varname:_FadeOutY_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Clamp01,id:210,x:32102,y:33214,varname:node_210,prsc:2|IN-6706-OUT;n:type:ShaderForge.SFN_OneMinus,id:1373,x:31732,y:33138,varname:node_1373,prsc:2|IN-7840-U;n:type:ShaderForge.SFN_Slider,id:5432,x:31343,y:33194,ptovrint:False,ptlb:FadeInX,ptin:_FadeInX,varname:node_5432,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Tex2d,id:5293,x:32209,y:32905,ptovrint:False,ptlb:Mask,ptin:_Mask,varname:node_5293,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:fecae580b0e500044a890139f3e1feb2,ntxv:0,isnm:False|UVIN-7591-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:7591,x:31996,y:32885,varname:node_7591,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Slider,id:3265,x:32096,y:32401,ptovrint:False,ptlb:Intensity,ptin:_Intensity,varname:node_3265,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:4;n:type:ShaderForge.SFN_Multiply,id:8905,x:32469,y:32503,varname:node_8905,prsc:2|A-3265-OUT,B-6074-RGB,C-797-RGB;proporder:6074-797-6534-5922-5432-5933-9928-1196-5293-3265;pass:END;sub:END;*/

Shader "Tsutsuji/UVScroll_Add" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _TintColor ("Color", Color) = (1,1,1,1)
        _ScrollX ("ScrollX", Range(-10, 10)) = 0
        _ScrollY ("ScrollY", Range(-10, 10)) = -1.09472
        _FadeInX ("FadeInX", Range(0, 1)) = 0
        _FadeOutX ("FadeOutX", Range(0, 1)) = 0
        _FadeInY ("FadeInY", Range(0, 1)) = 0.4372329
        _FadeOutY ("FadeOutY", Range(0, 1)) = 0.4271147
        _Mask ("Mask", 2D) = "white" {}
        _Intensity ("Intensity", Range(0, 4)) = 1
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One One
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _TintColor;
            uniform float _ScrollX;
            uniform float _ScrollY;
            uniform float _FadeInY;
            uniform float _FadeOutY;
            uniform float _FadeOutX;
            uniform float _FadeInX;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform float _Intensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float4 node_1770 = _Time;
                float2 node_3651 = (i.uv0+float2((node_1770.g*_ScrollX),(node_1770.g*_ScrollY)));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_3651, _MainTex));
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float node_3401 = 0.0;
                float node_4726 = 1.0;
                float node_3644 = 0.0;
                float node_7581 = 0.0;
                float3 emissive = ((_Intensity*_MainTex_var.rgb*_TintColor.rgb)*_Mask_var.rgb*(saturate((node_3401 + ( (i.uv0.r - node_3401) * (node_4726 - node_3401) ) / (_FadeInX - node_3401)))*saturate((node_3401 + ( ((1.0 - i.uv0.r) - node_3401) * (node_4726 - node_3401) ) / (_FadeOutX - node_3401)))*saturate((node_3644 + ( (i.uv0.g - node_3644) * (1.0 - node_3644) ) / (_FadeInY - node_3644)))*saturate((node_7581 + ( ((1.0 - i.uv0.g) - node_7581) * (1.0 - node_7581) ) / (_FadeOutY - node_7581)))));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG_COLOR(i.fogCoord, finalRGBA, fixed4(0.5,0.5,0.5,1));
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
