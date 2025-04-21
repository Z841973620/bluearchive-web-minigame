[preload storage="data/bgm/Theme_03.ogg" single_use="true"]
[bg_effect storage="BG_ForestRailRoad_Fog.jpg" time="1500"]

[skip_button storage="02_intro_ADV_2_1.ks"]

[talk name=""]
[playse storage="SE_Typing_02.wav" loop="false" volume="50"]
（私は連邦捜査部――シャーレの先生）
[wait time="450"]
[click_next]

[talk name=""]
（今日は仲裁役として、遠方の自治区へと車を走らせていたのだが……）
[wait time="450"]
[click_next]

[talk name=""]
（山中で車のタイヤがパンクしてしまい、身動きが取れなくなってしまっていた）
[wait time="450"]
[click_next]

[talk name=""]
（さらに、ここは電波圏外となっており、助けを呼ぶこともできず――）
[wait time="450"]
[click_next]

[bg_effect storage="BG_MudFlat_cloudy.jpg" time="2000"]

[talk name=""]
[playse storage="SE_Typing_02.wav" loop="false" volume="50"]
（加えて空には重い雲が立ち込め、日が暮れる時刻も近づいている）
[wait time="450"]
[click_next]

[talk name=""]
（そこで車を残し、助けを求めるべく山深くへと足を踏み入れることに）
[wait time="450"]
[click_next]

[bg_effect storage="BG_ForestRoad_Night.jpg" time="2000"]

[talk name=""]
[playse storage="SE_Typing_02.wav" loop="false" volume="50"]
（そして３０分ほど経ったその時――）
[wait time="450"]
[click_next]

[talk ]

[choice_button mode="1" choice1="ここは……？" jump1="*jump_09" storage="02_intro_ADV_2_1.ks"]
*jump_09

[talk name=""]
（不意に視界が開けると、どこか不気味に見える洋館が姿を現した）
[wait time="450"]
[click_next]

[talk name=""]
（とはいえ今にも雨が降り出しそうだったため、贅沢は言えない）
[wait time="450"]
[click_next]

[talk name=""]
（私は屋敷の扉を叩き、住人に助けを求めることにした）
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
車がパンク……それは災難でしたね。
[wait time="600"]
[click_next]

;◆名前表記は『？？？』にした方が…それだと表情が読み込まれないです
[talk name="yuzu" hatena="true" face="smile"]
でも、ここにたどり着けたのは、すごく運が良いですよ。
[wait time="600"]
[click_next]

;◆名前表記は『？？？』にした方が…それだと表情が読み込まれないです
[talk name="yuzu" hatena="true"  face="smile"]
この辺りは、他に民家がありませんから。
[wait time="600"]
[click_next]

[talk ]

[chara_move time="800" wait="true" anim="true" left="-20" name="yuzu" ]
[app name="aris" pos="4" wait="true"]
[wait time="300"]

;名前？？？
[talk name="aris" hatena="true"]
なので助けを呼ぶのは明日にして、今夜は泊まっていくことを、アリスはオススメします！
[wait time="600"]
[click_next]


;名前？？？
[choice_button mode="1" choice1="ご迷惑ではないですか？" jump1="*jump_10" storage="02_intro_ADV_2_1.ks"]
*jump_10

