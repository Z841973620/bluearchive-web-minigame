
[fadeinbgm storage="Theme_19.ogg" volume="25" time="3000"]

[bg_effect storage="BG06_PartyRoom.jpg"]

[wait time="600"]
[playse storage="SE_Fall_06.wav" loop="false"]
[choice_button mode="1" choice1="绿小姐，犯人就是你吧？" jump1="*jump_71" storage="06_ending_midori.ks"]

*jump_71
[app name="midori" pos="3" face="13" wait="true"]

[talk name="midori" face="13"]
[emo name="midori" emo="surprise"]
[act name="midori" act="shake" wait="false"]
我、我……！不是的！
[wait time="300"]
[click_next]



[choice_button mode="1" choice1="我有决定性的证据。" jump1="*jump_72" storage="06_ending_midori.ks"]
*jump_72

[chara_part name="midori" face="13"]

[choice_button mode="3" choice3="你的尾巴。" jump3="*sippo" choice1="你的耳机。" jump1="*head" choice2="是你负责关门的对吧？" jump2="*evi" storage="06_ending_midori.ks"]

*sippo
[wait time="600"]
[playse storage="SE_Hit_02.wav" loop="false"]
[talk name="midori"]
尾巴怎么了吗？
[wait time="450"]
[click_next]


[choice_button mode="1" choice1="实际上尾巴才是小绿的本体……" jump1="*sippo2" storage="06_ending_midori.ks"]

*sippo2
[talk ]
……
[wait time="450"]
[click_next]
（这也过于荒唐了）
[wait time="450"]
[click_next]

[jump target="*jump_72"]

*head
[wait time="600"]
[playse storage="SE_Hit_02.wav" loop="false"]
[talk name="midori"]
耳机怎么了吗？
[wait time="450"]
[click_next]


[choice_button mode="1" choice1="它拥有变身功能，可以让你变成宅邸主人的样子……" jump1="*head2" storage="06_ending_midori.ks"]

*head2
[talk name=""]
……
[wait time="450"]
[click_next]

（再怎么说也不可能的吧）
[wait time="450"]
[click_next]

[jump target="*jump_72"]

*evi
[wait time="1000"]
[playse storage="SE_HangUp_01.wav" loop="false"]
[talk name="midori" face="12"]
[act name="midori" act="stiff" wait="false"]
什么意思？那姐姐不也是一样吗。
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[wait time="1000"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="小绿你应该也负责卧室的值日吧。" jump1="*evi_1" storage="06_ending_midori.ks"]
*evi_1

[wait time="400"]
[talk name="midori" face="10"]
那、那又怎么了？
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[wait time="1000"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="最开始见到你的时候，你说过卧室的窗户锁坏了打不开。" jump1="*evi_2" storage="06_ending_midori.ks"]
*evi_2

[wait time="1200"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="但是经我调查，卧室窗户的锁并没有坏。" jump1="*evi_3" storage="06_ending_midori.ks"]
*evi_3

[wait time="1500"]
[playse storage="SE_Fall_06.wav" loop="false"]
[choice_button mode="1" choice1="是为了防止他人接近才说谎的吧？" jump1="*evi_4" storage="06_ending_midori.ks"]
*evi_4

[wait time="1500"]
[fadeoutbgm time="2000"]
[talk name="midori" face="07"]
[act name="midori" act="shake" wait="false"]
额，我无话可说……
[wait time="450"]
[click_next]

[clearstack]

[talk ]
[layopt layer="message0" visible="false" wait="true"]
[hide name="midori" wait="true"]

[wait time="300"]

[app name="aris" pos="3"  face="09" wait="true"]
[wait time="600"]
[app name="momoi" pos="2" face="respond" wait="true"]
[wait time="600"]
[app name="yuzu" pos="4" face="normal" wait="true"]
[wait time="600"]

[talk name="aris" face="09"]
[emo name="aris" emo="sweat"]
小绿？怎么回事啊？
[wait time="300"]
[click_next]

