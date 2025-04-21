
[preload storage="data/bgm/Theme_92.ogg" single_use="true"]
[bg_effect storage="BG06_PartyRoom.jpg" time="3000" wait="false"]
[fadeinbgm storage="Theme_92.ogg" volume="25" time="500"]

[skip_button storage="02_intro_ADV_2_2.ks"]

[talk name=""]
（来到餐厅，大家都已经到齐了）
[wait time="450"]
[click_next]



[choice_button mode="1" choice1="发生什么事了？" jump1="*jump_24" storage="02_intro_ADV_2_2.ks"]
*jump_24

[app name="midori" pos="3" wait="true"]

[talk name="midori" face="07"]
啊，那个……非常抱歉让您担心了。
[wait time="450"]
[click_next]

[talk name="midori" face="10"]
[emo name="midori" emo="sweat"]
怎么说呢……就在刚才，主人她倒下了……。
[wait time="300"]
[click_next]



[choice_button mode="1" choice1="倒下了！？" jump1="*jump_25" storage="02_intro_ADV_2_2.ks"]
*jump_25

[talk name="midori" face="eyeclose"]
虽然说，主人被称为超天才清楚系，但是身体却很虚弱。
[wait time="500"]
[l][cm]

[talk name="midori" face="respond"]
随时垮掉也不稀奇。
[wait time="500"]
[l][cm]


