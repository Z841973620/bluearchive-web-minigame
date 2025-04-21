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
先生、いらっしゃい！待ってたよ！
[act name="momoi_def" act="hophop"]
[wait time="450"]
[click_next]

[talk ]

[choice_button mode="1" choice1="ごめんね、なかなか仕事が片付かなくて。" jump1="*jump_01" storage="01_intro_ADV_1.ks"]
*jump_01

;先生のセリフはすべて選択肢で想定しています。
;（）はゲーム内のメイドイベでも多用されていたモノローグ扱いです。
[talk name="momoi_def" face="smile"]
[act name="momoi_def" act="shake" wait="false"]
[emo name="momoi_def" emo="upset"]
ううん、気にしないで……先生が来てくれただけで、私は……ガクッ……。
[wait time="300"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]

[act name="momoi_def" act="falldownR" wait="true"]

[choice_button mode="1" choice1="大丈夫！？" jump1="*jump_02" storage="01_intro_ADV_1.ks"]
*jump_02

[hide_all]

[app name="momoi_def" pos="3" from="bottom" wait="true" face="smile"]

[talk name="momoi_def" face="embarrass"]
危ない危ない。寝落ちするところだった。
[wait time="450"]
[click_next]

;これ以降読み込まなくなります…

[talk name="momoi_def" face="normal"]
[act name="momoi_def" act="hophop" wait="false"]
あ、無理してるとかじゃないから、心配いらないよ。
[wait time="450"]
[click_next]

[talk name="momoi_def" face="smile"]
[emo name="momoi_def" emo="twinkle"]
だってこれは、私たちが頑張った証なんだから！
[wait time="1000"]
[l][cm]

[choice_button mode="1" choice1="証？そういえば他のみんなは？" jump1="*jump_03" storage="01_intro_ADV_1.ks"]
*jump_03

[talk name="momoi_def" face="respond"]
あ、そうだ。先生を呼んだ理由も説明してなかったね。
[wait time="300"]
[click_next]

[talk name="momoi_def" face="eyeclose"]
[act name="momoi_def" act="hophop" wait="false"]
実はついさっきまで、私たちが作った最新作のデバッグをしてたんだ。
[wait time="300"]
[click_next]

[talk name="momoi_def" face="normal"]
先生をびっくりさせようと思って、こっそりとね。
[wait time="450"]
[click_next]

[talk ]

[choice_button mode="1" choice1="最新作……！？ものすごく気になる！" jump1="*jump_04" storage="01_intro_ADV_1.ks"]
*jump_04

[talk name="momoi_def" face="smile"]
[act name="momoi_def" act="hophop" wait="false"]
[emo name="momoi_def" emo="chat"]
でしょでしょ！先生ならそう言ってくれると思ったよ！
[wait time="300"]
[click_next]

[talk name="momoi_def" face="normal"]
そういうわけで、徹夜で頑張ったミドリたちには先に帰ってもらうことにしたんだ。
[wait time="700"]
[l][cm]

[talk name="momoi_def" face="embarrass"]
アリスは先生が来るのを待つって言ってたんだけど……。
[wait time="450"]
[click_next]

[talk name="momoi_def" face="09"]
[act name="momoi_def" act="greeting" wait="false"]
[emo name="momoi_def" emo="sweat"]
ユズが完全にダウンしちゃったから、部屋まで運んでもらってるの。
[wait time="300"]
[click_next]

[talk ]

[choice_button mode="1" choice1="そっか。みんなお疲れさま。" jump1="*jump_05" storage="01_intro_ADV_1.ks"]
*jump_05

[talk name="momoi_def" face="smile"]
[emo name="momoi_def" le"]
えへへっ。ありがと、先生。
[wait time="300"]
[click_next]

[talk name="momoi_def" face="normal"]
でもその言葉は、最新作をプレイしてから言ってほしいかな。
[wait time="450"]
[click_next]

[talk ]

[choice_button mode="1" choice1="どんなゲームなの？" jump1="*jump_06" storage="01_intro_ADV_1.ks"]
*jump_06

[talk name="momoi_def" face="eyeclose"]
[act name="momoi_def" act="hophop" wait="false"]
ふっふっふ。それはね……。
[wait time="450"]
[click_next]
[layopt layer="message0" visible="false" wait="true"]

[hide name="momoi_def"]

[clearstack]
[app name="momoi_def" width="1200" left="-130" top="50" mode="quick" wait="false"]
;立ち絵サイズ大きく

[talk name="momoi_def" face="normal"]
なんと！ゲーム開発部が送る、本格ミステリーだよ！
[emo name="momoi_def" emo="twinkle"]
[wait time="1000"]
[l][cm]

[choice_button mode="1" choice1="ミステリー？" jump1="*jump_07" storage="01_intro_ADV_1.ks"]
*jump_07

[layopt layer="message0" visible="false" wait="true"]

[hide name="momoi_def"]
[wait time="300"]
[app name="momoi_def" pos="3" mode="quick"]

;立ち絵サイズ通常に戻す

[talk name="momoi_def" face="respond"]
そう！でも、ミステリーなんて作り慣れてないからさ。
[wait time="500"]
[l][cm]

[talk name="momoi_def" face="embarrass"]
[emo name="momoi_def" emo="sweat"]
ちゃんと仕様どおりにプレイできるか、ちょっと不安で。
[wait time="300"]
[click_next]

[talk name="momoi_def" face="normal"]
[emo name="momoi_def" emo="chat"]
だから先生にプレイしてもらって、感想レポートを作ってもらえたらなーって！
[wait time="300"]
[click_next]

[talk name="momoi_def" face="respond"]
もちろん先生が忙しいのは知ってるし、無理はしなくていいんだけど。どうかな？
[wait time="800"]
[l][cm]

[talk ]

[choice_button mode="1" choice1="私でよければ喜んで！" jump1="*jump_08" storage="01_intro_ADV_1.ks"]
*jump_08

[talk name="momoi_def" face="smile"]
[act name="momoi_def" act="hophop" wait="false"]
[emo name="momoi_def" emo="music"]
さっすが先生！ありがと！
[wait time="300"]
[click_next]

;
;[hide_all]

[talk name="momoi_def" face="def"]
そしたら……はい、これコントローラー。
[wait time="450"]
[click_next]

[talk name="momoi_def" face="normal"]
基本的には、ストーリーの進行に合わせて操作するだけで大丈夫だよ。
[wait time="450"]
[click_next]

[playse storage="SE_Typing_02.wav" loop="false"]
[talk name="momoi_def" face="smile"]
それじゃあゲーム……スタート♪
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
