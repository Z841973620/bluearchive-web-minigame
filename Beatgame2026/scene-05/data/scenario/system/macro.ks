[iscript]
f.scHeight = TG.config.scHeight;
f.scWidth = TG.config.scWidth;
f.wait_time = 0;
f.global_wait = 'false';
// 関数の定義
// X秒後指定したnameを削除--------------------------------------------------
f.deleteElement = function(name, time) {
    setTimeout(() => {
        const elementToRemove = document.querySelector(name);
        if (elementToRemove) {
            // 修正: parentElement を elementToRemove.parentNode に変更
            elementToRemove.parentNode.removeChild(elementToRemove);
        }
    }, time);
};
//---------------------------------------------------------------------------
[endscript]

;暗転して背景変更
[macro name="bg_effect"]
       [if exp="(mp.effect||'blackout') == 'blackout'"]
              [mask time="%time|1000"]
              [bg2 height="899" width="1280"  storage="%storage" time="0"] 
              [mask_off time="%time_off|1000"]
       [endif]
       [clearstack stack="if"]
[endmacro]

[macro name="app_all"]   
    [chara_show name="justyA" width="800" left="-230" top="80" wait="false" time="100"]
    [chara_show name="justyB" width="800" left="400" top="80" wait="true" time="100"]
    [wait time="300"]
[endmacro]

;手紙
[macro name="text_center"]
	[ptext layer="2" name="align_ct_h" x=%x y=%y size="30"  color="0xffffff" time="1000" text=%text]
	[wait time="600"]	
[endmacro]

[macro name="clear_text"]
	[freeimage layer="2" time="500"]
[endmacro]

;シーンの切り替え
[macro name="scene_change_start"]
	[mask time="%time|1200" effect="fadeIn" color="%color|0x000000"]
	[chara_hide_all time="200" wait="true"]
	[wait time="400"]
	[hide_message_window]
	[clear_text]
[endmacro]
[macro name="scene_change_end"]
	[wait time="200"]
	[mask_off time="%time|800" effect="fadeOut"]
[endmacro]

[macro name="scene_change_start_white"]
	[mask time="%time|800" effect="fadeIn" color="0xFFFFFF"]
	[chara_hide_all time="200" wait="true"]
	[wait time="400"]
	[hide_message_window]
	[clear_text]
[endmacro]

;メッセージウィンドウを非表示にする

[macro name="show_message_window"]
	[layopt  layer="message0"  visible="true"  ]
	[layopt  layer="fixlayer"  visible="true"  ]
[endmacro]

;メッセージウィンドウを表示する
[macro name="hide_message_window"]
	[layopt  layer="message0"  visible="false"  ]
[endmacro]