[talk name="yuzu" hatena="true"  face="07"]
大丈夫です！ちょうどあちらの方も、泊まっていきますから。
[wait time="600"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[app name="akira" pos="3" wait="true"]
;◆立ち絵は仮面無しでお願いします
[wait time="300"]
;名前？？？

[talk ]
（メイドさんの視線の先には、白い服に身を包んだ女性がいる）
[wait time="450"]
[click_next]

[talk name="akira" face="respond" hatena="true"]
それに、外は大雨ですよ？行くあてはあるんですか？
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
そうそう。遭難しちゃうよ？
[wait time="600"]
[click_next]

[talk ]

;名前？？？
[choice_button mode="1" choice1="？" jump1="*jump_11" storage="02_intro_ADV_2_1.ks"]
*jump_11

[talk name=""]
（見ると、そっくりな顔をしたメイドが二人、階段から降りてくるところだった）
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
ユズ、戸締まりの確認と客室の準備は終わったよ。
[wait time="600"]
[click_next]

;名前？？？
[talk name="midori" hatena="true"]
あっ。でも主様の寝室、窓の鍵が壊れて開かなくなってたから。
[wait time="600"]
[click_next]

[talk name="midori" face="normal" hatena="true" ]
明日、雨が上がってたら直しておくよ。
[wait time="600"]
[click_next]

;名前？？？
[talk name="yuzu" hatena="true" face="respond"]
モモイもミドリもお疲れ様。でも戻ってきたばっかりで悪いんだけど……
[wait time="600"]
[click_next]

;名前？？？
[talk name="midori" face="respond" hatena="true"]
うん。そっちの人も泊まっていくんでしょ？ちゃんと聞こえてたよ。
[wait time="600"]
[click_next]

;名前？？？
[talk name="momoi" hatena="true" face="normal"]
客室の準備なら、私たちに任せといて！
[wait time="600"]
[click_next]

[talk ]

[layopt layer="message0" visible="false" wait="true"]
[hide_all]

;名前？？？
[choice_button mode="1" choice1="よろしくお願いします。" jump1="*jump_12" storage="02_intro_ADV_2_1.ks"]
*jump_12

[wait time="400"]

[app name="momoi" pos="3" mode="quick" wait="true"]
[talk name="momoi" face="smile"]
[emo name="momoi" emo="chat"]
あはは、そんなにかしこまらなくていいよ。あ、私はモモイ、よろしくね！
[wait time="450"]
[click_next]

[talk ]

[chara_move time="800" wait="true" anim="true" left="-170" name="momoi"]

[wait time="300"]
[app name="midori" pos="4" mode="quick" wait="true"]

[talk name="momoi" face="normal"]
こっちは妹のミドリ。
[wait time="450"]
[click_next]

[talk name="midori" face="eyeclose"]
はじめまして、ミドリです。
[act name="midori" act="greeting" wait="true"]
[wait time="450"]
[click_next]

[talk ]
[layopt layer="message0" visible="false" wait="true"]

[hide_all]

[app name="aris" pos="3" wait="true"]
[talk name="aris" face="smile"]
[emo name="aris" emo="music"]
はい！アリスはアリスです！よろしくお願いします！
[wait time="300"]
[click_next]

[talk ]
[wait time="300"]

[chara_move time="800" wait="true" anim="true" left="-170" name="aris"]

[wait time="300"]

[app name="yuzu" pos="4" mode="quick" wait="true"]
[talk name="yuzu" face="09"]
えっと……ユズです。よろしくお願いします。
[wait time="300"]
[click_next]

[talk ]

[choice_button mode="1" choice1="私は――" jump1="*jump_13" storage="02_intro_ADV_2_1.ks"]
*jump_13

[talk name="？？？" face="normal"]
お話中失礼します。偶然耳に入ってしまったのですが……。
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
今宵は貴方もこちらのお屋敷でお世話になるとか？
[wait time="300"]
[click_next]

[talk ]

[choice_button mode="1" choice1="車のタイヤがパンクしてしまって。" jump1="*jump_14" storage="02_intro_ADV_2_1.ks"]
*jump_14

[talk name="akira" face="eyeclose"]
[act name="akira" act="greeting" wait="false"]
そうでしたか。実は[ruby text="わたくし"]私の車も、バッテリーが上がってしまい……。
[wait time="450"]
[click_next]

[talk name="akira" face="08_respond_02"]
数時間前に、このお屋敷にたどり着いたというわけです。
[wait time="450"]
[click_next]



[choice_button mode="1" choice1="お互い災難でしたね。" jump1="*jump_15" storage="02_intro_ADV_2_1.ks"]
*jump_15

[talk name="akira" face="normal"]
[emo name="akira" emo="chat"]
ですがここまで歩いて来られたのでしたら、さぞかしお疲れでしょう。
[wait time="300"]
[click_next]

[talk name="akira" face="15_embarassed_02"]
[ruby text="わたくし"]私は後で構いませんので、先にお部屋へ案内していただいてはいかがです？
[wait time="300"]
[click_next]

[talk name="akira" face="respond"]
お嬢さん方も、それでよろしいですか？
[wait time="450"]
[click_next]

[talk ]

[chara_move time="800" wait="true" anim="true" left="-50" name="akira"]
[app name="yuzu" pos="4" mode="quick" wait="true"]

[talk name="yuzu" face="respond"]
[act name="momoi" act="greeting" wait="false"]
はい。お姉さんが問題ないなら構いません。
[wait time="450"]
[click_next]

[talk name="akira" face="16"]
[emo name="akira" emo="twinkle"]
では、[ruby text="わたくし"]私のことはお気になさらず。どうぞお部屋の方へ。
[wait time="1000"]
[l][cm]

[talk ]
[wait time="300"]

[choice_button mode="1" choice1="お気遣いありがとうございます。" jump1="*jump_16" storage="02_intro_ADV_2_1.ks"]
*jump_16

[hide_all]

[layopt layer="message0" visible="false" wait="true"]

[fadeoutbgm time="500"]
[wait time="500"]

[bg_effect storage="BG05_LuxuriousRooms_Night.jpg" time="2000" wait="true"]

[talk name=""]
（親切な女性のおかげで、ルームメイクを待たずして客室へ通された）
[wait time="300"]
[click_next]

[talk name=""]
（そして山中を彷徨った疲れもあってか、ふかふかのソファに腰を下ろすと――）
[wait time="450"]
[click_next]

[talk ]
（いつの間にか、浅い眠りに落ちてしまっていた……）
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
コン、コン
[wait time="450"]
[click_next]

[talk name=""]
（控えめなノックの音で目が覚める）
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]

[bg_effect storage="BG05_LuxuriousRooms_Night.jpg" time="1000"]

