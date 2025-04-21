
;エピローグ

[bg2 position="center" storage="BG_GameDevRoom.jpg" time="2000"] 

[fadeinbgm storage="Theme_64.ogg" time="2000" volume="25"]

[wait time="600"]

[choice_button mode="1" choice1="えっ、これで終わりなの！？そもそも解決してなくない！？" jump1="*jump_86" storage="08_epilogue.ks"]
*jump_86

[app name="momoi_def" pos="3"]

[talk name="momoi_def" face="def"]
[act name="momoi_def" act="greeting" wait="false"]
うん。だから最初に言ったでしょ？今回は本格ミステリーだって。
[wait time="450"]
[click_next]



[choice_button mode="1" choice1="モモイにとってミステリーの定義とは……？" jump1="*jump_87" storage="08_epilogue.ks"]
*jump_87


[talk name="momoi_def" face="smile"]
[emo name="momoi_def" emo="respond"]
[act name="momoi_def" act="hophop" wait="false"]
とにかくパスワードはゲットできたし、クリアはクリアだよ！
[wait time="300"]
[click_next]

[talk name="momoi_def" face="respod"]
詳しく話すとネタバレになっちゃうから言わないけど……
[wait time="450"]
[click_next]

[talk name="momoi_def" face="respod"]
3つ集めると最後の扉を開くヒントになるよ！
[wait time="450"]
[click_next]

[emo name="momoi_def" emo="twinkle"]
[talk name="momoi_def" face="smile"]
とにかくそのパスワードをどう使うかは、先生自身で考えてみてね！
[wait time="1000"]
[l][cm]

[if exp="f.momoi_end == 'true'" ]
【モモイのパスワード】[r]
TASH-IZAN-0178
[elsif exp="f.midori_end == 'true'"]
【ミドリのパスワード】[r]
TASH-IZAN-0549
[elsif exp="f.akira_end == 'true'"]
【白いお姉さんのパスワード】[r]
TASH-IZAN-0273[r]
[endif]

[wait time="1000"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]

[wait time="600"]
[fadeoutbgm time="500"]
[unload all_sound="true"]
[jump storage="game_title.ks"]
;[パスワードの表示]