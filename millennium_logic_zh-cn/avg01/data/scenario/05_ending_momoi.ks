
[playbgm storage="Theme_19.ogg" volume="25" time="3000"]

[bg_effect storage="BG06_PartyRoom.jpg"]

[wait time="600"]
[playse storage="SE_Fall_06.wav" loop="false"]
[choice_button mode="1" choice1="桃井小姐，犯人就是你吧？" jump1="*jump_61" storage="05_ending_momoi.ks"]
*jump_61

[app name="momoi" pos="3" wait="true"]

[talk name="momoi" face="07"]
[act name="momoi" act="shake" wait="false"]
[emo name="momoi" emo="surprise"]
额……！？可、可是你空口无凭……
[wait time="300"]
[click_next]



[choice_button mode="1" choice1="我有决定性的证据。" jump1="*jump_62" storage="05_ending_momoi.ks"]
*jump_62

[chara_part name="momoi" face="07"]

;証拠3選択肢
[choice_button mode="3" choice1="你的尾巴。" jump1="*sippo" choice2="你的耳机。" jump2="*head" choice3="你带走的小瓶子哪去了？" jump3="*evi" storage="05_ending_momoi.ks"]

*sippo
[wait time="600"]
[playse storage="SE_Hit_02.wav" loop="false"]
[talk name="momoi" face="serious"]
尾巴怎么了吗？
[wait time="450"]
[click_next]


[choice_button mode="1" choice1="实际上是光学迷彩发生装置……" jump1="*sippo2" storage="05_ending_momoi.ks"]

*sippo2

[talk ]
……
[wait time="450"]
[click_next]

（不管怎么说都还是太勉强了）
[wait time="450"]
[click_next]

[jump target="*jump_62"]

*head
[wait time="600"]
[playse storage="SE_Hit_02.wav" loop="false"]
[talk name="momoi" face="serious"]
耳机怎么了吗？
[wait time="450"]
[click_next]


[choice_button mode="1" choice1="其实它有停止时间的功能……" jump1="*sippo2" storage="05_ending_momoi.ks"]

[talk ]
……
[wait time="450"]
[click_next]
（如果可能的话，早就应该从这里逃走了）
[jump target="*jump_62"]

*evi
[wait time="1000"]
[playse storage="SE_HangUp_01.wav" loop="false"]
[talk name="momoi" face="serious"]
[act name="momoi" act="stiff" wait="false"]
为、为什么你会发现……
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[wait time="1000"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="桃井小姐之前说过。" jump1="*talk1" storage="05_ending_momoi.ks"]
*talk1
[wait time="1200"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="身上沾满了洒出来的芳香剂。" jump1="*talk2" storage="05_ending_momoi.ks"]
*talk2
[wait time="1200"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="怎么看都像是为了掩盖什么吧？" jump1="*talk3" storage="05_ending_momoi.ks"]
*talk3
[wait time="1500"]
[playse storage="SE_Fall_06.wav" loop="false"]
[choice_button mode="1" choice1="请你老实回答。" jump1="*talk4" storage="05_ending_momoi.ks"]
*talk4

[wait time="1500"]
[fadeoutbgm time="2000"]
[talk name="momoi" face="embarrass"]
[emo name="momoi" emo="dot"]
…………
[wait time="300"]
[click_next]

[clearstack]

[talk ]
[layopt layer="message0" visible="false" wait="true"]
[hide name="momoi" wait="true"]

[wait time="300"]

[app name="midori" pos="3" face="10" wait="true"]
[wait time="600"]
[app name="aris" pos="2" face="09" wait="true"]
[wait time="600"]
[app name="yuzu" pos="4" face="normal" wait="true"]
[wait time="600"]

[talk name="midori" face="10"]
[emo name="midori" emo="sweat"]
难道说，是姐姐干的……？吗、不可能吧？对吧？
[wait time="300"]
[click_next]

[talk name="yuzu" face="10"]
桃井，要是哪里说错了就指出来啊？这样的话，老师肯定会再去调查一遍的。
[wait time="450"]
[click_next]

[talk name="aris" face="embarrass"]
[act name="aris" act="hophop" wait="false"]
没错！桃井才不是那种忍气吞声的人！
[wait time="450"]
[click_next]

[talk name="aris" face="08"]
爱丽丝很清楚这一点！
[wait time="450"]
[click_next]

