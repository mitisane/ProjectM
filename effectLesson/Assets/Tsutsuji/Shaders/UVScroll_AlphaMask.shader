// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:False,qofs:0,qpre:3,rntp:3,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:33050,y:32393,varname:node_4795,prsc:2|emission-3935-OUT,alpha-3875-R,clip-5486-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:32214,y:32608,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b33d68e8275874d4ea316190b470b988,ntxv:0,isnm:False|UVIN-7084-OUT;n:type:ShaderForge.SFN_TexCoord,id:6112,x:31608,y:32547,varname:node_6112,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:1770,x:31399,y:32618,varname:node_1770,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1934,x:31628,y:32705,varname:node_1934,prsc:2|A-1770-T,B-6534-OUT;n:type:ShaderForge.SFN_Slider,id:6534,x:31242,y:32795,ptovrint:False,ptlb:ScrollX,ptin:_ScrollX,varname:node_6534,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-5,cur:0,max:5;n:type:ShaderForge.SFN_Multiply,id:4964,x:31628,y:32835,varname:node_4964,prsc:2|A-1770-T,B-5922-OUT;n:type:ShaderForge.SFN_Slider,id:5922,x:31242,y:32891,ptovrint:False,ptlb:ScrollY,ptin:_ScrollY,varname:node_5922,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-5,cur:-1,max:5;n:type:ShaderForge.SFN_Slider,id:5407,x:32015,y:32971,ptovrint:False,ptlb:AlphaClip,ptin:_AlphaClip,varname:node_5407,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5706834,max:1;n:type:ShaderForge.SFN_Multiply,id:5486,x:32752,y:32833,varname:node_5486,prsc:2|A-7376-OUT,B-8181-OUT;n:type:ShaderForge.SFN_Multiply,id:7132,x:32347,y:32348,varname:node_7132,prsc:2|A-8592-RGB,B-6074-RGB;n:type:ShaderForge.SFN_FaceSign,id:7965,x:32440,y:32477,varname:node_7965,prsc:2,fstp:0;n:type:ShaderForge.SFN_Color,id:8592,x:31971,y:32285,ptovrint:False,ptlb:BackColor,ptin:_BackColor,varname:node_8592,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5294118,c2:0.5294118,c3:0.5294118,c4:1;n:type:ShaderForge.SFN_Lerp,id:5819,x:32618,y:32320,varname:node_5819,prsc:2|A-7132-OUT,B-8143-OUT,T-7965-VFACE;n:type:ShaderForge.SFN_ToggleProperty,id:3001,x:32349,y:32640,ptovrint:False,ptlb:DoubleSide,ptin:_DoubleSide,varname:node_3001,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_Tex2d,id:470,x:32066,y:32774,ptovrint:False,ptlb:NoiseMask,ptin:_NoiseMask,varname:node_470,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:dbaedf2ceb0e4ad4285e7424b74fd8c3,ntxv:0,isnm:False|UVIN-7084-OUT;n:type:ShaderForge.SFN_Subtract,id:7376,x:32544,y:32858,varname:node_7376,prsc:2|A-470-R,B-3725-OUT;n:type:ShaderForge.SFN_RemapRange,id:3725,x:32376,y:32904,varname:node_3725,prsc:2,frmn:1,frmx:0,tomn:-1,tomx:1|IN-5407-OUT;n:type:ShaderForge.SFN_Color,id:1971,x:31954,y:32458,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1971,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:8143,x:32301,y:32477,varname:node_8143,prsc:2|A-1971-RGB,B-6074-RGB;n:type:ShaderForge.SFN_Lerp,id:8181,x:32630,y:32586,varname:node_8181,prsc:2|A-7965-VFACE,B-7719-OUT,T-3001-OUT;n:type:ShaderForge.SFN_Vector1,id:7719,x:32480,y:32679,varname:node_7719,prsc:2,v1:1;n:type:ShaderForge.SFN_Append,id:3103,x:31783,y:32756,varname:node_3103,prsc:2|A-1934-OUT,B-4964-OUT;n:type:ShaderForge.SFN_Add,id:7084,x:31932,y:32624,varname:node_7084,prsc:2|A-6112-UVOUT,B-3103-OUT;n:type:ShaderForge.SFN_Tex2d,id:3875,x:32903,y:33084,ptovrint:False,ptlb:Mask,ptin:_Mask,varname:node_3875,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:4c601a57cd3eecf44bdfe62b569fbc92,ntxv:0,isnm:False|UVIN-1892-OUT;n:type:ShaderForge.SFN_Slider,id:9002,x:32191,y:33296,ptovrint:False,ptlb:MaskOffsetX,ptin:_MaskOffsetX,varname:node_9002,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_TexCoord,id:7729,x:32458,y:33104,varname:node_7729,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Slider,id:9126,x:32191,y:33417,ptovrint:False,ptlb:MaskOffsetY,ptin:_MaskOffsetY,varname:node_9126,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Append,id:3383,x:32545,y:33292,varname:node_3383,prsc:2|A-9002-OUT,B-9126-OUT;n:type:ShaderForge.SFN_Add,id:1892,x:32698,y:33104,varname:node_1892,prsc:2|A-7729-UVOUT,B-3383-OUT;n:type:ShaderForge.SFN_Multiply,id:3935,x:32820,y:32364,varname:node_3935,prsc:2|A-4664-OUT,B-5819-OUT;n:type:ShaderForge.SFN_Slider,id:4664,x:32348,y:32204,ptovrint:False,ptlb:Intensity,ptin:_Intensity,varname:node_4664,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:3;proporder:6074-1971-8592-6534-5922-5407-3001-470-3875-9002-9126-4664;pass:END;sub:END;*/

