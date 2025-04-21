
[fadeinbgm storage="Theme_19.ogg" volume="25" time="3000"]

[bg_effect storage="BG06_PartyRoom.jpg"]

[wait time="600"]
[playse storage="SE_Fall_06.wav" loop="false"]
[choice_button mode="1" choice1="ミドリさん、あなたが犯人ではありませんか？" jump1="*jump_71" storage="06_ending_midori.ks"]

*jump_71
[app name="midori" pos="3" face="13" wait="true"]

[talk name="midori" face="13"]
[emo name="midori" emo="surprise"]
[act name="midori" act="shake" wait="false"]
わ、私は……！違います！
[wait time="300"]
[click_next]



[choice_button mode="1" choice1="決定的な証拠もあります。" jump1="*jump_72" storage="06_ending_midori.ks"]
*jump_72

[chara_part name="midori" face="13"]

[choice_button mode="3" choice3="その尻尾です。" jump3="*sippo" choice1="そのヘッドホンです。" jump1="*head" choice2="戸締まり担当ですよね？" jump2="*evi" storage="06_ending_midori.ks"]

*sippo
[wait time="600"]
[playse storage="SE_Hit_02.wav" loop="false"]
[talk name="midori"]
尻尾がどう関係してるの？
[wait time="450"]
[click_next]


[choice_button mode="1" choice1="実は尻尾がミドリさんの本体で……" jump1="*sippo2" storage="06_ending_midori.ks"]

*sippo2
[talk ]
……
[wait time="450"]
[click_next]
（あまりにも荒唐無稽な話すぎる）
[wait time="450"]
[click_next]

[jump target="*jump_72"]

*head
[wait time="600"]
[playse storage="SE_Hit_02.wav" loop="false"]
[talk name="midori"]
ヘッドホンがなに？
[wait time="450"]
[click_next]


[choice_button mode="1" choice1="その変身機能で、ここの主に化けていたとか……" jump1="*head2" storage="06_ending_midori.ks"]

*head2
[talk name=""]
……
[wait time="450"]
[click_next]

（いくらなんでも無理矢理すぎた気がする）
[wait time="450"]
[click_next]

[jump target="*jump_72"]

*evi
[wait time="1000"]
[playse storage="SE_HangUp_01.wav" loop="false"]
[talk name="midori" face="12"]
[act name="midori" act="stiff" wait="false"]
それが何ですか？お姉ちゃんもそうですけど。
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[wait time="1000"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="ミドリさんは寝室当番も兼ねていた。" jump1="*evi_1" storage="06_ending_midori.ks"]
*evi_1

[wait time="400"]
[talk name="midori" face="10"]
そ、それが？
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[wait time="1000"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="最初に会った時、寝室の鍵が壊れていると聞きました。" jump1="*evi_2" storage="06_ending_midori.ks"]
*evi_2

[wait time="1200"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="でも寝室を調べたところ鍵は壊れていなかった。" jump1="*evi_3" storage="06_ending_midori.ks"]
*evi_3

[wait time="1500"]
[playse storage="SE_Fall_06.wav" loop="false"]
[choice_button mode="1" choice1="人を近づけないための嘘だったのでは？" jump1="*evi_4" storage="06_ending_midori.ks"]
*evi_4

[wait time="1500"]
[fadeoutbgm time="2000"]
[talk name="midori" face="07"]
[act name="midori" act="shake" wait="false"]
えっと、反論は……
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
ミドリ？どうしたんですか？
[wait time="300"]
[click_next]

[act name="yuzu" act="hophop" wait="false"]
[talk name="yuzu" face="10"]
違うって言わないと、本当に犯人だと思われちゃうよ？
[wait time="450"]
[click_next]

[talk name="momoi" face="07"]
[emo name="momoi" emo="upset"]
そうだよ。ミドリがそんなことするわけないよ。
[wait time="300"]
[click_next]

[talk name="momoi" face="embarrass"]
[emo name="momoi" emo="sweat"]
だって……。
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
……みんな、私を信じてくれるんだね。ありがとう。
[wait time="450"]
[click_next]

[talk name="midori" face="eyeclose"]
[emo name="midori" emo="dot"]
でも……こうなったら、もう言い逃れはできないよ。
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
それじゃあ、本当にミドリが？
[wait time="450"]
[click_next]