[talk ]
[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[fadeinbgm storage="Theme_37.ogg" volume="25" time="3000"]

[app name="momoi" pos="3" mode="quick" wait="true"]

[wait time="600"]

[talk name="momoi" face="07"]
大、大家……谢谢你们。我……我……
[wait time="450"]
[click_next]

[talk name="momoi" face="respond"]
可是，很抱歉。就是我……吃掉了主人的布丁。
[wait time="450"]
[click_next]

[talk ]
[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[app name="midori" pos="3" mode="quick" wait="true"]
[wait time="600"]
[app name="aris" pos="2" face="09" mode="quick" wait="true"]
[wait time="600"]
[app name="yuzu" pos="4" face="normal" mode="quick" wait="true"]
[wait time="300"]

[clearstack]
[wait time="300"]

[talk ]
！？
[emo name="midori" emo="surprise"]
[emo name="aris" emo="surprise"]
[emo name="yuzu" emo="surprise"]
[wait time="300"]
[click_next]

[talk name="midori" face="07"]
胡说……姐姐，为什么？
[wait time="450"]
[click_next]

[talk name="yuzu" face="respond"]
主人的布丁，竟然真的是桃井吃的……
[wait time="450"]
[click_next]

[talk name="aris" face="08"]
[act name="aris" act="hophop" wait="false"]
就算事实如此，爱丽丝还是无法相信！
[wait time="450"]
[click_next]

[talk ]
[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[wait time="300"]

[app name="momoi" pos="3" mode="quick" wait="true"]
[talk name="momoi" face="11"]
欸嘿嘿……大家，能如此信任我。
[wait time="450"]
[click_next]

[talk name="momoi" face="smile"]
我这边，也没法继续辜负大家了。
[wait time="450"]
[click_next]

[talk name=""]
…………
[wait time="450"]
[click_next]

[talk name="momoi" face="respond"]
正如老师所说。小瓶子……以及里面的香草精油，都是为了诱导去搜查其他人的。
[wait time="450"]
[click_next]

[talk name="momoi" face="embarrass"]
但是我也不小心沾染上了玫瑰的味道，所以想用芳香剂来蒙混过关。
[wait time="450"]
[click_next]

[talk name="momoi" face="embarrass"]
[emo name="momoi" emo="question"]
即便如此老师仍然能察觉到是我干的么？
[wait time="300"]
[click_next]

[talk ]
……
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[wait time="400"]
[choice_button mode="1" choice1="因为我可是，Schale的老师啊。" jump1="*jump_64" storage="05_ending_momoi.ks"]
*jump_64

[wait time="1000"]
[talk name="momoi" face="respond"]
[emo name="momoi" emo="dot"]
……欸？这、这能算得上是理由吗？
[wait time="300"]
[click_next]

[talk name="momoi" face="smile"]
[emo name="momoi" emo="music"]
可是……啊哈哈，这样啊。Schale的老师么，真的好厉害啊。
[wait time="300"]
[click_next]


[talk ]
[choice_button mode="1" choice1="但身为女仆的你，为什么会做这种事？" jump1="*jump_65" storage="05_ending_momoi.ks"]
*jump_65

[talk name="momoi" face="respond"]
[emo name="momoi" emo="question"]
这是因为……老师您知道吗？主人带回来的这份布丁，究竟具有多么高的价值。
[wait time="300"]
[click_next]

[talk ]

[choice_button mode="1" choice1="价值？" jump1="*jump_66" storage="05_ending_momoi.ks"]
*jump_66

[layopt layer="message0" visible="false" wait="true"]

[hide_all]

[wait time="300"]
;[filter layer="base" blur="3"]

[app name="momoi" width="1200" left="0" top="0" mode="quick" wait="true"]

[talk name="momoi" face="eyeclose"]
这可是每月限定出品5份，普通人连瞧上一眼的机会都没有的，超级无敌稀有布丁啊。
[wait time="450"]
[click_next]

[talk name="momoi" face="serious"]
[act name="momoi" act="hophop" wait="false"]
[emo name="momoi" emo="exclaim"]
可偏偏这份超级无敌稀有布丁，现在就在面前触手可得！所以我……！
[wait time="300"]
[click_next]

[talk ]

[choice_button mode="1" choice1="毫不犹豫地吃掉了？" jump1="*jump_67" storage="05_ending_momoi.ks"]
*jump_67

[talk name="momoi" face="07"]
[act name="momoi" act="greeting" wait="false"]
我最近，或许是被布丁的魅力蒙蔽了双眼……
[wait time="450"]
[click_next]

[talk name="momoi" face="10"]
满脑子都想着如何吃到超级无敌稀有布丁，已经装不下别的事情了。
[wait time="450"]
[click_next]

[talk name="momoi" face="09"]
[act name="momoi" act="shake" wait="false"]
[emo name="momoi" emo="sweat"]
但是吃完的一瞬间我终于清醒了，然后突然后怕起来……
[wait time="300"]
[click_next]

[wait time="300"]

[talk ]

[choice_button mode="1" choice1="所以就在想如何掩盖罪行了吗？" jump1="*jump_68" storage="05_ending_momoi.ks"]
*jump_68

[talk name="momoi" face="serious"]
[act name="momoi" act="greeting" wait="false"]
正是。不过我想到，如果这里没有人吃到过真正的超级无敌稀有布丁，那肯定也没见过它长什么样――
[wait time="450"]
[click_next]

[talk name="momoi" face="07"]
于是我就想……放一个假的来顶替，应该就没人会发现了。
[wait time="450"]
[click_next]

[talk ]
…………
[wait time="450"]
[click_next]


[talk ]
[choice_button mode="1" choice1="顶替……！？" jump1="*jump_69" storage="05_ending_momoi.ks"]
*jump_69

[talk name="momoi" face="respond"]
没错。可我没想到，竟然连顶替的假货都消失不见了。
[wait time="300"]
[click_next]

[talk ]

[choice_button mode="1" choice1="这，怎么可能……！？" jump1="*jump_70" storage="05_ending_momoi.ks"]
*jump_70

[hide_all]

[wait time="600"]

[talk name=""]
（女仆桃井，吃掉了冰箱里的布丁）
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
[talk name=" " face="def"]
～ The End？ ～
[wait time="450"]
[click_next]

[wait time="1500"]
[playse storage="SE_RetroSuccess_01.wav" loop="false"]
【密码】
TASH-IZAN-0178
[wait time="450"]
[click_next]
[wait time="1000"]

[iscript]
f.momoi_end = 'true'
[endscript]


[layopt layer="message0" visible="false" wait="true"]
[stopbgm]
[clearfix]

[jump storage="08_epilogue.ks"]