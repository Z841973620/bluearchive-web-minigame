;一番最初に呼び出されるファイル
;[loadjs storage="disable_context_menu.js"]
[title name="【蔚蓝档案】蔚然春风临 兰心臻情意"]
[clearstack]
[clearfix]

[hidemenubutton]
[loadjs storage="disable_context_menu.js"]

;ゲームに必要なライブラリ読み込み
[call storage="system/init_game.ks"]
;----------------------------------------------------------------------------

[position layer="message1" left="360" top="250" width="800" height="120" visible="false" margin="0" opacity="0"] 
[layopt layer="2" visible="true"]
[layopt layer="1" visible="true"]
[layopt layer="message1" visible="true" ]
[current layer="message1"]
[nolog]

;メッセージウィンドウ

[position layer="message0" frame="prompt.png" left="0" top="486" width="1280" visible="false" opacity="255"] 
[position layer="message0" page="fore" margint="80" marginl="110" marginr="130" marginb="70"]

[chara_config pos_mode="false" ptext="chara_name_area"]

;メッセージウィンドウ
[position layer="message0" frame="prompt.png" left="0" top="320" width="1280" visible="false" opacity="200"] 
[position layer="message0" page="fore" margint="220" marginl="170" marginr="180" marginb="60"]

;ネームウィンドウの初期化
[ptext name="chara_name_area" face="SeuratProB_sub" layer="message0" color="white" size="35" x="170" y="480"]
[deffont size="32" face="SeuratProB_sub" color="white"]


[layopt layer="message1" visible="true"]
[current layer="message1"]
[glyph folder="data/image" anim="bounce" time="500" width="40" marginb="-4"]

[wait time="3000"]

[iscript]
    $(document).ready(function() {
        $(".loadingWrap").fadeOut(500, function() {
            $(this).remove(); 
        });
    });
[endscript]


[cm]
点击开始剧情
[l][cm]
[endnowait]
[position layer="message1" left="150" top="410" width="330" height="120" visible="false" margin="0" opacity="0"] 
[current layer="message0"]

[glyph line="../../../data/image/nextpage2.gif" anim="bounce" time="500" width="50" fix="true" layer="fix" left="1100" top="680"]

[endnolog]

@jump storage="meishijinxiang.ks"
[s]

