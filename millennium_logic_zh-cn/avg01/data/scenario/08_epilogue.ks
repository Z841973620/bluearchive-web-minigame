
;エピローグ

[bg2 position="center" storage="BG_GameDevRoom.jpg" time="2000"] 

[fadeinbgm storage="Theme_64.ogg" time="2000" volume="25"]

[wait time="600"]

[choice_button mode="1" choice1="诶，这就结束了！？不是完全没有解决案件吗！？" jump1="*jump_86" storage="08_epilogue.ks"]
*jump_86

[app name="momoi_def" pos="3"]

[talk name="momoi_def" face="def"]
[act name="momoi_def" act="greeting" wait="false"]
嗯。最开始我就说了吧？这次的游戏类型是本格推理。
[wait time="450"]
[click_next]



[choice_button mode="1" choice1="对桃井来说推理的定义是指……？" jump1="*jump_87" storage="08_epilogue.ks"]
*jump_87


[talk name="momoi_def" face="smile"]
[emo name="momoi_def" emo="respond"]
[act name="momoi_def" act="hophop" wait="false"]
总之老师得到了密码，就算是顺利过关了！
[wait time="300"]
[click_next]

[talk name="momoi_def" face="respod"]
要是说太多就剧透了，所以就不说了……
[wait time="450"]
[click_next]

[talk name="momoi_def" face="respod"]
集齐3个密码就可以得到开启最终大门的提示哦！
[wait time="450"]
[click_next]

[emo name="momoi_def" emo="twinkle"]
[talk name="momoi_def" face="smile"]
总而言之如何使用密码，就需要老师自己来专研了！
[wait time="1000"]
[l][cm]

[if exp="f.momoi_end == 'true'" ]
【桃井的密码】[r]
TASH-IZAN-0178
[elsif exp="f.midori_end == 'true'"]
【绿的密码】[r]
TASH-IZAN-0549
[elsif exp="f.akira_end == 'true'"]
【『慈爱的怪盗』的密码】[r]
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