[talk name="aris" face="08"]
[act name="aris" act="hophop" wait="false"]
ミドリはいつも優しくアリスにお仕事を教えてくれました！
[wait time="450"]
[click_next]

[talk name="aris" face="embarrass"]
[emo name="aris" emo="sweat"]
そんなミドリが盗み食いをするなんて……。
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
ミドリ……。
[wait time="450"]
[click_next]

[talk name="midori" face="eyeclose"]
お姉ちゃん……ごめんね。
[wait time="450"]
[click_next]

[talk name="momoi" face="09"]
ミドリのバカ。どうしてそんな事を……。
[wait time="450"]
[click_next]

[talk name="midori" face="depressed"]
……ごめんね。
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
先生の言った通りです。
[wait time="450"]
[click_next]

[talk name="midori" face="07"]
窓を出入りできないってことにすれば、疑われないと思ったから……
[wait time="450"]
[click_next]


[talk name="midori" face="10"]
でも別の人に目がいくように、ちゃんと偽装したのに。
[wait time="450"]
[click_next]

[talk name="midori" face="respond"]
でもどうして私が犯人だって気付いたんですか？
[wait time="450"]
[click_next]

[talk ]
……
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[wait time="400"]
[choice_button mode="1" choice1="私はシャーレの先生ですから。" jump1="*jump_74" storage="06_ending_midori.ks"]
*jump_74

[wait time="1000"]
[talk name="midori" face="smile"]
[emo name="midori" emo="music"]
……そっか。シャーレの先生ってすごいんですね。
[wait time="300"]
[click_next]

[talk ]

[choice_button mode="1" choice1="しかしなぜこのような犯行を？" jump1="*jump_75" storage="06_ending_midori.ks"]
*jump_75

[talk name="midori" face="serious"]
なぜって？先生はご存知ですか？このプリンに、どれほどの価値があるのか。
[wait time="450"]
[click_next]

[talk ]

[choice_button mode="1" choice1="価値？" jump1="*jump_76" storage="06_ending_midori.ks"]
*jump_76

[talk name="midori" face="eyeclose"]
あのプリンは、1ヶ月にたった5個しか作られない、幻のプリンと言われているんです。
[wait time="450"]
[click_next]

[talk name="midori" face="respond"]
[emo name="midori" emo="respond"]
さらにはその希少さゆえ、食べた人は幸せになれるとか……。
[wait time="300"]
[click_next]

[talk ]

[choice_button mode="1" choice1="幸せになりたかったんですか？" jump1="*jump_77" storage="06_ending_midori.ks"]
*jump_77

[talk name="midori" face="10"]
だ、だって……一緒に強くなろうねって、お姉ちゃんと二人でゲームを始めたのに。
[wait time="450"]
[click_next]

[talk name="midori" face="07"]
[emo name="midori" emo="upset"]
最近はお姉ちゃんだけレアドロップのアイテムを手に入れて、それを自慢してくるから……。
[wait time="300"]
[click_next]

[talk name="midori" face="embarrass"]
[act name="midori" act="hophop" wait="false"]
悔しかったんです！だから私も運を上げて、お姉ちゃんを見返そうと……！
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
ちょ、二人ともそんな目で私を見ないでよ……！
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
そこで考えたんです。誰も幻のプリンを見たことがないなら――
[wait time="450"]
[click_next]

[talk name="midori" face="serious"]
すり替えても、気付かれないんじゃないかって。
[wait time="450"]
[click_next]

[talk ]
…………
[wait time="450"]
[click_next]


[talk ]
[choice_button mode="1" choice1="すり替えた……！？" jump1="*jump_78" storage="06_ending_midori.ks"]
*jump_78

[talk name="midori" face="embarrass"]
はい。代わりのプリンは、たしかに冷蔵庫に入れました。
[wait time="450"]
[click_next]


[talk ]
[choice_button mode="1" choice1="そんな、まさか……！？" jump1="*jump_79" storage="06_ending_midori.ks"]
*jump_79

[talk ]
[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[wait time="600"]

[talk name=""]
（メイドのミドリさんは、冷蔵庫にあったプリンを食べた）
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
[talk name=""]
～ The End？ ～
[wait time="450"]
[click_next]

[wait time="1500"]
[playse storage="SE_RetroSuccess_01.wav" loop="false"]
【パスワード】
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