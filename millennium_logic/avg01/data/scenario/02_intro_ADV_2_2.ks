
[preload storage="data/bgm/Theme_92.ogg" single_use="true"]
[bg_effect storage="BG06_PartyRoom.jpg" time="3000" wait="false"]
[fadeinbgm storage="Theme_92.ogg" volume="25" time="500"]

[skip_button storage="02_intro_ADV_2_2.ks"]

[talk name=""]
（食堂に向かうと、すでに全員が集まっていた）
[wait time="450"]
[click_next]



[choice_button mode="1" choice1="何かあったんですか？" jump1="*jump_24" storage="02_intro_ADV_2_2.ks"]
*jump_24

[app name="midori" pos="3" wait="true"]

[talk name="midori" face="07"]
あ、えっと……ご心配をおかけしてすみません。
[wait time="450"]
[click_next]

[talk name="midori" face="10"]
[emo name="midori" emo="sweat"]
それが……先ほど、主様が倒れてしまいまして……。
[wait time="300"]
[click_next]



[choice_button mode="1" choice1="倒れた！？" jump1="*jump_25" storage="02_intro_ADV_2_2.ks"]
*jump_25

[talk name="midori" face="eyeclose"]
といっても、主様は超天才で清楚系ながらも、少々体が弱くて。
[wait time="500"]
[l][cm]

[talk name="midori" face="respond"]
体調を崩されること自体は珍しくありません。
[wait time="500"]
[l][cm]


