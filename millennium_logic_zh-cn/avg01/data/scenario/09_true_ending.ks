[iscript]
        f.bukatsu = '';
        f.ao_width = 1000;
        f.ao_offset_L = -10;
        f.ao_top = 150;
        f.ao_size = 1;
        f.ao_offset_emo_L = 0;
        f.ao_offset_emo_T = 20;     
        f.ao  = '青' + ' ' + '<span class="bukatsu">'  + f.bukatsu + '</span>';
        
[endscript]

[chara_new name="ao" jname="青" storage="chara/ao.png" width="&f.ao_width"]
[chara_layer name="ao" part="body" id="def" storage="chara/ao.png" zindex=1 ]

[bg_effect storage="black.jpg"]

[playse storage="SE_PrisonDoor_01_Close.wav" loop="false"]
[talk name=""]
（随着开关被按下，书柜动了起来，出现了一条隐藏道路）
[wait time="450"]
[click_next]

[fadeinbgm storage="Theme_48.ogg" time="2000" volume="25"]
[talk name=""]
（证据已经集齐了）
[wait time="450"]
[click_next]

[talk name=""]
（也得到了嫌疑人的供述）
[wait time="450"]
[click_next]

[talk name=""]
（可是事情的经过和供述之间仍然存在出入）
[wait time="450"]
[click_next]

[talk name=""]
（如果嫌疑人没有在供述里说谎的话，应该有人偷走了用来顶替的假冒布丁……）
[wait time="450"]
[click_next]

[talk name=""]
（在前方一定会有这个问题的答案……）
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[wait time="500"]

[choice_button mode="1" choice1="这里是……！？" jump1="*jump_90" storage="09_true_ending.ks"]
[wait time="500"]
*jump_90

[bg_effect storage="BG_GameDevRoom_Night.jpg"]
[talk name=""]
（这里有人生活的痕迹）
[wait time="450"]
[click_next]

[talk name=""]
（这种地方竟然有人吗？）
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[wait time="500"]

[talk name="ao" hatena="true"]
啊ー啊，没想到竟然能找到这里来。
[wait time="450"]
[click_next]

;表記は？？？
[choice_button mode="1" choice1="是谁！？" jump1="*jump_91" storage="09_true_ending.ks"]
*jump_91

[talk name="ao" hatena="true"]
你好，Schale的老师。我的名字叫做才羽・究极・至高神。
[wait time="450"]
[click_next]

;これ以降全てモモイの『シルエット』を使用

[layopt layer="message0" visible="false" wait="true"]
[wait time="1000"]
[backlay]
[app name="ao" pos="3" wait="false"]
[playse storage="SE_Spotlight_01.wav" loop="false"]
[wait time="600"]
[talk name="ao"]
不对，现在应该叫才羽青才对。
[wait time="600"]
[click_next]

[talk ]
[hide name="ao"]

[layopt layer="message0" visible="false" wait="true"]
[wait time="600"]

[choice_button mode="1" choice1="才羽……青！？" jump1="*jump_92" storage="09_true_ending.ks"]

*jump_92
[wait time="500"]
[playse storage="SE_FootStep_04b.wav" loop="false"]

[app name="momoi" pos="3" face="respond" wait="true"]
[wait time="600"]

[talk name="momoi" face="08"]
[act name="momoi" act="shake" wait="true"]
假的吧……为什么究极・至高神姐姐会在这里！？
[wait time="450"]
[click_next]

[talk ]
[hide name="momoi"]

[layopt layer="message0" visible="false" wait="true"]
[wait time="600"]

[choice_button mode="1" choice1="姐姐！？" jump1="*jump_93" storage="09_true_ending.ks"]

*jump_93

[app name="ao" pos="3" mode="quick" wait="true"]
[act name="ao" act="hophop"]
[talk name="ao" face="def"]
住口桃井！我已经舍弃掉那个名字了！
[wait time="450"]
[click_next]

如今的我……为了让这个世界重置而觉醒，甚至已经成为了超越神的存在！
[wait time="450"]
[click_next]

[talk name="ao" face="def"]

现在的我叫做才羽青！！
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[hide name="ao"]
[hide name="momoi"]

[wait time="600"]
[playse storage="SE_FootStep_04b.wav" loop="false"]
[app name="yuzu" pos="3" wait="true"]
[talk name="yuzu" face="10"]
[act name="yuzu" act="shake" wait="true"]
怎、怎么回事？桃井和小绿不是双胞胎吗！？
[wait time="450"]
[click_next]

[talk ]
[hide name="yuzu"]
[layopt layer="message0" visible="false" wait="true"]
[wait time="300"]

[playse storage="SE_FootStep_04b.wav" loop="false"]
[app name="midori" pos="3" wait="true"]
[wait time="600"]

[talk ]
[talk name="midori" face="10"]
那是因为……抱歉，柚子。一直保密到现在，其实我们是三胞胎。
[wait time="450"]
[click_next]

[talk name="midori" face="eyeclose"]
但是她因为思想过于邪恶，就被我们一族抹除掉了……。
[wait time="450"]
[click_next]

