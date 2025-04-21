;-----------------------------------------------------------
;------------------------------------------------------------------------------
;イントロ用ADV-1-
;背景の表示:ゲーム開発部
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
[fadeinbgm storage="Theme_64.ogg" time="3000" volume="25"]
[bg2 position="center" storage="BG_GameDevRoom.jpg" time="2000"] 

[skip_button storage="01_intro_ADV_1.ks"]

[app name="momoi_def" pos="3" wait="false"]

[talk name="momoi_def" face="def"]
老师，欢迎光临！等您好久了！
[act name="momoi_def" act="hophop"]
[wait time="450"]
[click_next]

[talk ]

[choice_button mode="1" choice1="抱歉，事情总是做不完。" jump1="*jump_01" storage="01_intro_ADV_1.ks"]
*jump_01

;先生のセリフはすべて選択肢で想定しています。
;（）はゲーム内のメイドイベでも多用されていたモノローグ扱いです。
[talk name="momoi_def" face="smile"]
[act name="momoi_def" act="shake" wait="false"]
[emo name="momoi_def" emo="upset"]
没事，不要在意……只要老师能来，我就……哐当——
[wait time="300"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]

[act name="momoi_def" act="falldownR" wait="true"]

[choice_button mode="1" choice1="没事吧！？" jump1="*jump_02" storage="01_intro_ADV_1.ks"]
*jump_02

[hide_all]

[app name="momoi_def" pos="3" from="bottom" wait="true" face="smile"]

[talk name="momoi_def" face="embarrass"]
好险好险，差点昏睡过去了。
[wait time="450"]
[click_next]

;これ以降読み込まなくなります…

[talk name="momoi_def" face="normal"]
[act name="momoi_def" act="hophop" wait="false"]
啊，我倒是还好，老师不用担心。
[wait time="450"]
[click_next]

[talk name="momoi_def" face="smile"]
[emo name="momoi_def" emo="twinkle"]
因为这是，我们努力的证明！
[wait time="1000"]
[l][cm]

[choice_button mode="1" choice1="证明？说起来其他人呢？" jump1="*jump_03" storage="01_intro_ADV_1.ks"]
*jump_03

[talk name="momoi_def" face="respond"]
啊，对了。解释一下把老师叫来的理由吧。
[wait time="300"]
[click_next]

[talk name="momoi_def" face="eyeclose"]
[act name="momoi_def" act="hophop" wait="false"]
其实就在刚才，我还在调试我们的最新作。
[wait time="300"]
[click_next]

[talk name="momoi_def" face="normal"]
为了给老师一个惊喜，所以就特意没说。
[wait time="450"]
[click_next]

[talk ]

[choice_button mode="1" choice1="最新作……！？那我可来劲了！" jump1="*jump_04" storage="01_intro_ADV_1.ks"]
*jump_04

[talk name="momoi_def" face="smile"]
[act name="momoi_def" act="hophop" wait="false"]
[emo name="momoi_def" emo="chat"]
是吧是吧！我就知道老师会这么说！
[wait time="300"]
[click_next]

[talk name="momoi_def" face="normal"]
正因如此，我决定让通宵的小绿她们先回去。
[wait time="700"]
[l][cm]

[talk name="momoi_def" face="embarrass"]
爱丽丝本来说要等老师来的……
[wait time="450"]
[click_next]

[talk name="momoi_def" face="09"]
[act name="momoi_def" act="greeting" wait="false"]
[emo name="momoi_def" emo="sweat"]
可是柚子完全瘫了，于是她就把柚子抬回房间了。
[wait time="300"]
[click_next]

[talk ]

[choice_button mode="1" choice1="这样啊。大家都辛苦了。" jump1="*jump_05" storage="01_intro_ADV_1.ks"]
*jump_05

[talk name="momoi_def" face="smile"]
[emo name="momoi_def" le"]
欸嘿嘿。谢谢啦，老师。
[wait time="300"]
[click_next]

[talk name="momoi_def" face="normal"]
不过，希望老师体验完最新作之后，再说『辛苦了』。
[wait time="450"]
[click_next]

[talk ]

[choice_button mode="1" choice1="是什么类型的游戏呢？" jump1="*jump_06" storage="01_intro_ADV_1.ks"]
*jump_06

[talk name="momoi_def" face="eyeclose"]
[act name="momoi_def" act="hophop" wait="false"]
哼哼哼。这可是……。
[wait time="450"]
[click_next]
[layopt layer="message0" visible="false" wait="true"]

[hide name="momoi_def"]

[clearstack]
[app name="momoi_def" width="1200" left="-130" top="50" mode="quick" wait="false"]
;立ち絵サイズ大きく

[talk name="momoi_def" face="normal"]
这次由我们游戏开发部呈现的，竟然是一部，本格推理故事！
[emo name="momoi_def" emo="twinkle"]
[wait time="1000"]
[l][cm]

[choice_button mode="1" choice1="推理？" jump1="*jump_07" storage="01_intro_ADV_1.ks"]
*jump_07

[layopt layer="message0" visible="false" wait="true"]

[hide name="momoi_def"]
[wait time="300"]
[app name="momoi_def" pos="3" mode="quick"]

;立ち絵サイズ通常に戻す

[talk name="momoi_def" face="respond"]
没错！不过，我们对推理创造还不熟悉。
[wait time="500"]
[l][cm]

[talk name="momoi_def" face="embarrass"]
[emo name="momoi_def" emo="sweat"]
稍微有点担心，玩家能不能按照设计通关。
[wait time="300"]
[click_next]

[talk name="momoi_def" face="normal"]
[emo name="momoi_def" emo="chat"]
所以想拜托老师来试玩一下，然后把感想整理成报告！
[wait time="300"]
[click_next]

[talk name="momoi_def" face="respond"]
当然我们也知道老师很忙，所以也不用勉强，怎么样？
[wait time="800"]
[l][cm]

[talk ]

[choice_button mode="1" choice1="要是不嫌弃，当然可以了！" jump1="*jump_08" storage="01_intro_ADV_1.ks"]
*jump_08

[talk name="momoi_def" face="smile"]
[act name="momoi_def" act="hophop" wait="false"]
[emo name="momoi_def" emo="music"]
老师真好！非常感谢！
[wait time="300"]
[click_next]

;
;[hide_all]

[talk name="momoi_def" face="def"]
接下来……来，给你手柄。
[wait time="450"]
[click_next]

[talk name="momoi_def" face="normal"]
基本上，只要配合故事展开进行操作就可以了。
[wait time="450"]
[click_next]

[playse storage="SE_Typing_02.wav" loop="false"]
[talk name="momoi_def" face="smile"]
那么就……游戏启动♪
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]

[fadeoutbgm time="1000"]
[wait time="1000"]

*part_end

[hide name="momoi_def"]
[stopbgm]
[clearfix]
[clearstack]
[wait time="1000"]
[jump storage="02_intro_ADV_2_1.ks"]