[choice_button mode="1" choice1="どうぞ。" jump1="*jump_17" storage="02_intro_ADV_2_1.ks"]
*jump_17

[wait time="800"]

[playse storage="SE_DoorSlowOpen_01.wav" loop="false" volume="20" wait="true"]

[wait time="1000"]

[talk name=""]
（時間を確認すると、部屋に入ってから30分ほどが経過していた）
[wait time="450"]
[click_next]

[wait time="300"]

[fadeinbgm storage="Theme_04.ogg" volume="25" time="3000"]

[app name="yuzu" pos="3" wait="true"]

[talk name="yuzu" face="respond"]
あの、すみません……もしかしてお休みでしたか？
[wait time="450"]
[click_next]

[talk ]

;立ち絵表示
[choice_button mode="1" choice1="うとうとしていただけです。" jump1="*jump_18" storage="02_intro_ADV_2_1.ks"]
*jump_18
[choice_button mode="1" choice1="ところで何か用があったのでは？" jump1="*jump_19" storage="02_intro_ADV_2_1.ks"]
*jump_19

[talk name="yuzu" face="10"]
[act name="yuzu" act="shake" wait="false"]
[emo name="yuzu" emo="sweat"]
いえ、その……用というほどのことでもなくて……
[wait time="300"]
[click_next]

[talk name="yuzu" face="embarrass"]
[act name="yuzu" act="hophop" wait="false"]
[emo name="yuzu" emo="upset"]
す、すみません……！やっぱり持ち場に戻ります～！
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
待ってくださいユズ！せっかく用意したお茶とお菓子が無駄になってしまいます！
[wait time="300"]
[click_next]

[talk ]

[choice_button mode="1" choice1="お茶とお菓子？" jump1="*jump_20" storage="02_intro_ADV_2_1.ks"]
*jump_20

[talk name="aris" face="def"]
夕飯の支度はもう少しかかってしまうので、ユズが紅茶とクッキーを持っていこうという話になったんです！
[wait time="450"]
[click_next]

[talk ]

[choice_button mode="1" choice1="わざわざありがとうございます。" jump1="*jump_21" storage="02_intro_ADV_2_1.ks"]
*jump_21

[talk name="yuzu" face="normal"]
い、いえいえ！大したおもてなしもできずすみません……！
[wait time="450"]
[click_next]

[talk ]
[layopt layer="message0" visible="false" wait="true"]
[hide_all]
[hide name="yuzu" wait="true"]

[talk name=""]
（二人は手際よくカップに紅茶を注ぐと、ソーサーに乗せて差し出してくる）
[wait time="450"]
[click_next]

[app name="yuzu" width="800" left="200" top="100" face="smile" mode="quick" wait="true"]

[talk name="yuzu" face="smile"]
お口に合うといいんですが……
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[playse storage="SE_Eat_01.wav" loop="false"]
[wait time="1400"]

[choice_button mode="1" choice1="すごく美味しい……！" jump1="*jump_22" storage="02_intro_ADV_2_1.ks"]
*jump_22

[wait time="300"]

[talk name="yuzu" face="07" wait="true"]
[emo name="yuzu" emo="heart"]
……！気に入っていただけたみたいで、よかったです！
[wait time="300"]
[click_next]

[talk name=""]
（紅茶の苦味と、クッキーのほのかな甘みが絶妙にマッチしている）
[wait time="450"]
[click_next]


[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[talk name=""]
（そんな少し遅いティータイムに、舌鼓を打っていた時だった）
[wait time="450"]
[click_next]

[fadeoutbgm time="3000"]

[wait time="600"]

[playse storage="SE_Throw_01.wav" loop="false"]
[talk name="？？？" face="def"]
きゃああああああぁあぁ～～～～っ！！！！
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]

[app name="aris" pos="4" face="serious" wait="true"]
[wait time="300"]
[app name="yuzu" pos="2" face="serious" wait="true"]

;表記　？？？
;セリフのみ
[talk name=""]
（どこかからともなく聞こえてきた悲鳴に驚き、危うくカップを落としそうになる）
[emo name="aris" emo="exclaim"]
[emo name="yuzu" emo="exclaim"]
[wait time="400"]
[click_next]



[choice_button mode="1" choice1="今の悲鳴は！？" jump1="*jump_23" storage="02_intro_ADV_2_1.ks"]
*jump_23

[talk name="yuzu" face="10"]
この屋敷の主様です……！すみません、様子を見てきます！
[wait time="450"]
[click_next]

[talk ]

[playse storage="SE_Run_05.wav" loop="false" wait="true"]
[move wait="true" pos="right" name="yuzu"]
[wait time="300"]
[talk name="aris" face="serious"]
アリスも行きます！
[wait time="450"]
[click_next]

[talk ]

[playse storage="SE_Run_05.wav" loop="false" wait="true"]
[move wait="true" pos="right" name="aris"]
[wait time="300"]
[talk name=""]
（部屋を飛び出していく二人の後を追って、こちらも廊下へと繰り出した）
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