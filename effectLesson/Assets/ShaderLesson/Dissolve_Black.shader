Shader "Custom/Dissolve_Black"
{
	Properties //マテリアルのインスペクターに表示する設定。
	{
		_MainTex("NoiseTexture", 2D) = "Black" {} //ディゾルブ表現用のノイズテクスチャを指定。お好みでどうぞ。
		_ScrollFadeOut("_ScrollFadeOut", 2D) = "Black" {} //UVスクロール時のフェードアウトを白黒グラデ画像で指定。お好みで。　
		_FireAlpha("FireAlpha", Range(0,10)) = 10 //炎全体の透明度(兼、Emissionの強さ)。下げて消える。上げて強く光る。
	}


		SubShader //シェーダーの実行単位。シェーダー宣言内に複数記述可能。Unityが各SubShaderの実行条件からどれを実行するか判断。
	{
		Tags{ "RenderType" = "Transparent" "Queue" = "Transparent" } //透過のFXなので、不透明メッシュの後に描画。
		Cull Off //ポリゴンのどちら側をカリングする（描画しない）か制御。Offで両面描画。お好みで片面のみでも。
		ZWrite Off //透過のFXを描く場合、ZWrite Offを設定。
		Blend One One //加算合成。

		Pass //実行される処理内容
	{
		CGPROGRAM //ここからENDCGまでHLSL言語として扱う。(通称:スニペット)
#pragma vertex vert //頂点シェーダー関数を"vert"という名前で使う。(通称:プリプロセッサディレクティブ)
#pragma fragment frag //フラグメントシェーダーメソッドを"frag"という名前で使う。(通称: 上記と同じ)
#include "UnityCG.cginc" //シェーダー記述で頻出する定義済み変数やヘルパー関数の外部コードを参照する。(通称: include構文)

				  //【重要ポイント①】appdata構造体とCustom Vertex Streamのセマンティクスを合致させる

		struct appdata //頂点シェーダー関数"vert()"に入力する、各頂点の情報(通称:appdata構造体、入力セマンティクス) 
	{
		float4 vertex : POSITION; //① 頂点座標(:POSITION)。
		float4 color : COLOR; //②頂点色(:COLOR) 
		float2 uv : TEXCOORD0; //③テクスチャ座標(:TEXCOORD0)
		float4 customData : TEXCOORD1; //④CustomDataモジュールからの入力枠(:TEXCOORD1)
									   //TEXCOORDはテクスチャーコーディネートの略で、入力セマンティクスはTEXCOORD0-3まで持てます。
									   //TEXCOORDn、1つにつき、xyzwの4つの値が格納できます。                
	};

	struct v2f //頂点シェーダー関数"vert()"から出力される戻り値(通称:v2f構造体、出力セマンティクス)
	{
		//ここも、上記appdata構造体と合致させます。
		float4 vertex : SV_POSITION; //出力セマンティクスでは"SV_POSITION"と記述する。SVはシステムバリューの略だそうです。
		float4 color : COLOR;
		float2 uv : TEXCOORD0;
		float4 customData : TEXCOORD1; //肝心のcustomDataも忘れずに。
	};

	//冒頭のPropatiesを後述の関数、"vert"と"frag"に渡す。
	sampler2D _MainTex;
	float4 _MainTex_ST;
	sampler2D _ScrollFadeOut;
	float _FireAlpha;

	//【重要ポイント②】頂点シェーダー関数内で、customDataを使う。
	v2f vert(appdata v)
	{
		v2f o; //戻り値を"o"と定義。この"o"が上記の"v2f構造体"。
		o.customData = v.customData; //v2f構造体のcustomDataに、appdata構造体のcustomDataを渡す。 

									 //炎メッシュの揺らぎ表現
									 //以下の様に"customData.z"と記述してShurikenのCustomDataモジュールの値をシェーダーに渡す。
									 //customDataに限らず、"変数名.xyzw"といった記法でベクトルの各値にアクセスできる。(通称: スウィズル演算子)
		float WaveSpeed = v.customData.z;
		float WaveAmount = v.customData.w;
		float WaveDistance = 0.1;
		v.vertex.x += sin(_Time.y * WaveSpeed + v.vertex.y * WaveAmount) * WaveDistance;

		o.vertex = UnityObjectToClipPos(v.vertex);
		o.uv = TRANSFORM_TEX(v.uv, _MainTex);
		o.color = v.color;

		return o;
	}

	//【重要ポイント③】フラグメントシェーダー関数内で、customDataを使う。
	fixed4 frag(v2f i) : SV_Target
	{
		float2 uv = i.uv;
		uv.y = i.uv.y + i.customData.x;

		fixed4 fadeout = tex2D(_ScrollFadeOut, uv); //UVスクロール時のフェードアウト画像
		fixed4 noise = tex2D(_MainTex, uv) * i.color; //ノイズ画像にStartColorを乗算              
		float fadednoise = tex2D(_MainTex, uv) * fadeout;

		//ディゾルブ表現
		float _DissolveThreshold = i.customData.y; //customData.yの値をディゾルブの閾値にする。
		if (fadednoise < _DissolveThreshold)
			discard; //閾値より小さい値を消す

		return noise * -0.5*i.color.a * _FireAlpha;//最後にnoiseに頂点カラーのアルファと炎全体の透明度(兼、Emissionの強さ)を乗算。
	}
		ENDCG
	}
	}
}

