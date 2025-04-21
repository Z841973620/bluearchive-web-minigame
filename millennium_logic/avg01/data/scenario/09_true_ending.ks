[iscript]
        f.bukatsu = '';
        f.ao_width = 1000;
        f.ao_offset_L = -10;
        f.ao_top = 150;
        f.ao_size = 1;
        f.ao_offset_emo_L = 0;
        f.ao_offset_emo_T = 20;     
        f.ao  = 'アオ' + ' ' + '<span class="bukatsu">'  + f.bukatsu + '</span>';
        
[endscript]

[chara_new name="ao" jname="アオ" storage="chara/ao.png" width="&f.ao_width"]
[chara_layer name="ao" part="body" id="def" storage="chara/ao.png" zindex=1 ]

[bg_effect storage="black.jpg"]

[playse storage="SE_PrisonDoor_01_Close.wav" loop="false"]
[talk name=""]
（スイッチを押した途端、本棚が動き、隠し通路が現れた）
[wait time="450"]
[click_next]

[fadeinbgm storage="Theme_48.ogg" time="2000" volume="25"]
[talk name=""]
（証拠は揃った）
[wait time="450"]
[click_next]

[talk name=""]
（容疑者の自白も得た）
[wait time="450"]
[click_next]

[talk name=""]
（しかし事件の経緯と供述は食い違っている）
[wait time="450"]
[click_next]

[talk name=""]
（もし容疑者の供述に嘘がないとすれば、すり替えられたプリンを盗んだ犯人がいるわけだが……）
[wait time="450"]
[click_next]

[talk name=""]
（この先にはきっと答えがあるに違いない……）
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[wait time="500"]

[choice_button mode="1" choice1="ここは……！？" jump1="*jump_90" storage="09_true_ending.ks"]
[wait time="500"]
*jump_90

[bg_effect storage="BG_GameDevRoom_Night.jpg"]
[talk name=""]
（人が生活している痕跡がある）
[wait time="450"]
[click_next]

[talk name=""]
（こんなところに人が？）
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[wait time="500"]

[talk name="ao" hatena="true"]
あーあ、まさか見つかっちゃうなんてね。
[wait time="450"]
[click_next]

;表記は？？？
[choice_button mode="1" choice1="誰！？" jump1="*jump_91" storage="09_true_ending.ks"]
*jump_91

[talk name="ao" hatena="true"]
こんにちは、シャーレの先生。私の名前は才羽・アルティメット・オーバーゴッド。
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
いいえ、今は才羽アオと名乗っているわ。
[wait time="600"]
[click_next]

[talk ]
[hide name="ao"]

[layopt layer="message0" visible="false" wait="true"]
[wait time="600"]

[choice_button mode="1" choice1="才羽……アオ！？" jump1="*jump_92" storage="09_true_ending.ks"]

*jump_92
[wait time="500"]
[playse storage="SE_FootStep_04b.wav" loop="false"]

[app name="momoi" pos="3" face="respond" wait="true"]
[wait time="600"]

[talk name="momoi" face="08"]
[act name="momoi" act="shake" wait="true"]
うそ……どうしてここにアルティメット・オーバーゴッドお姉ちゃんが！？
[wait time="450"]
[click_next]

[talk ]
[hide name="momoi"]

[layopt layer="message0" visible="false" wait="true"]
[wait time="600"]

[choice_button mode="1" choice1="お姉ちゃん！？" jump1="*jump_93" storage="09_true_ending.ks"]

*jump_93

[app name="ao" pos="3" mode="quick" wait="true"]
[act name="ao" act="hophop"]
[talk name="ao" face="def"]
やめてモモイ！その名前は捨てたの！
[wait time="450"]
[click_next]

今の私は……この世界をリセットするために覚醒した、神をも越える存在！
[wait time="450"]
[click_next]

[talk name="ao" face="def"]

才羽アオなんだから！！
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
ど、どういうこと？モモイとミドリは双子じゃなかったの！？
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
それは……ごめんね、ユズちゃん。今まで秘密にしてたけど、私たちは三つ子なの。
[wait time="450"]
[click_next]

[talk name="midori" face="eyeclose"]
でもその思想があまりにも邪悪すぎるって理由で、一族から抹消された存在……。
[wait time="450"]
[click_next]

[talk name="midori" face="13"]
それがアルティメット・オーバーゴッドお姉ちゃんだよ。
[wait time="450"]
[click_next]

[talk ]
[chara_move time="800" wait="true" anim="true" left="-60" name="midori"]
[wait time="300"]

[app name="momoi" pos="4" wait="true" mode="quick" face="serious"]

[talk name="momoi" face="serious"]
でもまさか、こんなところで再会するなて…
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[hide_all]
[wait time="600"]
[playse storage="SE_FootStep_04b.wav" loop="false"]
[app name="aris" pos="3" wait="true"]
[talk name="aris" face="08"]
[act name="aris" act="hophop" wait="true"]
アルティメット・オーバーゴッドは、どうして世界をリセットしようとするんですか！
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[hide name="aris"]

[app name="ao" mode="quick"]
[talk name="ao"]

それは……私、思い出してしまったの。遥か遠く、４回目の転生を遂げた時代を。
[wait time="450"]
[click_next]

私は最初の転生の直前、悪魔を召喚して不老不死を手に入れた。
[wait time="450"]
[click_next]

けれどその代償として、プリンを食べ続けなければ生きられない体になってしまったの。
[wait time="450"]
[click_next]