[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[app name="momoi" pos="3" wait="true"]

[talk name="momoi" face="respond"]
ちなみに、主様から伝言だよ。
[wait time="300"]
[l][cm]

[talk name="momoi" face="eyeclose"]
[emo name="momoi" emo="twinkle"]
夕食の席を私という可憐な花で彩ることができず申し訳ありません。
[wait time="800"]
[l][cm]

[talk name="momoi" face="11"]
[emo name="momoi" emo="music"]
ですがお気になさらず、心ゆくまでお食事をご堪能ください……だってさ。
[wait time="300"]
[click_next]



[choice_button mode="1" choice1="ちなみにその主は今どこに？" jump1="*jump_26" storage="02_intro_ADV_2_2.ks"]
*jump_26

[talk name="momoi" face="respond"]
[emo name="momoi" emo="question" wait="false"]
主様？それだけ言い残して部屋に戻っていったよ？
[wait time="300"]
[click_next]



[choice_button mode="1" choice1="あれ？なら主が倒れた原因は？" jump1="*jump_27" storage="02_intro_ADV_2_2.ks"]
*jump_27

[talk name="momoi" face="respond"]
トリニティから取り寄せた限定プリンが、ちょっと目を離した隙に盗まれちゃったんだって。
[wait time="300"]
[click_next]

[talk name="momoi" face="embarrass"]
[wait time="300"]
[act name="momoi" act="shake" wait="false"]
[emo name="momoi" emo="sweat"]
それで慌ててユズを呼ぼうとしたら、車椅子のステップに思いっきり足の小指をぶつけたとか。
[wait time="300"]
[click_next]

[choice_button mode="1" choice1="それは痛そう！" jump1="*jump_28" storage="02_intro_ADV_2_2.ks"]
*jump_28

[talk ]

[chara_move time="800" wait="true" anim="true" left="-170" name="momoi"]
[app name="midori" pos="4" mode="quick" wait="true"]
[talk name="midori" face="12"]
[emo name="midori" emo="upset"]
だけど、いったい誰が主様のプリンを……！
[wait time="300"]
[click_next]

[talk name="midori" face="serious"]
[act name="midori" act="hophop" wait="false"]
[emo name="midori" emo="angry"]
この屋敷のメイドとして、こんな悪事は見過ごせません！
[wait time="300"]
[click_next]

[talk name="momoi" face="embarrass"]
まあまあミドリ、落ち着きなって。
[wait time="400"]
[l][cm]

[talk name="momoi" face="07"]
犯人を許せないって気持ちは、きっとみんな一緒だよ。
[wait time="500"]
[l][cm]

[talk name="midori" face="normal"]
お姉ちゃん……そうだよね。
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
プリンを盗んだ犯人がいるかもしれないのに、こんなところにいられません！アリスは部屋に戻らせてもらいます！
[wait time="300"]
[click_next]

[talk name="aris" face="smile"]
[emo name="aris" emo="twinkle"]
アリス、前からこのセリフを言ってみたかったんです！
[wait time="800"]
[l][cm]

[fadeoutbgm time="3000"]

[talk ]
[app name="yuzu" pos="5" wait="true"]

[talk name="yuzu" face="respond"]
[emo name="yuzu" emo="sweat"]
えっと、アリスちゃん？それ死亡フラグ……
[wait time="300"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[playse storage="SE_FootStep_10.wav" loop="false" wait="true"]
[fadeinbgm storage="Theme_129.ogg" volume="25" time="3000"]

[wait time="300"]

[app name="akira" pos="3" wait="true"]

[talk name="akira" face="08"]
とにかく事情はわかりました。ですがそうなると……。
[wait time="300"]
[click_next]

[talk name="akira" face="10"]
[emo name="akira" emo="question" wait="false"]
容疑者はここにいる６人に絞られる、ということでよろしいでしょうか？
[wait time="700"]
[l][cm]

[talk name="akira" face="respond"]
屋敷の戸締まりを確認されたのは、そちらのお嬢さん方でしたよね？
[wait time="700"]
[l][cm]

[talk ]

[chara_move time="800" wait="true" anim="true" left="520" name="akira"]
[app name="momoi" pos="2" face="respond" mode="quick" wait="true"]

[talk name="momoi" face="respond"]
確認したらリストにチェックを入るから、見落としはないよ。
[wait time="450"]
[click_next]



[choice_button mode="1" choice1="つまり、外からは入れない。" jump1="*jump_29" storage="02_intro_ADV_2_2.ks"]
*jump_29


[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[wait time="300"]

[app name="midori" pos="2" mode="quick" wait="true"]
[app name="yuzu" pos="4" mode="quick" wait="true"]

[talk name="midori" face="respond"]
そういえば今日の夕飯担当はユズちゃんとアリスちゃんだよね？
[wait time="450"]
[click_next]

[talk name="yuzu" face="respond"]
[emo name="yuzu" emo="question" wait="false"]
……え？
[wait time="300"]
[click_next]

[talk name="yuzu" face="08"]
[act name="yuzu" act="shake" wait="false"]
[emo name="yuzu" emo="surprise"]
え！？ミドリは私たちを疑ってるの……！？
[wait time="300"]
[click_next]

[talk name="midori" face="10"]
そこまでは言ってないけど、犯人を見てる可能性はあるのかなって。
[wait time="450"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[app name="aris" pos="3" mode="quick" wait="true"]
[talk name="aris" face="normal"]
アリスとユズが、最後にプリンを見たのは3時のおやつの時間です。
[wait time="450"]
[click_next]

[talk name="aris" face="09"]
[emo name="aris" emo="sweat"]
でもそれ以降、怪しい人は見ていません。
[wait time="300"]
[click_next]

[talk name=""]
（15時というと、今から約2時間半も前のことだ）
[wait time="500"]
[l][cm]


[choice_button mode="1" choice1="それはたしかですか？" jump1="*jump_30" storage="02_intro_ADV_2_2.ks"]
*jump_30

[talk name="aris" face="def"]
[act name="aris" act="hophop" wait="false"]
はい！届いたプリンを、主様の目の前で冷蔵庫に入れました！
[wait time="450"]
[click_next]

[talk ]

[chara_move time="800" wait="true" anim="true" left="520" name="aris"]
[app name="yuzu" pos="2" mode="quick" wait="true"]

[talk name="yuzu" face="respond"]
[act name="yuzu" act="greeting" wait="false"]
間違いありません。その後はアリスちゃんと二人で、主様のお部屋のお掃除をしていました。
[wait time="450"]
[click_next]

[talk name="yuzu" face="serious"]
[emo name="yuzu" emo="twinkle"]
それについては主様が証人になってくださるはずです。
[wait time="800"]
[l][cm]

[talk name="yuzu" face="eyeclose"]
[emo name="yuzu" emo="dot"]
でも私とアリスちゃんが夕食の支度を始めたのが、今から約1時間前だから……。
[wait time="300"]
[click_next]

[talk name="yuzu" face="10"]
[emo name="yuzu" emo="bulb"]
もしかしたら、その時にはもう盗まれていたのかもしれません。
[wait time="300"]
[click_next]

[choice_button mode="1" choice1="犯行時刻は15時から16時半の間になるのかな？" jump1="*jump_31" storage="02_intro_ADV_2_2.ks"]
*jump_31

[talk name="aris" face="serious"]
[act name="aris" act="hophop" wait="false"]
[emo name="aris" emo="upset"]
プリンを盗んだ犯人がいるかもしれないのに、こんなところにいられません！アリスは部屋に戻らせてもらいます！
[wait time="300"]
[click_next]

[talk name="yuzu" face="embarrass"]
[emo name="yuzu" emo="sweat"]
それも冗談じゃなくなってきちゃったね……
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
それに『あいつが犯人かも』って思われながら過ごすのは、気持ちいいものじゃないし。
[wait time="300"]
[click_next]

[talk name="midori" face="07"]
[act name="midori" act="greeting" wait="false"]
……そうだね。お互いを信じられなくなっちゃったら、それこそ犯人の思うツボかも。
[wait time="700"]
[l][cm]


[layopt layer="message0" visible="false" wait="true"]
[hide_all]
[wait time="800"]

[talk name=""]
（盗み食いされたプリン、倒れたこの屋敷の主、屋敷の内部にいる者の犯行――）
[wait time="450"]
[click_next]

[talk name=""]
（この場に偶然いあわせたのもまた運命なのかもしれない！）
[wait time="450"]
[click_next]

[wait time="300"]

[app name="akira" pos="3" mode="quick" wait="true"]

[talk name="akira" face="respond"]
――おや？どうかされましたか？
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
[choice_button mode="1" choice1="事情は把握しました。" jump1="*jump_32" storage="02_intro_ADV_2_2.ks"]
*jump_32
[wait time="600"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="その上でこの難事件――" jump1="*jump_33" storage="02_intro_ADV_2_2.ks"]
*jump_33
[wait time="600"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="私が無事解決してみせます！！" jump1="*jump_34" storage="02_intro_ADV_2_2.ks"]
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
か、解決できるなら助かりますけど……。
[wait time="450"]
[click_next]

[talk name="yuzu" face="serious"]
本当にそんなことが可能なんですか？
[emo name="yuzu" emo="question" wait="false"]
[wait time="300"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="できます！" jump1="*jump_35" storage="02_intro_ADV_2_2.ks"]
*jump_35
;選択肢同時
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="なぜならこう見えても私は……" jump1="*jump_36" storage="02_intro_ADV_2_2.ks"]
*jump_36
;選択肢同時
[wait time="800"]
[playse storage="SE_Fall_06.wav" loop="false" wait="true"]
[choice_button mode="1" choice1="連邦捜査部、シャーレの先生ですから！！" jump1="*jump_37" storage="02_intro_ADV_2_2.ks"]
*jump_37

[app name="momoi" pos="3" face="serious" wait="true"]

[talk name="momoi" face="serious"]
シャーレの……！
[emo name="momoi" emo="surprise"]
[wait time="300"]
[click_next]

[talk ]

[chara_move time="800" wait="true" anim="true" left="520" name="momoi"]

[wait time="400"]

[app name="midori" pos="2" face="serious" wait="true"]

[talk name="midori" face="serious"]
先生……！？
[emo name="midori" emo="surprise"]
[wait time="300"]
[click_next]

[hide_all]
[talk ]

[app name="akira" pos="3" mode="quick" wait="true"]

[talk name="akira" face="09"]
ふふっ、まさかそのような方とご一緒するとは……
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
