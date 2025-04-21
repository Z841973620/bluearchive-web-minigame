[preload storage="data/bgm/Theme_03.ogg" single_use="true"]
[bg_effect storage="BG_ForestRailRoad_Fog.jpg" time="1500"]

[skip_button storage="02_intro_ADV_2_1.ks"]

[talk name=""]
[playse storage="SE_Typing_02.wav" loop="false" volume="50"]
（我是联邦搜查部——Schale的老师）
[wait time="450"]
[click_next]

[talk name=""]
（今天我有仲裁职务在身，于是驱车前往了偏远的自治区……）
[wait time="450"]
[click_next]

[talk name=""]
（车在山里爆胎了，动弹不得）
[wait time="450"]
[click_next]

[talk name=""]
（而且，这里没有信号，也就无法求助）
[wait time="450"]
[click_next]

[bg_effect storage="BG_MudFlat_cloudy.jpg" time="2000"]

[talk name=""]
[playse storage="SE_Typing_02.wav" loop="false" volume="50"]
（再加上天上乌云滚滚，快到日落的时候了）
[wait time="450"]
[click_next]

[talk name=""]
（于是我停下车子，为了寻求帮助，踏进了深山）
[wait time="450"]
[click_next]

[bg_effect storage="BG_ForestRoad_Night.jpg" time="2000"]

[talk name=""]
[playse storage="SE_Typing_02.wav" loop="false" volume="50"]
（大概经过了30分钟之后――）
[wait time="450"]
[click_next]

[talk ]

[choice_button mode="1" choice1="这里是……？" jump1="*jump_09" storage="02_intro_ADV_2_1.ks"]
*jump_09

[talk name=""]
（视野突然开阔。出现了一栋诡异的洋房）
[wait time="450"]
[click_next]

[talk name=""]
（不过因为马上就要下雨，也就没法再挑三拣四了）
[wait time="450"]
[click_next]

[talk name=""]
（我敲了敲门，向这里的住户寻求帮助）
[wait time="450"]
[click_next]

[talk ]
[layopt layer="message0" visible="false" time="3000"]
[hide_all]

[bg_effect storage="BG01_HotelLobby.jpg" time="1500"]
[fadeinbgm storage="Theme_03.ogg" time="1500" wait="true" volume="30"]
[preload storage="data/bgm/Theme_04.ogg"]
[wait time="300"]
[app name="yuzu" pos="3" wait="true"]
[wait time="300"]
;◆名前表記は『？？？』にした方が…それだと表情が読み込まれないです
[talk name="yuzu" hatena="true" face="respond" ]
汽车爆胎……真是飞来横祸啊。
[wait time="600"]
[click_next]

;◆名前表記は『？？？』にした方が…それだと表情が読み込まれないです
[talk name="yuzu" hatena="true" face="smile"]
不过能找到这里，您的运气真不错呢。
[wait time="600"]
[click_next]

;◆名前表記は『？？？』にした方が…それだと表情が読み込まれないです
[talk name="yuzu" hatena="true"  face="smile"]
因为这附近没有别的住户了。
[wait time="600"]
[click_next]

[talk ]

[chara_move time="800" wait="true" anim="true" left="-20" name="yuzu" ]
[app name="aris" pos="4" wait="true"]
[wait time="300"]

;名前？？？
[talk name="aris" hatena="true"]
所以爱丽丝建议，今天先留宿在这，明天再去想办法求助吧！
[wait time="600"]
[click_next]


;名前？？？
[choice_button mode="1" choice1="不会给你们添麻烦吗？" jump1="*jump_10" storage="02_intro_ADV_2_1.ks"]
*jump_10

[talk name="yuzu" hatena="true"  face="07"]

