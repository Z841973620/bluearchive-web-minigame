[nolog]
[iscript]
// 例如当前：/Beatgame2026/scene-01/?data=xxxx
var url = new URL(window.location.href);
// 取出查询参数（"?data=xxxx" 或 "?auth=xxxx"）
var search = url.search;   // 包含前面的 "?"，如果没有则为 ""

var pathname = url.pathname;   // "/Beatgame2026/scene-01/"
var m = pathname.match(/scene-(\d+)/);
if (m) {
  var sceneId = m[1];
  window.sessionStorage.setItem('ba_drum_minigame_scene_id', sceneId);
}

// 拼 exit_url：指向 /Beatgame2026，并带上原来的 query
sf.exit_url = url.origin + '/Beatgame2026/' + search;
// 调试用
[endscript]

[fadeoutbgm time="1000" wait="false"]
[chara_hide_all time="0" wait="false"]
[free_filter layer="base"]
[free name="upper" layer="fix"]
[reset_camera]
[layopt layer="fix" visible="false"]
[layopt layer="message0" visible="false"]
[bg2 position="center" storage="black.jpg" time="10" wait="true"] 
[scene_change_end]
[glyph folder="data/image" anim="bounce" time="500" width="40" marginb="-4"]
[position layer="message1" left="340" top="310" width="800" height="120" visible="false" margin="0" opacity="0"] 
[layopt layer="message1" visible="true"]
[current layer="message1"]
[nowait]

[web url="&sf.exit_url"]