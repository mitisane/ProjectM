// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:33929,y:32525,varname:node_4795,prsc:2|emission-3820-OUT,alpha-7100-OUT;n:type:ShaderForge.SFN_Tex2d,id:4736,x:33465,y:32536,ptovrint:False,ptlb:main,ptin:_main,varname:node_4736,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b3cd3a87ae816324987c05398d34dc1a,ntxv:0,isnm:False|UVIN-3785-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4413,x:32746,y:32794,ptovrint:False,ptlb:uv_scroll,ptin:_uv_scroll,varname:node_4413,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.8;n:type:ShaderForge.SFN_Time,id:7642,x:32746,y:32645,varname:node_7642,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3085,x:32938,y:32677,varname:node_3085,prsc:2|A-7642-T,B-4413-OUT;n:type:ShaderForge.SFN_TexCoord,id:9782,x:32828,y:32449,varname:node_9782,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Append,id:3785,x:33258,y:32518,varname:node_3785,prsc:2|A-9782-U,B-7897-OUT;n:type:ShaderForge.SFN_Add,id:7897,x:33088,y:32540,varname:node_7897,prsc:2|A-9782-V,B-3085-OUT;n:type:ShaderForge.SFN_VertexColor,id:113,x:33480,y:32736,varname:node_113,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3820,x:33718,y:32568,varname:node_3820,prsc:2|A-4736-RGB,B-113-RGB,C-113-A;n:type:ShaderForge.SFN_Multiply,id:7100,x:33721,y:32710,varname:node_7100,prsc:2|A-4736-A,B-113-A;proporder:4736-4413;pass:END;sub:END;*/

Shader "FT/UVscroll_simple" {
    Properties {
        _main ("main", 2D) = "white" {}
        _uv_scroll ("uv_scroll", Float ) = 0.8
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
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
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _main; uniform float4 _main_ST;
            uniform float _uv_scroll;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float4 node_7642 = _Time;
                float2 node_3785 = float2(i.uv0.r,(i.uv0.g+(node_7642.g*_uv_scroll)));
                float4 _main_var = tex2D(_main,TRANSFORM_TEX(node_3785, _main));
                float3 emissive = (_main_var.rgb*i.vertexColor.rgb*i.vertexColor.a);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,(_main_var.a*i.vertexColor.a));
                UNITY_APPLY_FOG_COLOR(i.fogCoord, finalRGBA, fixed4(0,0,0,1));
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
