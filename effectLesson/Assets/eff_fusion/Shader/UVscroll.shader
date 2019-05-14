// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:32724,y:32693,varname:node_4795,prsc:2|emission-9440-OUT,alpha-2393-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:32250,y:32599,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b3cd3a87ae816324987c05398d34dc1a,ntxv:0,isnm:False|UVIN-7534-OUT;n:type:ShaderForge.SFN_Multiply,id:2393,x:32495,y:32793,varname:node_2393,prsc:2|A-6074-A,B-2053-A;n:type:ShaderForge.SFN_VertexColor,id:2053,x:32235,y:32772,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Time,id:7563,x:31560,y:32825,varname:node_7563,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5451,x:31747,y:32825,varname:node_5451,prsc:2|A-7563-T,B-4087-OUT;n:type:ShaderForge.SFN_TexCoord,id:4318,x:31676,y:32656,varname:node_4318,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ValueProperty,id:4087,x:31560,y:32970,ptovrint:False,ptlb:UVscroll,ptin:_UVscroll,varname:node_4087,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Add,id:817,x:31934,y:32825,varname:node_817,prsc:2|A-4318-V,B-5451-OUT;n:type:ShaderForge.SFN_Append,id:7534,x:32089,y:32599,varname:node_7534,prsc:2|A-4318-U,B-817-OUT;n:type:ShaderForge.SFN_Multiply,id:9440,x:32495,y:32666,varname:node_9440,prsc:2|A-6074-RGB,B-2053-RGB,C-2053-A;proporder:6074-4087;pass:END;sub:END;*/

Shader "Shader Forge/UVscroll" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _UVscroll ("UVscroll", Float ) = 1
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
            uniform float _UVscroll;
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
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_7563 = _Time;
                float2 node_7534 = float2(i.uv0.r,(i.uv0.g+(node_7563.g*_UVscroll)));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_7534, _MainTex));
                float3 emissive = (_MainTex_var.rgb*i.vertexColor.rgb*i.vertexColor.a);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,(_MainTex_var.a*i.vertexColor.a));
                UNITY_APPLY_FOG_COLOR(i.fogCoord, finalRGBA, fixed4(0,0,0,1));
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