[talk name="midori" face="13"]
刚才我所说的，指的就是究极・至高神姐姐。
[wait time="450"]
[click_next]

[talk ]
[chara_move time="800" wait="true" anim="true" left="-60" name="midori"]
[wait time="300"]

[app name="momoi" pos="4" wait="true" mode="quick" face="serious"]

[talk name="momoi" face="serious"]
可真没想到，会在这种地方再会…
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[hide_all]
[wait time="600"]
[playse storage="SE_FootStep_04b.wav" loop="false"]
[app name="aris" pos="3" wait="true"]
[talk name="aris" face="08"]
[act name="aris" act="hophop" wait="true"]
究极・至高神啊，为什么你想要让世界重置呢！
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[hide name="aris"]

[app name="ao" mode="quick"]
[talk name="ao"]

那是因为……我，想起来了。在很久之前，我完成第四次转生的那个时代。
[wait time="450"]
[click_next]

我在最初的转生之前，召唤了恶魔，从而获得了永生不死的力量。
[wait time="450"]
[click_next]

可代价是，必须要不停进食布丁才能延续生命。
[wait time="450"]
[click_next]

[talk "]
[hide name="ao"]
[layopt layer="message0" visible="false" wait="true"]

[app name="momoi" mode="quick"]
[talk name="momoi" face="embarrass"]
布丁……就是说，布丁消失之谜终于！
[wait time="450"]
[click_next]

[talk ]
[hide name="momoi"]
[layopt layer="message0" visible="false" wait="true"]
[wait time="600"]

[playse storage="SE_FootStep_04b.wav" loop="false"]
[app name="akira" pos="3"  face="def" wait="true"]
[wait time="300"]
[talk name="akira" face="respond"]
哎呀？在那边，装布丁的空杯子随处可见啊。
[wait time="450"]
[click_next]

[talk ]
[hide name="akira"]
[layopt layer="message0" visible="false" wait="true"]

[choice_button mode="1" choice1="难道说这次事件真正的犯人就是！？" jump1="*jump_94" storage="09_true_ending.ks"]
*jump_94

[app name="ao" mode="quick"]
[talk name="ao" face="def"]

哼哼……既然被你们发现了，就不能让你们活着回去！
[wait time="450"]
[click_next]

就用我的力量来重置世界！
[wait time="450"]
[click_next]

[playse storage="SE_BigLaser_01.wav" loop="false" wait="true"]


[layopt layer="message0" visible="false" wait="true"]
[hide name="ao" wait="false"]
[hide_all]

[fadeoutbgm time="1000"]
[unload storage="Theme_48.ogg"]

[wait time="1000"]
[camera layer="base" wait="true" zoom="1.2" y="0" x="0" rotate="0"]
[wait time="80"]

[app name="aris" face="serious" width="800" left="200" top="150" wait="true"]
[talk name="aris" face="serious"]
光啊！！
[wait time="1000"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide name="aris" wait="true"]

[talk name=""]
（这一瞬间，爱丽丝手中的光之剑，贯穿的青的身躯）
[wait time="1600"]
[click_next]

[wait time="500"]
[reset_camera]
[wait time="500"]

[app name="ao" mode="quick" wait="true"]
[act name="ao" act="stiff"]
[talk name="ao"]
呃啊……！你这家伙，难道是！？
[wait time="450"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide name="ao" wait="true"]
[wait time="600"]

[fadeinbgm storage="Theme_45.ogg" time="3000" volume="25"]

[app name="aris" face="serious" wait="true"]
[wait time="600"]
[talk name="aris" face="def"]
现在才发现，已经太迟了。
[act name="aris" act="greeting"]
[wait time="450"]
[click_next]

[talk name="aris" face="smile"]
[act name="aris" act="jump"]
爱丽丝就是为了击败伪神，而不断转生的传说之勇者！
[wait time="450"]
[click_next]

[wait time="300"]
[layopt layer="message0" visible="false" wait="true"]
[hide name="aris" wait="true"]
[wait time="400"]

[app name="ao"]
[talk name="ao"]
勇者？为什么勇者会在这……！不对，为什么你会知道我在这！？
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]

[wait time="1000"]
[talk name="？？？" tag="true"]
为什么？哼哼，真是个愚蠢的问题。
[wait time="450"]
[click_next]

[talk name="日鞠" tag="true"]
对于我超天才清楚系病弱美少女黑客，明星日鞠来说，不存在解不开的谜题。
[wait time="450"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide name="ao" wait="true"]

[app name="aris" pos="1" face="respond" wait="true"]
[wait time="600"]
[app name="yuzu" pos="5" face="respond" wait="true"]
[wait time="600"]
[app name="momoi" pos="2" face="respond" wait="true"]
[wait time="600"]
[app name="midori" pos="4" face="respond" wait="true"]
[wait time="300"]

[talk name="爱丽丝・桃井・绿・柚子" tag="true"]
[chara_part name="aris" face="smile"]
[chara_part name="momoi" face="smile"]
[chara_part name="midori" face="smile"]
[chara_part name="yuzu" face="smile"]
主人！！
[wait time="450"]
[click_next]

