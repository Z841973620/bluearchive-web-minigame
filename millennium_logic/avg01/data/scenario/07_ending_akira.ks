[fadeinbgm storage="Theme_19.ogg" volume="25" time="3000"]
[bg_effect storage="BG06_PartyRoom.jpg"]

[wait time="600"]
[playse storage="SE_Fall_06.wav" loop="false"]
[choice_button mode="1" choice1="白いお姉さん、あなたではありませんか？" jump1="*jump_80" storage="07_ending_akira.ks"]
*jump_80

[wait time="600"]
[app name="akira" pos="3" wait="true"]
[wait time="600"]

[talk name="akira" face="respond"]
ふふ、果たしてそれが証拠になるのでしょうか？
[emo name="akira" emo="respond"]
[wait time="300"]
[click_next]

[talk name="akira" face="eyeclose"]
どなたかが[ruby text="わたくし"]私を陥れようとしているのでは？
[wait time="450"]
[click_next]


[choice_button mode="1" choice1="決定的な証拠もあります。" jump1="*jump_81" storage="07_ending_akira.ks"]
*jump_81

[chara_part name="akira" face="eyeclose"]

;証拠3選択肢

[choice_button mode="3" choice3="その耳です。" jump3="*mimi" choice1="その杖です。" jump1="*tue" choice2="その尻尾です。" jump2="*sippo" storage="07_ending_akira.ks"]

*sippo

[wait time="600"]
[playse storage="SE_Hit_02.wav" loop="false"]
[talk name="akira" face="respond" ]
尻尾がどうかしましたか？
[wait time="450"]
[click_next]

[talk ]
[choice_button mode="1" choice1="実は尻尾がムチのように伸びて……" jump1="*sippo_1" storage="07_ending_akira.ks"]

*sippo_1

[talk ]
……
[wait time="450"]
[click_next]
（伸びたからと言って何ができるのだろう）
[wait time="450"]
[click_next]

[jump target="*jump_81"]

*mimi
[wait time="600"]
[playse storage="SE_Hit_02.wav" loop="false"]
[talk name="akira" face="respond" ]
耳がどうかしましたか？
[wait time="450"]
[click_next]

[talk ]
[choice_button mode="1" choice1="実は耳がドリルになっていて壁に穴を……" jump1="*mimi_1" storage="07_ending_akira.ks"]

*mimi_1

[talk ]
……
[wait time="450"]
[click_next]
（それなら音で怪しまれるはずだ）
[wait time="450"]
[click_next]

[jump target="*jump_81"]

*tue

[wait time="1500"]
[talk name="akira" face="eyeclose" ]
杖……ですか。
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[wait time="1000"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="廊下で不審な足跡を見つけました。" jump1="*tue_1" storage="07_ending_akira.ks"]
*tue_1
[wait time="800"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="それはメイドさんの靴なんですが……" jump1="*tue_2" storage="07_ending_akira.ks"]
*tue_2
[wait time="1000"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="その脇には小さな丸い窪みがあって。" jump1="*tue_3" storage="07_ending_akira.ks"]
*tue_3
[wait time="1200"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="丸い窪み、お姉さんの杖ではありませんか？" jump1="**tue_4" storage="07_ending_akira.ks"]
*tue_4
[wait time="1000"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="あなたはメイドさんの靴を履き――" jump1="**tue_5" storage="07_ending_akira.ks"]
*tue_5
[wait time="1500"]
[playse storage="SE_Fall_06.wav" loop="false"]
[choice_button mode="1" choice1="彼女たちに罪をなすり付けようとした。" jump1="**tue_6" storage="07_ending_akira.ks"]
*tue_6


[wait time="1000"]
[fadeoutbgm time="2000"]
[talk name="akira" face="normal"]
ふむ――こうもあっさりと暴かれてしまうとは、驚きました。
[emo name="akira" emo="twinkle"]
[wait time="1000"]
[l][cm]

[talk name="akira" face="eyeclose"]
[act name="momoi" act="greeting" wait="false"]
先生のおっしゃる通りです。ええ――
[wait time="450"]
[click_next]

[fadeinbgm storage="Theme_114.ogg" volume="25" time="3000"]
[unload storage="Theme_19.ogg"]

[talk name="akira" face="respond"]
プリンはこの[ruby text="わたくし"]私――慈愛の怪盗が、たしかに頂戴いたしました。
[emo name="akira" emo="music"]
[wait time="300"]
[click_next]

[talk name="akira" face="eyeclose"]
ふふっ。偽装工作についても、まさにその通りですよ。
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
それじゃあ車の故障というのも嘘で、はじめから……？
[emo name="midori" emo="question"]
[wait time="300"]
[click_next]

[talk name="aris" face="08"]
[act name="aris" act="hophop" wait="false"]
プリンを盗むためにやって来たのですね！
[emo name="aris" emo="upset"]
[wait time="300"]
[click_next]

[talk name="akira" face="respond"]
[act name="akira" act="greeting" wait="false"]
とはいえご挨拶をかね、きちんと予告はしましたよ。
[wait time="450"]
[click_next]

