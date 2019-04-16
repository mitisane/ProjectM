// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:32724,y:32693,varname:node_4795,prsc:2|emission-6179-OUT;n:type:ShaderForge.SFN_Tex2d,id:45,x:31958,y:32784,ptovrint:False,ptlb:node_45,ptin:_node_45,varname:node_45,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-8476-UVOUT;n:type:ShaderForge.SFN_OneMinus,id:8312,x:32129,y:32784,varname:node_8312,prsc:2|IN-45-RGB;n:type:ShaderForge.SFN_Add,id:2994,x:32293,y:32784,varname:node_2994,prsc:2|A-8312-OUT,B-6360-OUT;n:type:ShaderForge.SFN_Multiply,id:6179,x:32491,y:32784,varname:node_6179,prsc:2|A-2994-OUT,B-2926-RGB;n:type:ShaderForge.SFN_Time,id:7279,x:31616,y:32884,varname:node_7279,prsc:2;n:type:ShaderForge.SFN_Slider,id:6855,x:31459,y:33021,ptovrint:False,ptlb:node_6855,ptin:_node_6855,varname:node_6855,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:8409,x:31786,y:32994,varname:node_8409,prsc:2|A-7279-T,B-6855-OUT;n:type:ShaderForge.SFN_Sin,id:7349,x:31958,y:32994,varname:node_7349,prsc:2|IN-8409-OUT;n:type:ShaderForge.SFN_RemapRange,id:5563,x:32129,y:32994,varname:node_5563,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-7349-OUT;n:type:ShaderForge.SFN_Color,id:2926,x:32129,y:33178,ptovrint:False,ptlb:node_2926,ptin:_node_2926,varname:node_2926,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:2560,x:32283,y:32994,varname:node_2560,prsc:2|A-5563-OUT,B-2926-RGB;n:type:ShaderForge.SFN_TexCoord,id:8232,x:31616,y:32744,varname:node_8232,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:8476,x:31786,y:32744,varname:node_8476,prsc:2,spu:0,spv:1|UVIN-8232-UVOUT;n:type:ShaderForge.SFN_Slider,id:6360,x:31982,y:32698,ptovrint:False,ptlb:node_6360,ptin:_node_6360,varname:node_6360,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;proporder:45-6855-2926-6360;pass:END;sub:END;*/

Shader "Shader Forge/Shader01" {
    Properties {
        _node_45 ("node_45", 2D) = "white" {}
        _node_6855 ("node_6855", Range(0, 1)) = 1
        _node_2926 ("node_2926", Color) = (1,0,0,1)
        _node_6360 ("node_6360", Range(0, 1)) = 0
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
            Blend SrcAlpha OneMinusSrcAlpha
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
            uniform sampler2D _node_45; uniform float4 _node_45_ST;
            uniform float4 _node_2926;
            uniform float _node_6360;
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
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_1700 = _Time;
                float2 node_8476 = (i.uv0+node_1700.g*float2(0,1));
                float4 _node_45_var = tex2D(_node_45,TRANSFORM_TEX(node_8476, _node_45));
                float3 emissive = (((1.0 - _node_45_var.rgb)+_node_6360)*_node_2926.rgb);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG_COLOR(i.fogCoord, finalRGBA, fixed4(0,0,0,1));
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