[talk "]
[hide name="ao"]
[layopt layer="message0" visible="false" wait="true"]

[app name="momoi" mode="quick"]
[talk name="momoi" face="embarrass"]
プリン……ってことは、消えたプリンの謎って！
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
おや？あそこに見えるのは、空になったプリンのカップですね。
[wait time="450"]
[click_next]

[talk ]
[hide name="akira"]
[layopt layer="message0" visible="false" wait="true"]

[choice_button mode="1" choice1="まさか今回の事件の真犯人は！？" jump1="*jump_94" storage="09_true_ending.ks"]
*jump_94

[app name="ao" mode="quick"]
[talk name="ao" face="def"]

フフ……見られてしまったからには、生きて帰すわけにはいかない！
[wait time="450"]
[click_next]

私の力で世界をリセットしてやる！
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
光よ！！
[wait time="1000"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide name="aris" wait="true"]

[talk name=""]
（その瞬間、アリスさんが手にした光の剣が、アオの体を貫いた）
[wait time="1600"]
[click_next]

[wait time="500"]
[reset_camera]
[wait time="500"]

[app name="ao" mode="quick" wait="true"]
[act name="ao" act="stiff"]
[talk name="ao"]
グハッ……！貴様は、まさか！？
[wait time="450"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide name="ao" wait="true"]
[wait time="600"]

[fadeinbgm storage="Theme_45.ogg" time="3000" volume="25"]

[app name="aris" face="serious" wait="true"]
[wait time="600"]
[talk name="aris" face="def"]
気付くのが遅かったようですね。
[act name="aris" act="greeting"]
[wait time="450"]
[click_next]

[talk name="aris" face="smile"]
[act name="aris" act="jump"]
アリスは偽りの神を討ち倒すため、転生を繰り返す伝説の勇者です！
[wait time="450"]
[click_next]

[wait time="300"]
[layopt layer="message0" visible="false" wait="true"]
[hide name="aris" wait="true"]
[wait time="400"]

[app name="ao"]
[talk name="ao"]
勇者？なぜここに勇者が……！いや、どうして私がここにいるとわかった！？
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]

[wait time="1000"]
[talk name="？？？" tag="true"]
どうして？ふふっ、それは愚問というものですよ。
[wait time="450"]
[click_next]

[talk name="ヒマリ" tag="true"]
この超天才清楚系病弱美少女ハッカー、明星ヒマリに解けない謎はありませんから。
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

[talk name="アリス・モモイ・ミドリ・ユズ" tag="true"]
[chara_part name="aris" face="smile"]
[chara_part name="momoi" face="smile"]
[chara_part name="midori" face="smile"]
[chara_part name="yuzu" face="smile"]
主様！！
[wait time="450"]
[click_next]

[talk name="ヒマリ" tag="true"]

さあ皆さん、特異点を修正し、時代を本来あるべき姿に戻しましょう。
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
うおおおおお！いっけー！ハイパーモモイトルネード！
[wait time="450"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide name="ao" wait="true"]
[wait time="500"]

[app name="yuzu" pos="2" face="embarrass" wait="true"]
[talk name="yuzu" face="embarrass"]
え、えいっ！カビ臭い雑巾！
[wait time="450"]
[click_next]

[talk ]
[app name="midori" pos="4" face="serious" wait="true"]
[talk name="midori" face="serious"]
じゃあ私は牛乳臭い雑巾！
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[app name="aris" pos="3" wait="true"]
[talk name="aris" face="serious"]
[act name="aris" act="jump"]
トドメの一撃……いきます！光よ！！
[wait time="400"]
[playse storage="SE_BigLaser_02.wav" loop="false" wait="true"]
[wait time="300"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[app name="ao" wait="true"]
[talk name="ao" face="def" tag="false"]
ぐおああああ！この私が……こんなところで、負けるなんて、ぎゃあああああ！
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]

[act name="ao" act="shake"]
[act name="ao" act="falldownL" wait="true"]
[wait time="600"]
[hide name="ao" wait="true"]
[bg_effect storage="black.jpg"]

[talk name=""]
（こうして盗まれたプリンの謎は解決し――）
[wait time="450"]
[click_next]

[talk name=""]
（先生と勇者アリスの活躍により、世界に平和が戻ったのだった）
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
        f.bukatsu = 'ゲーム開発部';
        f.momoi_def_width = 900;
        f.momoi_def_offset_L = 110;
        f.momoi_def_top = 140;
        f.momoi_def_size = 1;
        f.momoi_def_offset_emo_L = 110;
        f.momoi_def_offset_emo_T = 10;     
        f.momoi_def  = 'モモイ' + ' ' + '<span class="bukatsu">'  + f.bukatsu + '</span>';
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
先生、お疲れさま！今の隠しエンディングで、完全クリアだよ！
[wait time="450"]
[click_next]

[talk name="momoi_def" face="normal"]
どう？先生はこの真犯人を予想できた？
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="ゲーム開発部らしいというか……。" jump1="*jump_95" storage="09_true_ending.ks"]
*jump_95
[choice_button mode="1" choice1="これを予想するのは不可能かも？" jump1="*jump_96" storage="09_true_ending.ks"]
*jump_96
[talk name="momoi_def" face="eyeclose"]
そこは本格ミステリーだからね！簡単に犯人がわかっちゃったら面白くないでしょ？
[wait time="450"]
[click_next]

[talk name="momoi_def" face="def"]
でもこれで落ちバグがないことは確認できたし。
[wait time="450"]
[click_next]

[talk name="momoi_def" face="smile"]
あとは先生からのFBを待ってるから！感想も含めてよろしくね！
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