[talk ]
[hide name="midori" wait="true"]

[app name="yuzu" pos="3" wait="true"]
[wait time="600"]

[talk name="yuzu" face="10"]
[act name="yuzu" act="shake" wait="false"]
じゃあ今朝見た変な手紙って、もしかして予告状……？
[wait time="450"]
[click_next]

[talk ]
[hide name="aris" wait="true"]

[app name="momoi" pos="2" wait="true"]
[wait time="600"]

[talk name="momoi" face="08"]
[act name="momoi" act="jump" wait="false"]
よくわからないけど、犯人がわかったなら捕まえるまで！みんないくよ！
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
お待ち下さい、お嬢さんがた。[ruby text="わたくし"]私は逃げも隠れもいたしません。
[wait time="450"]
[click_next]


[talk name="akira" face="eyeclose"]
いえ、それどころかこの事件の真相に興味が湧いてきたくらいです。
[emo name="akira" le"]
[wait time="800"]
[l][cm]

[choice_button mode="1" choice1="どういうこと？" jump1="*jump_83" storage="07_ending_akira.ks"]
*jump_83

[talk name="akira" face="normal"]
[act name="akira" act="greeting" wait="false"]
先生のご慧眼には感服いたしました。
[emo name="akira" emo="heart"]
[wait time="300"]
[click_next]

[talk name="akira" face="eyeclose"]
[act name="akira" act="hophop" wait="false"]
ええ――だからこそ、あえて申し上げましょう。
[wait time="450"]
[click_next]

[talk name="akira" face="respond"]
たしかに[ruby text="わたくし"]私は、この屋敷にプリンが届く日を把握して訪れました。
[wait time="450"]
[click_next]

[talk name="akira" face="serious"]
ですが――このような状況でプリンが消えた場合、真っ先に誰が疑われると思いますか？
[emo name="akira" emo="question"]
[wait time="300"]
[click_next]

[talk name="akira" face="respond"]
シャーレの先生を除けば、部外者は[ruby text="わたくし"]私一人です。
[wait time="450"]
[click_next]

[talk name="akira" face="eyeclose"]
そうなれば必然的にこちらに目が向く。あまりにもリスクが大きすぎます。
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="つまり？" jump1="*jump_84" storage="07_ending_akira.ks"]
*jump_84

[talk name="akira" face="respond"]
簡単な話です。ようは偽装工作ですよ。
[emo name="akira" emo="respond"]
[wait time="300"]
[click_next]

[talk name="akira" face="smile"]
この屋敷を離れる時まで、事件が発覚しなければいい。
[emo name="akira" emo="music"]
[wait time="300"]
[click_next]

[talk name="akira" face="normal"]
[act name="akira" act="hophop" wait="false"]
ですので、冷蔵庫のプリンを偽物と入れ替えたのです。
[wait time="450"]
[click_next]

[talk ]
[chara_move time="800" wait="true" anim="true" left="-100" name="akira"]
[wait time="300"]
[app name="midori" pos="4" mode="quick" wait="true"]

[talk name="midori" face="respond"]
え？でもプリンが失くなったって、主様が……。
[wait time="450"]
[click_next]

[talk name="akira" face="eyeclose"]
ええ。とても不思議な話です。だからこそ[ruby text="わたくし"]私も、その真相が知りたい。
[wait time="450"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[app name="akira" pos="3" wait="true"]
[talk name="akira" face="respond"]
それとも……先生？
[wait time="450"]
[click_next]

[talk name="akira" face="normal"]
今この場で、[ruby text="わたくし"]私を捕らえますか？
[wait time="450"]
[click_next]

[talk name="akira" face="smile"]
[act name="akira" act="hophop" wait="false"]
ほらこのとおり。ふふ、捕まえるのなら無防備な今が絶好のチャンスですよ？
[wait time="450"]
[click_next]


さあ、先生？どのような結末をお望みですか？
[emo name="akira" emo="music"]
[wait time="300"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[wait time="1000"]

[talk ]
[choice_button mode="1" choice1="いったいこの屋敷で何が……？" jump1="*jump_85" storage="07_ending_akira.ks"]
*jump_85


[layopt layer="message0" visible="false" wait="true"]
[hide_all]
[hide name="akira" wait="true"]

[wait time="600"]

[talk name=""]
（慈愛の怪盗を名乗る女性は、冷蔵庫にあったプリンを盗んだ）
[wait time="450"]
[click_next]

[talk name=""]
（手の込んだ偽装工作、本人の供述、これらから判断しても間違いないはずだ）
[wait time="450"]
[click_next]

[talk name=""]
（しかし、そうなると入れ替えたというプリンはいったいどこに……？）
[wait time="450"]
[click_next]

[fadeoutbgm time="3000"]
～ The End？ ～
[wait time="450"]
[click_next]

[wait time="1500"]
[playse storage="SE_RetroSuccess_01.wav" loop="false"]
【パスワード】[r]
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