没事的！正好那边也有一位要住下来。
[wait time="600"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[app name="akira" pos="3" wait="true"]
;◆立ち絵は仮面無しでお願いします
[wait time="300"]
;名前？？？

[talk ]
（顺着女仆的视线看去，只见一位全身白衣的女性）
[wait time="450"]
[click_next]

[talk name="akira" face="respond" hatena="true"]
而且外面还在下大雨哦？您还有的选吗？
[wait time="600"]
[click_next]

[talk ]
[layopt layer="message0" visible="false" wait="true"]
[hide name="akira" wait="true"]

[wait time="400"]

[playse storage="SE_FootStep_10.wav" loop="false" sprite_time="0-1400"]

[app name="momoi" pos="2" wait="true" ]
[wait time="300"]
[app name="midori" pos="4" wait="true"]
[wait time="300"]

[talk name="momoi" hatena="true"]
没错。在外面可能会出意外的哦？
[wait time="600"]
[click_next]

[talk ]

;名前？？？
[choice_button mode="1" choice1="？" jump1="*jump_11" storage="02_intro_ADV_2_1.ks"]
*jump_11

[talk name=""]
（仔细一看，两个近乎一模一样的女仆正从楼梯上走下）
[wait time="450"]
[click_next]

[talk ]
[layopt layer="message0" visible="false" time="3000"]
[hide_all]

[fadeoutbgm time="500"]
[wait time="500"]

[clearstack]

[bg_effect storage="BG01_HotelLobby.jpg" time="2000"]
[fadeinbgm storage="Theme_04.ogg" volume="25" time="2000"]
[preload storage="data/bgm/Theme_08.ogg" single_use="true"]
[wait time="300"]

[app name="momoi" pos="2" mode="quick" wait="true"]
[wait time="600"]

[app name="midori" pos="3" mode="quick" wait="true"]
[wait time="600"]

[app name="yuzu" pos="4" face="smile" mode="quick" wait="true"]
[wait time="600"]

[talk name="momoi" face="smile" hatena="true"]
柚子，确认锁门和准备客房的工作已经都完成了。
[wait time="600"]
[click_next]

;名前？？？
[talk name="midori" hatena="true"]
啊，可是主人卧室窗户的锁坏掉，打不开了。
[wait time="600"]
[click_next]

[talk name="midori" face="normal" hatena="true" ]
明天雨停了我就去修。
[wait time="600"]
[click_next]

;名前？？？
[talk name="yuzu" hatena="true" face="respond"]
小桃和小绿都辛苦了。真是不好意思，我才回来……
[wait time="600"]
[click_next]

;名前？？？
[talk name="midori" face="respond" hatena="true"]
嗯。那边那位也要住在这吧？刚才的话我都听见了。
[wait time="600"]
[click_next]

;名前？？？
[talk name="momoi" hatena="true" face="normal"]
准备客房的工作，就交给我们吧！
[wait time="600"]
[click_next]

[talk ]

[layopt layer="message0" visible="false" wait="true"]
[hide_all]

;名前？？？
[choice_button mode="1" choice1="请多关照。" jump1="*jump_12" storage="02_intro_ADV_2_1.ks"]
*jump_12

[wait time="400"]

[app name="momoi" pos="3" mode="quick" wait="true"]
[talk name="momoi" face="smile"]
[emo name="momoi" emo="chat"]
啊哈哈，不用那么客气。啊，我叫桃井，请多关照了！
[wait time="450"]
[click_next]

[talk ]

[chara_move time="800" wait="true" anim="true" left="-170" name="momoi"]

[wait time="300"]
[app name="midori" pos="4" mode="quick" wait="true"]

[talk name="momoi" face="normal"]
这位是我的妹妹小绿。
[wait time="450"]
[click_next]

[talk name="midori" face="eyeclose"]
初次见面，我叫绿。
[act name="midori" act="greeting" wait="true"]
[wait time="450"]
[click_next]

[talk ]
[layopt layer="message0" visible="false" wait="true"]

[hide_all]

[app name="aris" pos="3" wait="true"]
[talk name="aris" face="smile"]
[emo name="aris" emo="music"]
嗯！爱丽丝就是爱丽丝的说！请多关照！
[wait time="300"]
[click_next]

[talk ]
[wait time="300"]

[chara_move time="800" wait="true" anim="true" left="-170" name="aris"]

[wait time="300"]

[app name="yuzu" pos="4" mode="quick" wait="true"]
[talk name="yuzu" face="09"]
那个……我叫柚子。请多关照了。
[wait time="300"]
[click_next]

[talk ]

[choice_button mode="1" choice1="我是――" jump1="*jump_13" storage="02_intro_ADV_2_1.ks"]
*jump_13

[talk name="？？？" face="normal"]
抱歉打断一下。我偶然间听到一件事……。
[wait time="450"]
[click_next]

[talk ]
[fadeoutbgm time="600"]

[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[fadeinbgm storage="Theme_08.ogg" time="600" volume="25"]

[wait time="500"]

[app name="akira" pos="3" wait="true"]

[talk name="akira" face="respond"]
今晚您也住在这里吗？
[wait time="300"]
[click_next]

[talk ]

[choice_button mode="1" choice1="我的车爆胎了。" jump1="*jump_14" storage="02_intro_ADV_2_1.ks"]
*jump_14

[talk name="akira" face="eyeclose"]
[act name="akira" act="greeting" wait="false"]
这样啊。事实上，我的车，电池没电了……。
[wait time="450"]
[click_next]

[talk name="akira" face="08_respond_02"]
我是几个小时前，到达的这座府邸。
[wait time="450"]
[click_next]



[choice_button mode="1" choice1="坏事成双啊。" jump1="*jump_15" storage="02_intro_ADV_2_1.ks"]
*jump_15

[talk name="akira" face="normal"]
[emo name="akira" emo="chat"]
但是您走到这里，一定很累了吧。
[wait time="300"]
[click_next]

[talk name="akira" face="15_embarassed_02"]
现在先不用管我，先让她们带您去屋里怎么样？
[wait time="300"]
[click_next]

[talk name="akira" face="respond"]
各位小姐，你们觉得这样如何？
[wait time="450"]
[click_next]

[talk ]

[chara_move time="800" wait="true" anim="true" left="-50" name="akira"]
[app name="yuzu" pos="4" mode="quick" wait="true"]

[talk name="yuzu" face="respond"]
[act name="momoi" act="greeting" wait="false"]
嗯，姐姐没问题的话就好。
[wait time="450"]
[click_next]

[talk name="akira" face="16"]
[emo name="akira" emo="twinkle"]
那就，不用在意我。你们先前去房间吧～。
[wait time="1000"]
[l][cm]

[talk ]
[wait time="300"]

[choice_button mode="1" choice1="多谢你的关心。" jump1="*jump_16" storage="02_intro_ADV_2_1.ks"]
*jump_16

[hide_all]

[layopt layer="message0" visible="false" wait="true"]

[fadeoutbgm time="500"]
[wait time="500"]

[bg_effect storage="BG05_LuxuriousRooms_Night.jpg" time="2000" wait="true"]

[talk name=""]
（多亏了那位亲切的女性，我才得以不用在等一次客房打扫，就直接进入客房了。）
[wait time="300"]
[click_next]

[talk name=""]
（也许是在山里迷路的疲惫，我瘫坐在软绵绵的沙发上――）
[wait time="450"]
[click_next]

[talk ]
（不知不觉间，就进入了梦乡……）
[wait time="450"]
[click_next]

[talk ]
[layopt layer="message0" visible="false" time="3000"]
[hide_all]

[bg_effect storage="black.jpg" time="1500"]

[reset_camera layer="base" wait="true"]

[talk ]
…………
[wait time="450"]
[click_next]

[playse storage="SE_Knock_01.wav" loop="false"]
咚，咚
[wait time="450"]
[click_next]

[talk name=""]
（听到了缓缓的敲门声，我醒了过来）
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]

[bg_effect storage="BG05_LuxuriousRooms_Night.jpg" time="1000"]

[choice_button mode="1" choice1="请进。" jump1="*jump_17" storage="02_intro_ADV_2_1.ks"]
*jump_17

[wait time="800"]

[playse storage="SE_DoorSlowOpen_01.wav" loop="false" volume="20" wait="true"]

[wait time="1000"]

[talk name=""]
（我确认了一下时间，从我进房间开始过了大约30分钟）
[wait time="450"]
[click_next]

[wait time="300"]

[fadeinbgm storage="Theme_04.ogg" volume="25" time="3000"]

[app name="yuzu" pos="3" wait="true"]

[talk name="yuzu" face="respond"]
那个，十分抱歉，您是在休息吗？
[wait time="450"]
[click_next]

[talk ]

;立ち絵表示
[choice_button mode="1" choice1="只是有点迷迷糊糊的。" jump1="*jump_18" storage="02_intro_ADV_2_1.ks"]
*jump_18
[choice_button mode="1" choice1="请问是有什么事吗？" jump1="*jump_19" storage="02_intro_ADV_2_1.ks"]
*jump_19

[talk name="yuzu" face="10"]
[act name="yuzu" act="shake" wait="false"]
[emo name="yuzu" emo="sweat"]
不，那个……也不是什么要紧的事……
[wait time="300"]
[click_next]

[talk name="yuzu" face="embarrass"]
[act name="yuzu" act="hophop" wait="false"]
[emo name="yuzu" emo="upset"]
对、对不起……！我还是回到岗位上算了～！
[wait time="300"]
[click_next]

[playse storage="SE_FootStep_10.wav" loop="false" sprite_time="0-1400" wait="true"]
[talk ]
[move pos="4" name="yuzu" anime="true" ]
[wait time="300"]

[app name="aris" pos="2" wait="true"]
[talk name="aris" face="08"]
[act name="aris" act="hophop" wait="false"]
[emo name="aris" emo="sweat"]
等一下柚子！难得准备的茶水和点心，这样不就浪费了嘛！
[wait time="300"]
[click_next]

[talk ]

[choice_button mode="1" choice1="茶水和点心？" jump1="*jump_20" storage="02_intro_ADV_2_1.ks"]
*jump_20

[talk name="aris" face="def"]
因为晚饭还得再准备一会儿，所以柚子说，送一些红茶和曲奇过来！
[wait time="450"]
[click_next]

[talk ]

[choice_button mode="1" choice1="谢谢你这么费心。" jump1="*jump_21" storage="02_intro_ADV_2_1.ks"]
*jump_21

[talk name="yuzu" face="normal"]
没、没有没有！一点心意而已……！
[wait time="450"]
[click_next]

[talk ]
[layopt layer="message0" visible="false" wait="true"]
[hide_all]
[hide name="yuzu" wait="true"]

[talk name=""]
（二人熟练地倒好了红茶，装在碟子里，递给了我）
[wait time="450"]
[click_next]

[app name="yuzu" width="800" left="200" top="100" face="smile" mode="quick" wait="true"]

[talk name="yuzu" face="smile"]
要是能合您的口味就好了……
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[playse storage="SE_Eat_01.wav" loop="false"]
[wait time="1400"]

[choice_button mode="1" choice1="非常好喝……！" jump1="*jump_22" storage="02_intro_ADV_2_1.ks"]
*jump_22

[wait time="300"]

[talk name="yuzu" face="07" wait="true"]
[emo name="yuzu" emo="heart"]
……！看来您很中意，真是太好了！
[wait time="300"]
[click_next]

[talk name=""]
（红茶的苦味和曲奇的微甜绝妙地融合在一起）
[wait time="450"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[talk name=""]
（正在我津津有味地享用，这姗姗来迟的下午茶时光时）
[wait time="450"]
[click_next]

[fadeoutbgm time="3000"]

[wait time="600"]

[playse storage="SE_Throw_01.wav" loop="false"]
[talk name="？？？" face="def"]
呀啊啊啊啊啊啊啊啊啊～～～～っ！！！！
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]

[app name="aris" pos="4" face="serious" wait="true"]
[wait time="300"]
[app name="yuzu" pos="2" face="serious" wait="true"]

;表記　？？？
;セリフのみ
[talk name=""]
（被不知从何处传来的惨叫声吓了一跳，差点杯子都掉了）
[emo name="aris" emo="exclaim"]
[emo name="yuzu" emo="exclaim"]
[wait time="400"]
[click_next]



[choice_button mode="1" choice1="刚刚的惨叫声是！？" jump1="*jump_23" storage="02_intro_ADV_2_1.ks"]
*jump_23

[talk name="yuzu" face="10"]
是这座宅邸的主人……！非常抱歉，我去看看情况！
[wait time="450"]
[click_next]

[talk ]

[playse storage="SE_Run_05.wav" loop="false" wait="true"]
[move wait="true" pos="right" name="yuzu"]
[wait time="300"]
[talk name="aris" face="serious"]
爱丽丝也去看看！
[wait time="450"]
[click_next]

[talk ]

[playse storage="SE_Run_05.wav" loop="false" wait="true"]
[move wait="true" pos="right" name="aris"]
[wait time="300"]
[talk name=""]
（跟在从房间里飞奔出去的二人身后，我也向着走廊跑去）
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false"]

*part_end

[hide_all]
[stopbgm]
[unload all_sound="true"]
[clearfix]
[clearstack]
[wait time="1000"]
[jump storage="02_intro_ADV_2_2.ks"]