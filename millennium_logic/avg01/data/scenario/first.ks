;プラグイン
;[loadjs storage="filter_time.js"]
[loadjs storage="disable_context_menu.js"]

;メニューボタン非表示
[hidemenubutton]
[layopt layer="message0" visible="false"]
[layopt layer="2" visible="true"]
[layopt layer="1" visible="true"]

[iscript]
var userAgent = navigator.userAgent.toLowerCase();
if (userAgent.indexOf('iphone') > -1 || userAgent.indexOf('ipad') > -1 || userAgent.indexOf('ipod') > -1 || (userAgent.indexOf('macintosh') > -1 && 'ontouchend' in document)) {
    f.platform_type = 'ios';
} else if (userAgent.indexOf('android') > -1) {
    f.platform_type = 'android';
} else {
    f.platform_type = 'other';
}
[endscript]


;初期設定-------------------------------------------------------------------
;立ち絵
;[chara_config brightness=40 talk_focus=brightness pos_mode=false time=0]
[chara_config pos_mode="false"]
[chara_config ptext="chara_name_area"]

;メッセージウィンドウ
[position layer="message0" frame="prompt.png" left="0" top="320" width="1280" visible="false" opacity="200"] 
[position layer="message0" page="fore" margint="220" marginl="170" marginr="170" marginb="60"]
[position layer="message1" left="550" top="310" width="330" height="120" visible="false" margin="0" opacity="0"] 

;ネームウィンドウの初期化
[ptext name="chara_name_area" face="SeuratProB_sub" layer="message0" color="white" size="35" bold="bold" x="170" y="480"]
[deffont size="28" face="SeuratProDB_sub"]


[layopt layer="message1" visible="true"]
[current layer="message1"]
[nowait]
tap start
[l][cm]
[endnowait]
[position layer="message1" left="150" top="410" width="330" height="120" visible="false" margin="0" opacity="0"] 
[current layer="message0"]

;[jump storage="game_title.ks"]



;シナリオ読み込み or タイトル画面読み込み---------------------------------------
[jump storage="system/init_01_intro.ks"]
;[jump storage="system/init_09_true.ks"]
;[jump storage="system/init_09_true.ks"]
;[jump storage="04_detective_part_interval.ks" target="*detective_part2_interval"]
;[jump storage="04_detective_part_interval.ks"]
;[jump storage="04_detective_part1_search.ks"]
;[jump storage="04_detective_part2_search.ks"]
;[jump storage="05_ending_momoi.ks"]
;[jump storage="06_ending_midori.ks"]
;[jump storage="07_ending_akira.ks"]
;[jump storage="08_epilogue.ks"]
;[jump storage="03.tutorial.ks"]
;[jump storage="09_true_ending.ks"]
