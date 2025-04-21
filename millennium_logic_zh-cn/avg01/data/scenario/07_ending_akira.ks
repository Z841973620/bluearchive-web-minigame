[fadeinbgm storage="Theme_19.ogg" volume="25" time="3000"]
[bg_effect storage="BG06_PartyRoom.jpg"]

[wait time="600"]
[playse storage="SE_Fall_06.wav" loop="false"]
[choice_button mode="1" choice1="白衣小姐姐，犯人就是你吧？" jump1="*jump_80" storage="07_ending_akira.ks"]
*jump_80

[wait time="600"]
[app name="akira" pos="3" wait="true"]
[wait time="600"]

[talk name="akira" face="respond"]
哼哼，你所指的真的算得上是证据吗？
[emo name="akira" emo="respond"]
[wait time="300"]
[click_next]

[talk name="akira" face="eyeclose"]
难道不是有人故意诬陷我吗？
[wait time="450"]
[click_next]


[choice_button mode="1" choice1="我有决定性的证据。" jump1="*jump_81" storage="07_ending_akira.ks"]
*jump_81

[chara_part name="akira" face="eyeclose"]

;証拠3選択肢

[choice_button mode="3" choice3="你的耳朵。" jump3="*mimi" choice1="你的手杖。" jump1="*tue" choice2="你的尾巴。" jump2="*sippo" storage="07_ending_akira.ks"]

*sippo

[wait time="600"]
[playse storage="SE_Hit_02.wav" loop="false"]
[talk name="akira" face="respond" ]
尾巴怎么了吗？
[wait time="450"]
[click_next]

[talk ]
[choice_button mode="1" choice1="实际上你的尾巴可以像鞭子一样伸长……" jump1="*sippo_1" storage="07_ending_akira.ks"]

*sippo_1

[talk ]
……
[wait time="450"]
[click_next]
（就算伸长了又能干什么呢）
[wait time="450"]
[click_next]

[jump target="*jump_81"]

*mimi
[wait time="600"]
[playse storage="SE_Hit_02.wav" loop="false"]
[talk name="akira" face="respond" ]
耳朵怎么了吗？
[wait time="450"]
[click_next]

[talk ]
[choice_button mode="1" choice1="实际上你的耳朵可以变成钻头在墙上打洞……" jump1="*mimi_1" storage="07_ending_akira.ks"]

*mimi_1

[talk ]
……
[wait time="450"]
[click_next]
（这样的话会因为制造噪音而被怀疑的吧）
[wait time="450"]
[click_next]

[jump target="*jump_81"]

*tue

[wait time="1500"]
[talk name="akira" face="eyeclose" ]
我的……手杖吗。
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[wait time="1000"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="我在走廊发现了可疑的脚印。" jump1="*tue_1" storage="07_ending_akira.ks"]
*tue_1
[wait time="800"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="虽然脚印的形状是女仆所穿的鞋子……" jump1="*tue_2" storage="07_ending_akira.ks"]
*tue_2
[wait time="1000"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="但是在旁边有较小的圆形凹陷。" jump1="*tue_3" storage="07_ending_akira.ks"]
*tue_3
[wait time="1200"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="圆形凹陷，难道不是你的手杖所造成的吗？" jump1="**tue_4" storage="07_ending_akira.ks"]
*tue_4
[wait time="1000"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="你穿上了女仆的鞋子――" jump1="**tue_5" storage="07_ending_akira.ks"]
*tue_5
[wait time="1500"]
[playse storage="SE_Fall_06.wav" loop="false"]
[choice_button mode="1" choice1="企图把罪行嫁祸到她们身上。" jump1="**tue_6" storage="07_ending_akira.ks"]
*tue_6


[wait time="1000"]
[fadeoutbgm time="2000"]
[talk name="akira" face="normal"]
唔姆――没想到能如此清晰地揭露真相，真是让我大开眼界。
[emo name="akira" emo="twinkle"]
[wait time="1000"]
[l][cm]

[talk name="akira" face="eyeclose"]
[act name="momoi" act="greeting" wait="false"]
正如老师所说。没错――
[wait time="450"]
[click_next]

[fadeinbgm storage="Theme_114.ogg" volume="25" time="3000"]
[unload storage="Theme_19.ogg"]

[talk name="akira" face="respond"]
我――『慈爱的怪盗』，确实拿走了布丁。
[emo name="akira" emo="music"]
[wait time="300"]
[click_next]

[talk name="akira" face="eyeclose"]
呵呵。至于伪装的手法，正如刚才所讲。
[wait time="450"]
[click_next]


[talk ]
[chara_move time="800" wait="true" anim="true" left="650" name="akira"]
[wait time="600"]
[app name="midori" pos="3" face="serious" wait="true"] 
[wait time="600"]
[app name="aris" pos="2" face="serious" wait="true"]
[wait time="600"]

[talk name="midori" face="serious"]
[act name="midori" act="jump" wait="false"]
那你的车出故障了，从一开始也是骗我们的吗……？
[emo name="midori" emo="question"]
[wait time="300"]
[click_next]

[talk name="aris" face="08"]
[act name="aris" act="hophop" wait="false"]
是为了偷布丁而来的吧！
[emo name="aris" emo="upset"]
[wait time="300"]
[click_next]

[talk name="akira" face="respond"]
[act name="akira" act="greeting" wait="false"]
话虽如此，这边还是有好好打招呼和发预告的。
[wait time="450"]
[click_next]

[talk ]
[hide name="midori" wait="true"]

[app name="yuzu" pos="3" wait="true"]
[wait time="600"]