[act name="yuzu" act="hophop" wait="false"]
[talk name="yuzu" face="10"]
你要是不反驳的话，可真就要被当成犯人了？
[wait time="450"]
[click_next]

[talk name="momoi" face="07"]
[emo name="momoi" emo="upset"]
就是啊。小绿怎么可能做出这种事。
[wait time="300"]
[click_next]

[talk name="momoi" face="embarrass"]
[emo name="momoi" emo="sweat"]
因为……。
[wait time="300"]
[click_next]

[talk ]
[layopt layer="message0" visible="false" wait="true"]
[hide_all]
[hide name="yuzu" wait="true"]

[fadeinbgm storage="Theme_37.ogg" volume="25" time="3000"]

[app name="midori" pos="3" mode="quick" wait="true"]

[wait time="600"]

[talk name="midori" face="smile"]
……大家，你们都没有怀疑我呢。谢谢你们。
[wait time="450"]
[click_next]

[talk name="midori" face="eyeclose"]
[emo name="midori" emo="dot"]
可是……事到如今，我已经没办法再狡辩了。
[wait time="300"]
[click_next]

[talk ]
[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[app name="aris" pos="3" face="09" mode="quick" wait="true"]
[wait time="600"]
[app name="momoi" pos="2" face="07" mode="quick" wait="true"]
[wait time="600"]
[app name="yuzu" pos="4" face="normal" mode="quick" wait="true"]
[wait time="600"]

[clearstack]
[wait time="300"]

[talk ]
！？
[emo name="momoi" emo="surprise"]
[emo name="aris" emo="surprise"]
[emo name="yuzu" emo="surprise"]
[wait time="300"]
[click_next]

[talk name="yuzu" face="respond"]
那就是说，真的是小绿干的？
[wait time="450"]
[click_next]

[talk name="aris" face="08"]
[act name="aris" act="hophop" wait="false"]
小绿平时总是耐心地教爱丽丝工作！
[wait time="450"]
[click_next]

[talk name="aris" face="embarrass"]
[emo name="aris" emo="sweat"]
小绿怎么可能去偷吃布丁……。
[wait time="300"]
[click_next]

[talk ]
[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[app name="midori" pos="3" mode="quick" wait="true"]
[talk name="midori" face="10"]
…………。
[wait time="450"]
[click_next]

[talk ]
[chara_move time="800" wait="true" anim="true" left="520" name="midori"]
[wait time="300"]
[app name="momoi" pos="2" face="respond" wait="true"]

[talk name="momoi" face="respond"]
小绿……。
[wait time="450"]
[click_next]

[talk name="midori" face="eyeclose"]
姐姐……对不起。
[wait time="450"]
[click_next]

[talk name="momoi" face="09"]
小绿你这个傻瓜。为什么要做这种事……。
[wait time="450"]
[click_next]

[talk name="midori" face="depressed"]
……对不起。
[wait time="450"]
[click_next]

[talk name=""]
…………。
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[app name="midori" width="1000" left="100" top="100" mode="quick" wait="true"]
[talk name="midori" face="respond"]
正如老师所说。
[wait time="450"]
[click_next]

[talk name="midori" face="07"]
我本以为如果让窗户无法出入，就不会怀疑到我了……
[wait time="450"]
[click_next]


[talk name="midori" face="10"]
明明我已经为了转移注意力，把现场好好伪装过了。
[wait time="450"]
[click_next]

[talk name="midori" face="respond"]
为什么老师还能察觉到是我干的呢？
[wait time="450"]
[click_next]

[talk ]
……
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[wait time="400"]
[choice_button mode="1" choice1="因为我可是，Schale的老师啊。" jump1="*jump_74" storage="06_ending_midori.ks"]
*jump_74

[wait time="1000"]
[talk name="midori" face="smile"]
[emo name="midori" emo="music"]
……这样啊。Schale的老师真厉害啊。
[wait time="300"]
[click_next]

[talk ]

[choice_button mode="1" choice1="可是你为什么要做这种事？" jump1="*jump_75" storage="06_ending_midori.ks"]
*jump_75

[talk name="midori" face="serious"]
问我为什么？老师您知道吗？这份布丁，究竟具有多么高的价值。
[wait time="450"]
[click_next]

[talk ]

[choice_button mode="1" choice1="价值？" jump1="*jump_76" storage="06_ending_midori.ks"]
*jump_76

[talk name="midori" face="eyeclose"]
这种布丁，据说每个月只会出品5份，被称为梦幻布丁。
[wait time="450"]
[click_next]

[talk name="midori" face="respond"]
[emo name="midori" emo="respond"]
更是因为其极高的稀有度，传言只要吃上一口就能得到幸福……。
[wait time="300"]
[click_next]

[talk ]

[choice_button mode="1" choice1="你是想要变得幸福吗？" jump1="*jump_77" storage="06_ending_midori.ks"]
*jump_77

[talk name="midori" face="10"]
因、因为……本来我和姐姐越好了要一起变强，然后两个人一起玩游戏的。
[wait time="450"]
[click_next]

[talk name="midori" face="07"]
[emo name="midori" emo="upset"]
结果最近只有姐姐一个人不断爆稀有道具，然后吹嘘个不停……。
[wait time="300"]
[click_next]

[talk name="midori" face="embarrass"]
[act name="midori" act="hophop" wait="false"]
我好不甘心啊！所以我也想转运，然后让姐姐也见识一下我的厉害……！
[emo name="midori" emo="sad"]
[wait time="300"]
[click_next]

[talk ]
[layopt layer="message0" visible="false" wait="true"]
[hide_all]
[hide name="midori" wait="true"]

[wait time="300"]

[app name="aris" pos="3"face="09" mode="quick" wait="true"]
[wait time="600"]
[app name="momoi" pos="2" face="normal" mode="quick" wait="true"]
[wait time="600"]
[app name="yuzu" pos="4" face="10" mode="quick" wait="true"]
[wait time="600"]

[emo name="aris" emo="dot"]
[emo name="yuzu" emo="dot"]
…………。
[wait time="300"]
[click_next]

[talk name="momoi" face="embarrass"]
[act name="momoi" act="hophop" wait="false"]
[emo name="momoi" emo="surprise"]
等等，你们两个不要用那种眼神看我……！
[wait time="300"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[hide_all]
[hide name="momoi" wait="true"]

[wait time="300"]

[clearstack]
[chara_delete name="momoi"]
[chara_delete name="aris"]
[chara_delete name="yuzu"]

;[filter layer="base" blur="3"]
[app name="midori" width="1000" left="100" top="100" mode="quick" wait="true"]

[talk name="midori" face="10"]
这时我想到了。没人见过梦幻布丁长什么样子――
[wait time="450"]
[click_next]

[talk name="midori" face="serious"]
就算偷偷调个包，也不会有人发现。
[wait time="450"]
[click_next]

[talk ]
…………
[wait time="450"]
[click_next]


[talk ]
[choice_button mode="1" choice1="调包……！？" jump1="*jump_78" storage="06_ending_midori.ks"]
*jump_78

[talk name="midori" face="embarrass"]
没错。我确实把一个替代品，放进冰箱里了。
[wait time="450"]
[click_next]


[talk ]
[choice_button mode="1" choice1="这，怎么可能……！？" jump1="*jump_79" storage="06_ending_midori.ks"]
*jump_79

[talk ]
[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[wait time="600"]

[talk name=""]
（女仆小绿，吃掉了冰箱里的布丁）
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
[talk name=""]
～ The End？ ～
[wait time="450"]
[click_next]

[wait time="1500"]
[playse storage="SE_RetroSuccess_01.wav" loop="false"]
【密码】
TASH-IZAN-0549
[wait time="450"]
[click_next]
[wait time="1000"]

[iscript]
f.midori_end = 'true'
[endscript]


[layopt layer="message0" visible="false" wait="true"]
[stopbgm]
[clearfix]

[jump storage="08_epilogue.ks"]