[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[app name="momoi" pos="3" wait="true"]

[talk name="momoi" face="respond"]
顺便，主人有话要传达给您。
[wait time="300"]
[l][cm]

[talk name="momoi" face="eyeclose"]
[emo name="momoi" emo="twinkle"]
很抱歉晚餐没有我这朵可爱动人的鲜花作为点缀。
[wait time="800"]
[l][cm]

[talk name="momoi" face="11"]
[emo name="momoi" emo="music"]
不过请不要介意，请尽情享用美食吧……这么说的。
[wait time="300"]
[click_next]



[choice_button mode="1" choice1="稍微问下，你们的主人现在在哪？" jump1="*jump_26" storage="02_intro_ADV_2_2.ks"]
*jump_26

[talk name="momoi" face="respond"]
[emo name="momoi" emo="question" wait="false"]
主人吗？她留下这句话就回房间了哦？
[wait time="300"]
[click_next]



[choice_button mode="1" choice1="诶？那你们主人倒下的原因是？" jump1="*jump_27" storage="02_intro_ADV_2_2.ks"]
*jump_27

[talk name="momoi" face="respond"]
从圣三一那边订购的限定款布丁，一不留神就被人偷走了。
[wait time="300"]
[click_next]

[talk name="momoi" face="embarrass"]
[wait time="300"]
[act name="momoi" act="shake" wait="false"]
[emo name="momoi" emo="sweat"]
于是便想急忙喊来柚子，小脚趾却狠狠撞上了轮椅的踏板。
[wait time="300"]
[click_next]

[choice_button mode="1" choice1="听起来就很痛！" jump1="*jump_28" storage="02_intro_ADV_2_2.ks"]
*jump_28

[talk ]

[chara_move time="800" wait="true" anim="true" left="-170" name="momoi"]
[app name="midori" pos="4" mode="quick" wait="true"]
[talk name="midori" face="12"]
[emo name="midori" emo="upset"]
但是，究竟是谁偷了主人的布丁……！
[wait time="300"]
[click_next]

[talk name="midori" face="serious"]
[act name="midori" act="hophop" wait="false"]
[emo name="midori" emo="angry"]
作为这座宅邸的女仆，不能对这种坏事视而不见！
[wait time="300"]
[click_next]

[talk name="momoi" face="embarrass"]
好了小绿，冷静点。
[wait time="400"]
[l][cm]

[talk name="momoi" face="07"]
无法原谅犯人的心情，大家肯定都是一样的。
[wait time="500"]
[l][cm]

[talk name="midori" face="normal"]
姐姐……说的是。
[wait time="400"]
[l][cm]


[layopt layer="message0" visible="false" wait="true"]
[hide name="momoi" wait="false"]
[hide name="midori" wait="true"]
[preload storage="data/bgm/Theme_129.ogg" single_use="true"]
[wait time="600"]

[app name="aris" pos="3"  face="serious" wait="true"]
[talk name="aris" face="serious"]
[act name="aris" act="hophop" wait="false"]
[emo name="aris" emo="upset"]
明明偷走布丁的犯人还在逍遥法外，怎么能继续待在这种地方！爱丽丝要回房间里去！
[wait time="300"]
[click_next]

[talk name="aris" face="smile"]
[emo name="aris" emo="twinkle"]
爱丽丝早就想说这句台词了！
[wait time="800"]
[l][cm]

[fadeoutbgm time="3000"]

[talk ]
[app name="yuzu" pos="5" wait="true"]

[talk name="yuzu" face="respond"]
[emo name="yuzu" emo="sweat"]
那个，爱丽丝酱？那不是死亡flag吗……
[wait time="300"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[playse storage="SE_FootStep_10.wav" loop="false" wait="true"]
[fadeinbgm storage="Theme_129.ogg" volume="25" time="3000"]

[wait time="300"]

[app name="akira" pos="3" wait="true"]

[talk name="akira" face="08"]
总之已经明白发生什么了。既然这样的话……。
[wait time="300"]
[click_next]

[talk name="akira" face="10"]
[emo name="akira" emo="question" wait="false"]
嫌犯就是这里6人的其中一人，是这样没错吧？
[wait time="700"]
[l][cm]

[talk name="akira" face="respond"]
确认好宅邸门锁的，是那边那位小姐吧？
[wait time="700"]
[l][cm]

[talk ]

[chara_move time="800" wait="true" anim="true" left="520" name="akira"]
[app name="momoi" pos="2" face="respond" mode="quick" wait="true"]

[talk name="momoi" face="respond"]
我确认完了就会在清单上打勾，所以不会有遗漏之处。
[wait time="450"]
[click_next]



[choice_button mode="1" choice1="也就是说，不可能有人从外面进来。" jump1="*jump_29" storage="02_intro_ADV_2_2.ks"]
*jump_29


[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[wait time="300"]

[app name="midori" pos="2" mode="quick" wait="true"]
[app name="yuzu" pos="4" mode="quick" wait="true"]

[talk name="midori" face="respond"]
说起来今天负责做晚饭的是柚子酱和爱丽丝酱吧？
[wait time="450"]
[click_next]

[talk name="yuzu" face="respond"]
[emo name="yuzu" emo="question" wait="false"]
……诶？
[wait time="300"]
[click_next]

[talk name="yuzu" face="08"]
[act name="yuzu" act="shake" wait="false"]
[emo name="yuzu" emo="surprise"]
诶！？小绿是在怀疑我们吗……！？
[wait time="300"]
[click_next]

[talk name="midori" face="10"]
也说不上怀疑，只是想确认一下见到犯人的可能性。
[wait time="450"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[app name="aris" pos="3" mode="quick" wait="true"]
[talk name="aris" face="normal"]
爱丽丝和柚子，最后一次见到布丁是在下午三点的下午茶时间。
[wait time="450"]
[click_next]

[talk name="aris" face="09"]
[emo name="aris" emo="sweat"]
不过从那之后，就没见到过奇怪的人。
[wait time="300"]
[click_next]

[talk name=""]
（15点，距今差不多两个半小时了）
[wait time="500"]
[l][cm]


[choice_button mode="1" choice1="确定是这样吗？" jump1="*jump_30" storage="02_intro_ADV_2_2.ks"]
*jump_30

[talk name="aris" face="def"]
[act name="aris" act="hophop" wait="false"]
对的！我把送来的布丁当着主人的面放进了冰箱！
[wait time="450"]
[click_next]

[talk ]

[chara_move time="800" wait="true" anim="true" left="520" name="aris"]
[app name="yuzu" pos="2" mode="quick" wait="true"]

[talk name="yuzu" face="respond"]
[act name="yuzu" act="greeting" wait="false"]
没错。之后我和爱丽丝酱两个人一起去打扫了主人的房间。
[wait time="450"]
[click_next]

[talk name="yuzu" face="serious"]
[emo name="yuzu" emo="twinkle"]
关于这点，主人可以作证。
[wait time="800"]
[l][cm]

[talk name="yuzu" face="eyeclose"]
[emo name="yuzu" emo="dot"]
但是我和爱丽丝酱开始准备晚饭，是在大约一个小时之前……。
[wait time="300"]
[click_next]

[talk name="yuzu" face="10"]
[emo name="yuzu" emo="bulb"]
说不定，那个时候就已经被偷了。
[wait time="300"]
[click_next]

[choice_button mode="1" choice1="也就是说犯罪时间是在15点到16点半之间吧？" jump1="*jump_31" storage="02_intro_ADV_2_2.ks"]
*jump_31

[talk name="aris" face="serious"]
[act name="aris" act="hophop" wait="false"]
[emo name="aris" emo="upset"]
明明偷走布丁的犯人还在逍遥法外，怎么能继续待在这种地方！爱丽丝要回房间里去！
[wait time="300"]
[click_next]

[talk name="yuzu" face="embarrass"]
[emo name="yuzu" emo="sweat"]
这已经不是在开玩笑了……
[wait time="300"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide_all]
[clearstack]
[preload storage="data/bgm/Theme_95.ogg" single_use="true"]
[wait time="800"]

[app name="momoi" pos="2" mode="quick" wait="true"]
[app name="midori" pos="4" mode="quick" wait="true"]

[talk name="momoi" face="embarrass"]
而且一边被认为『那家伙可能是犯人』一边共处一室，心里也不好受。
[wait time="300"]
[click_next]

[talk name="midori" face="07"]
[act name="midori" act="greeting" wait="false"]
……确实。如果我们都开始互相猜疑，就可能正中犯人下怀。
[wait time="700"]
[l][cm]


[layopt layer="message0" visible="false" wait="true"]
[hide_all]
[wait time="800"]

[talk name=""]
（被偷吃的布丁，倒下的屋主、宅邸内部人员犯下的罪行――）
[wait time="450"]
[click_next]

[talk name=""]
（刚好在场遇上这种事情也许是命运的安排！）
[wait time="450"]
[click_next]

[wait time="300"]

[app name="akira" pos="3" mode="quick" wait="true"]

[talk name="akira" face="respond"]
――哦呀？你怎么了？
[emo name="akira" emo="exclaim"]
[wait time="300"]
[click_next]

[wait time="300"]

[layopt layer="message0" visible="false" wait="true"]
[fadeoutbgm time="500"]

[playbgm storage="Theme_95.ogg" volume="25"]
[wait time="400"]
[hide_all]

[wait time="700"]
[playse storage="SE_Flick_01.wav" loop="false" wait="true"]
[choice_button mode="1" choice1="事情大致已经清楚了。" jump1="*jump_32" storage="02_intro_ADV_2_2.ks"]
*jump_32
[wait time="600"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="在此基础上，这个棘手的案件――" jump1="*jump_33" storage="02_intro_ADV_2_2.ks"]
*jump_33
[wait time="600"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="就让我来平稳解决吧！！" jump1="*jump_34" storage="02_intro_ADV_2_2.ks"]
*jump_34
[clearstack]
*test
[wait time="800"]
[playse storage="SE_Spotlight_01.wav" loop="false" wait="true"]
[app name="aris" pos="1" face="serious" wait="true"]
[wait time="600"]
[playse storage="SE_Spotlight_01.wav" loop="false" wait="true"]
[app name="momoi" pos="2" face="serious" wait="true"]
[wait time="600"]
[playse storage="SE_Spotlight_01.wav" loop="false" wait="true"]
[app name="akira" pos="3" face="serious" wait="true"]
[wait time="600"]
[playse storage="SE_Spotlight_01.wav" loop="false" wait="true"]
[app name="midori" pos="4" face="serious" wait="true"]
[wait time="600"]
[playse storage="SE_Spotlight_01.wav" loop="false" wait="true"]
[app name="yuzu" pos="5" face="serious" wait="true"]
[wait time="300"]

[clearstack]
[unload storage="SE_Spotlight_01.wav"]
[wait time="300"]

[talk name=""]
！？
[emo name="momoi" emo="exclaim"]
[emo name="aris" emo="exclaim"]
[emo name="akira" emo="exclaim"]
[emo name="midori" emo="exclaim"]
[emo name="yuzu" emo="exclaim"]

[wait time="1200"]
[l][cm]
[wait time="400"]
[talk ]

[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[app name="yuzu" pos="3" mode="quick" wait="true"]
[layopt layer="message0" visible="true"]
;立ち絵並べる
[talk name="yuzu" face="normal"]
啊，要是能解决的话就帮大忙了……。
[wait time="450"]
[click_next]

[talk name="yuzu" face="serious"]
真的有可能解决吗？
[emo name="yuzu" emo="question" wait="false"]
[wait time="300"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="可以！" jump1="*jump_35" storage="02_intro_ADV_2_2.ks"]
*jump_35
;選択肢同時
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="别看我这样，我可是……" jump1="*jump_36" storage="02_intro_ADV_2_2.ks"]
*jump_36
;選択肢同時
[wait time="800"]
[playse storage="SE_Fall_06.wav" loop="false" wait="true"]
[choice_button mode="1" choice1="联邦搜查部、Schale的老师啊！！" jump1="*jump_37" storage="02_intro_ADV_2_2.ks"]
*jump_37

[app name="momoi" pos="3" face="serious" wait="true"]

[talk name="momoi" face="serious"]
Schale的……！
[emo name="momoi" emo="surprise"]
[wait time="300"]
[click_next]

[talk ]

[chara_move time="800" wait="true" anim="true" left="520" name="momoi"]

[wait time="400"]

[app name="midori" pos="2" face="serious" wait="true"]

[talk name="midori" face="serious"]
老师……！？
[emo name="midori" emo="surprise"]
[wait time="300"]
[click_next]

[hide_all]
[talk ]

[app name="akira" pos="3" mode="quick" wait="true"]

[talk name="akira" face="09"]
呵呵，没想到能和这样的人一起……
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false"]

[fadeoutbgm time="1000"]
[wait time="1000"]

*part_end

[hide_all]
[stopbgm]
[unload all_sound="true"]
[clearfix]
[clearstack]
[wait time="1000"]
[jump storage="03_tutorial.ks"]