[talk name="yuzu" face="10"]
[act name="yuzu" act="shake" wait="false"]
那就是说今天早上那封奇怪的信，难道是预告信……？
[wait time="450"]
[click_next]

[talk ]
[hide name="aris" wait="true"]

[app name="momoi" pos="2" wait="true"]
[wait time="600"]

[talk name="momoi" face="08"]
[act name="momoi" act="jump" wait="false"]
虽然我有点没搞清楚，不过既然已经知道犯人是谁了，就快把她抓起来！大家一起上！
[wait time="450"]
[click_next]

[talk ]
[layopt layer="message0" visible="false" wait="true"]
[hide_all]
[hide name="akira" wait="true"]

[app name="midori" pos="2" face="serious" mode="quick" wait="true"]
[wait time="600"]
[app name="aris" pos="3" face="serious" mode="quick" wait="true"]
[wait time="600"]
[app name="yuzu" pos="4" face="serious" mode="quick" wait="true"]
[wait time="600"]

[wait time="300"]

[talk ]
！？

[emo name="midori" emo="exclaim"]
[emo name="aris" emo="exclaim"]
[emo name="yuzu" emo="exclaim"]
[wait time="300"]
[click_next]

[wait time="800"]

[talk ]
[layopt layer="message0" visible="false" wait="true"]
[hide_all]

*test
[wait time="800"]

[app name="akira" pos="3" wait="true"]
[wait time="600"]

[talk name="akira" face="normal"]
请等等，各位小姐。我既不打算逃也不打算躲。
[wait time="450"]
[click_next]


[talk name="akira" face="eyeclose"]
不，都到这一步了，我反而对事情的真相突然有了兴趣。
[emo name="akira" le"]
[wait time="800"]
[l][cm]

[choice_button mode="1" choice1="怎么回事？" jump1="*jump_83" storage="07_ending_akira.ks"]
*jump_83

[talk name="akira" face="normal"]
[act name="akira" act="greeting" wait="false"]
老师慧眼如炬，我深感佩服。
[emo name="akira" emo="heart"]
[wait time="300"]
[click_next]

[talk name="akira" face="eyeclose"]
[act name="akira" act="hophop" wait="false"]
没错――正因如此，我再次重申。
[wait time="450"]
[click_next]

[talk name="akira" face="respond"]
我的确事先掌握了布丁送达这座宅邸的日期，然后才来登门拜访的。
[wait time="450"]
[click_next]

[talk name="akira" face="serious"]
可是――如今这样布丁突然消失的情况，最先受到怀疑的会是谁呢？
[emo name="akira" emo="question"]
[wait time="300"]
[click_next]

[talk name="akira" face="respond"]
除开Schale的老师，只有我一个是外人。
[wait time="450"]
[click_next]

[talk name="akira" face="eyeclose"]
这样必然会惹人耳目。风险实在是过高。
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="也就是说？" jump1="*jump_84" storage="07_ending_akira.ks"]
*jump_84

[talk name="akira" face="respond"]
简单来说。关键就在于伪装的手法。
[emo name="akira" emo="respond"]
[wait time="300"]
[click_next]

[talk name="akira" face="smile"]
在我离开宅邸之前，不被发现就好。
[emo name="akira" emo="music"]
[wait time="300"]
[click_next]

[talk name="akira" face="normal"]
[act name="akira" act="hophop" wait="false"]
所以，我在冰箱里放了假货去顶替。
[wait time="450"]
[click_next]

[talk ]
[chara_move time="800" wait="true" anim="true" left="-100" name="akira"]
[wait time="300"]
[app name="midori" pos="4" mode="quick" wait="true"]

[talk name="midori" face="respond"]
诶？可是因为布丁不见了，主人才会……。
[wait time="450"]
[click_next]

[talk name="akira" face="eyeclose"]
没错。确实很不可思议。所以我，才想要知道真相。
[wait time="450"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[app name="akira" pos="3" wait="true"]
[talk name="akira" face="respond"]
还是说……老师？
[wait time="450"]
[click_next]

[talk name="akira" face="normal"]
此时此刻，您还要抓我吗？
[wait time="450"]
[click_next]

[talk name="akira" face="smile"]
[act name="akira" act="hophop" wait="false"]
就像这样。哼哼，现在的我可是毫无防备，是抓捕的绝佳机会哦？
[wait time="450"]
[click_next]


如何呢，老师？您希望结局走向何方？
[emo name="akira" emo="music"]
[wait time="300"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[wait time="1000"]

[talk ]
[choice_button mode="1" choice1="这座宅邸究竟发生了什么……？" jump1="*jump_85" storage="07_ending_akira.ks"]
*jump_85


[layopt layer="message0" visible="false" wait="true"]
[hide_all]
[hide name="akira" wait="true"]

[wait time="600"]

[talk name=""]
（冠以『慈爱的怪盗』之名的女子，偷走了冰箱里的布丁）
[wait time="450"]
[click_next]

[talk name=""]
（然后实施了精心的伪装，根据本人供述，以上结论应该没有错误）
[wait time="450"]
[click_next]

[talk name=""]
（但若果真如此，放进去顶替的布丁又去哪儿了呢……？）
[wait time="450"]
[click_next]

[fadeoutbgm time="3000"]
～ The End？ ～
[wait time="450"]
[click_next]

[wait time="1500"]
[playse storage="SE_RetroSuccess_01.wav" loop="false"]
【密码】[r]
TASH-IZAN-0273

*end

[wait time="450"]
[click_next]
[iscript]
f.akira_end = 'true'
[endscript]
[wait time="1000"]

[layopt layer="message0" visible="false" wait="true"]
[stopbgm]
[clearfix]

[jump storage="08_epilogue.ks"]