Shader "Tsutsuji/UVScroll_AlphaMask" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _Color ("Color", Color) = (1,1,1,1)
        _BackColor ("BackColor", Color) = (0.5294118,0.5294118,0.5294118,1)
        _ScrollX ("ScrollX", Range(-5, 5)) = 0
        _ScrollY ("ScrollY", Range(-5, 5)) = -1
        _AlphaClip ("AlphaClip", Range(0, 1)) = 0.5706834
        [MaterialToggle] _DoubleSide ("DoubleSide", Float ) = 0
        _NoiseMask ("NoiseMask", 2D) = "white" {}
        _Mask ("Mask", 2D) = "white" {}
        _MaskOffsetX ("MaskOffsetX", Range(-1, 1)) = 0
        _MaskOffsetY ("MaskOffsetY", Range(-1, 1)) = 0
        _Intensity ("Intensity", Range(0, 3)) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="Transparent"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _ScrollX;
            uniform float _ScrollY;
            uniform float _AlphaClip;
            uniform float4 _BackColor;
            uniform fixed _DoubleSide;
            uniform sampler2D _NoiseMask; uniform float4 _NoiseMask_ST;
            uniform float4 _Color;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform float _MaskOffsetX;
            uniform float _MaskOffsetY;
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
                float4 node_1770 = _Time;
                float2 node_7084 = (i.uv0+float2((node_1770.g*_ScrollX),(node_1770.g*_ScrollY)));
                float4 _NoiseMask_var = tex2D(_NoiseMask,TRANSFORM_TEX(node_7084, _NoiseMask));
                clip(((_NoiseMask_var.r-(_AlphaClip*-2.0+1.0))*lerp(isFrontFace,1.0,_DoubleSide)) - 0.5);
////// Lighting:
////// Emissive:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_7084, _MainTex));
                float3 emissive = (_Intensity*lerp((_BackColor.rgb*_MainTex_var.rgb),(_Color.rgb*_MainTex_var.rgb),isFrontFace));
                float3 finalColor = emissive;
                float2 node_1892 = (i.uv0+float2(_MaskOffsetX,_MaskOffsetY));
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(node_1892, _Mask));
                fixed4 finalRGBA = fixed4(finalColor,_Mask_var.r);
                UNITY_APPLY_FOG_COLOR(i.fogCoord, finalRGBA, fixed4(0,0,0,1));
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