[talk name="日鞠" tag="true"]

好了各位，特异点已经修正，让时代回到它本应该有的样子吧。
[wait time="450"]
[click_next]

;//◆立ち絵使うかセリフのみか考え中

[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[app name="ao" wait="true"]
[talk name="ao"]
[act name="ao" act="jump"]
;[front_talker name="ao"]
; [br name="midori" br="false"]
; [br name="aris" br="false"]
; [br name="yuzu" br="false"]
哇哦哦哦哦哦！接招ー！超级桃井龙卷风！
[wait time="450"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide name="ao" wait="true"]
[wait time="500"]

[app name="yuzu" pos="2" face="embarrass" wait="true"]
[talk name="yuzu" face="embarrass"]
接、接招！发霉毛巾！
[wait time="450"]
[click_next]

[talk ]
[app name="midori" pos="4" face="serious" wait="true"]
[talk name="midori" face="serious"]
那我就丢牛奶臭味毛巾！
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[app name="aris" pos="3" wait="true"]
[talk name="aris" face="serious"]
[act name="aris" act="jump"]
最后一击……要来了！光啊！！
[wait time="400"]
[playse storage="SE_BigLaser_02.wav" loop="false" wait="true"]
[wait time="300"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[app name="ao" wait="true"]
[talk name="ao" face="def" tag="false"]
呃啊啊啊啊！我怎么可能……こ在这种地方，被打败，呀啊啊啊啊啊！
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]

[act name="ao" act="shake"]
[act name="ao" act="falldownL" wait="true"]
[wait time="600"]
[hide name="ao" wait="true"]
[bg_effect storage="black.jpg"]

[talk name=""]
（至此被盗布丁之谜被完美解决――）
[wait time="450"]
[click_next]

[talk name=""]
（多亏了老师和勇者爱丽丝的活跃，世界又恢复了和平）
[wait time="450"]
[click_next]

～ The End ～
[wait time="450"]
[click_next]

[fadeoutbgm time="1500"]
……
[wait time="450"]
[click_next]
…
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]

[unload storage="Theme_45.ogg"]
[clearstack]

[iscript]
        f.bukatsu = '游戏开发部';
        f.momoi_def_width = 900;
        f.momoi_def_offset_L = 110;
        f.momoi_def_top = 140;
        f.momoi_def_size = 1;
        f.momoi_def_offset_emo_L = 110;
        f.momoi_def_offset_emo_T = 10;     
        f.momoi_def  = '桃井' + ' ' + '<span class="bukatsu">'  + f.bukatsu + '</span>';
[endscript]
[chara_new name="momoi_def" jname="&f.momoi_def" storage="chara/momoi/momoi_body.png" width=&f.momoi_width]
[chara_layer name="momoi_def" part="face" id="def" storage="chara/momoi/momoi_def.png" zindex=2 ]
[chara_layer name="momoi_def" part="face" id="eyeclose" storage="chara/momoi/momoi_eyeclose.png" zindex=2 ]
[chara_layer name="momoi_def" part="face" id="smile" storage="chara/momoi/momoi_smile.png" zindex=2 ]

[wait time="600"]

[bg_effect storage="BG_GameDevRoom.jpg"]
[fadeinbgm storage="Theme_64.ogg" time="2000" volume="25"]
[unload storage="Theme_45.ogg"]
[app name="momoi_def" from="bottom" wait="true"]
[talk name="momoi_def" face="smile"]
老师，辛苦了！刚才那个是隐藏结局，老师已经全结局通关了！
[wait time="450"]
[click_next]

[talk name="momoi_def" face="normal"]
怎么样？老师猜到真正的犯人是谁了吗？
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="也就你们游戏开发部做得出来……。" jump1="*jump_95" storage="09_true_ending.ks"]
*jump_95
[choice_button mode="1" choice1="怎么可能猜得到啊？" jump1="*jump_96" storage="09_true_ending.ks"]
*jump_96
[talk name="momoi_def" face="eyeclose"]
正因如此才能称得上是本格推理嘛！一下子就猜出来犯人是谁不就没意思了？
[wait time="450"]
[click_next]

[talk name="momoi_def" face="def"]
但是这样也就说明没有余下没修的bug了。
[wait time="450"]
[click_next]

[talk name="momoi_def" face="smile"]
之后就麻烦老师写一份游戏反馈咯！麻烦感想也要包含进去哦！
[wait time="600"]

*part_end
*rewrite
[layopt layer="message1" visible="true"]
[layopt layer="message0" visible="false" wait="true"]
[wait time="500"]

[hide name="momoi_def" wait="true"]
[fadeoutbgm time="3000"]
[bg_effect storage="black.jpg"]

;[position layer="message1" left="1280" top="310" width="330" height="120" visible="true" margin="0" opacity="0"] 
[mtext layer="message1" x="800" y="600" size="40" text="Thank you for playing!" time="5000" in_effect="fadeInLeftBig" out_effect="fadeOut"]

*part_end
[clearstack]
[hide_all]

[jump storage="game_title.ks"]