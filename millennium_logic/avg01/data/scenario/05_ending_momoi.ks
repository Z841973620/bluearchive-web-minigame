
[playbgm storage="Theme_19.ogg" volume="25" time="3000"]

[bg_effect storage="BG06_PartyRoom.jpg"]

[wait time="600"]
[playse storage="SE_Fall_06.wav" loop="false"]
[choice_button mode="1" choice1="モモイさん、あなたが犯人ではありませんか？" jump1="*jump_61" storage="05_ending_momoi.ks"]
*jump_61

[app name="momoi" pos="3" wait="true"]

[talk name="momoi" face="07"]
[act name="momoi" act="shake" wait="false"]
[emo name="momoi" emo="surprise"]
くっ……！？で、でもこれだけじゃ証拠には……
[wait time="300"]
[click_next]



[choice_button mode="1" choice1="決定的な証拠もあります。" jump1="*jump_62" storage="05_ending_momoi.ks"]
*jump_62

[chara_part name="momoi" face="07"]

;証拠3選択肢
[choice_button mode="3" choice1="その尻尾です。" jump1="*sippo" choice2="そのヘッドホンです。" jump2="*head" choice3="持ち出した小瓶はどこへ？" jump3="*evi" storage="05_ending_momoi.ks"]

*sippo
[wait time="600"]
[playse storage="SE_Hit_02.wav" loop="false"]
[talk name="momoi" face="serious"]
尻尾がどうかしたの？
[wait time="450"]
[click_next]


[choice_button mode="1" choice1="実は光学迷彩発生装置になっていて……" jump1="*sippo2" storage="05_ending_momoi.ks"]

*sippo2

[talk ]
……
[wait time="450"]
[click_next]

（いくらなんでも無理矢理すぎた気がする）
[wait time="450"]
[click_next]

[jump target="*jump_62"]

*head
[wait time="600"]
[playse storage="SE_Hit_02.wav" loop="false"]
[talk name="momoi" face="serious"]
ヘッドホンがなに？
[wait time="450"]
[click_next]


[choice_button mode="1" choice1="実は時間を止める機能がついていて……" jump1="*sippo2" storage="05_ending_momoi.ks"]

[talk ]
……
[wait time="450"]
[click_next]
（もし可能なら、とっくにここから逃げているはずだ）
[jump target="*jump_62"]

*evi
[wait time="1000"]
[playse storage="SE_HangUp_01.wav" loop="false"]
[talk name="momoi" face="serious"]
[act name="momoi" act="stiff" wait="false"]
ど、どうしてそれを……
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[wait time="1000"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="モモイさんは先程こう言いました。" jump1="*talk1" storage="05_ending_momoi.ks"]
*talk1
[wait time="1200"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="溢した芳香剤を浴びてしまったと。" jump1="*talk2" storage="05_ending_momoi.ks"]
*talk2
[wait time="1200"]
[playse storage="SE_Knock_03c.wav" loop="false" volume="30" wait="true"]
[choice_button mode="1" choice1="どちらも偽装工作だったのでは？" jump1="*talk3" storage="05_ending_momoi.ks"]
*talk3
[wait time="1500"]
[playse storage="SE_Fall_06.wav" loop="false"]
[choice_button mode="1" choice1="正直に答えてください。" jump1="*talk4" storage="05_ending_momoi.ks"]
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
まさか、お姉ちゃんが……？って、そんなわけないよね？ねえ？
[wait time="300"]
[click_next]

[talk name="yuzu" face="10"]
モモイ、違うなら違うって言おう？そしたら先生だって、もう一度調べ直してくれるはずだよ。
[wait time="450"]
[click_next]

[talk name="aris" face="embarrass"]
[act name="aris" act="hophop" wait="false"]
そうです！モモイは黙って人のものを食べるような人じゃありません！
[wait time="450"]
[click_next]

[talk name="aris" face="08"]
アリスはちゃんとわかっています！
[wait time="450"]
[click_next]

[talk ]
[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[fadeinbgm storage="Theme_37.ogg" volume="25" time="3000"]

[app name="momoi" pos="3" mode="quick" wait="true"]

[wait time="600"]

[talk name="momoi" face="07"]
み、みんな……ありがとう。私……私は……
[wait time="450"]
[click_next]

[talk name="momoi" face="respond"]
ううん、ごめんね。主様のプリンを食べたのは……私だよ。
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
うそ……お姉ちゃん、どうして？
[wait time="450"]
[click_next]

[talk name="yuzu" face="respond"]
主様のプリン、本当にモモイが食べちゃったなんて……
[wait time="450"]
[click_next]

[talk name="aris" face="08"]
[act name="aris" act="hophop" wait="false"]
もしそれが事実だとしても、アリスは信じられません！
[wait time="450"]
[click_next]

[talk ]
[layopt layer="message0" visible="false" wait="true"]
[hide_all]

[wait time="300"]

[app name="momoi" pos="3" mode="quick" wait="true"]
[talk name="momoi" face="11"]
えへへ……そうやって、みんなが私を信じてくれるからさ。
[wait time="450"]
[click_next]

[talk name="momoi" face="smile"]
私としても、これ以上みんなを裏切るようなマネはできないよ。
[wait time="450"]
[click_next]

[talk name=""]
…………
[wait time="450"]
[click_next]

[talk name="momoi" face="respond"]
先生の言う通りだよ。小瓶……バニラエッセンスで、他の人に捜査の目を向けようとしたんだ。
[wait time="450"]
[click_next]

[talk name="momoi" face="embarrass"]
でも自分にも匂いがついちゃったから、芳香剤でごまかしたの。
[wait time="450"]
[click_next]

[talk name="momoi" face="embarrass"]
[emo name="momoi" emo="question"]
だけどよく私が犯人だって気付いたね？
[wait time="300"]
[click_next]

[talk ]
……
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[wait time="400"]
[choice_button mode="1" choice1="なんたって私は、シャーレの先生ですから。" jump1="*jump_64" storage="05_ending_momoi.ks"]
*jump_64

[wait time="1000"]
[talk name="momoi" face="respond"]
[emo name="momoi" emo="dot"]
……え？それ、理由になってなくない？
[wait time="300"]
[click_next]

[talk name="momoi" face="smile"]
[emo name="momoi" emo="music"]
でも……あははっ、そっか。シャーレの先生って、本当にすごいんだなぁ。
[wait time="300"]
[click_next]


[talk ]
[choice_button mode="1" choice1="ですがメイドのあなたが、なぜ？" jump1="*jump_65" storage="05_ending_momoi.ks"]
*jump_65

[talk name="momoi" face="respond"]
[emo name="momoi" emo="question"]
それは……先生は知ってる？主様が取り寄せたプリンに、どれだけの価値があるか。
[wait time="300"]
[click_next]

[talk ]

[choice_button mode="1" choice1="価値？" jump1="*jump_66" storage="05_ending_momoi.ks"]
*jump_66

[layopt layer="message0" visible="false" wait="true"]

[hide_all]

[wait time="300"]
;[filter layer="base" blur="3"]

[app name="momoi" width="1200" left="0" top="0" mode="quick" wait="true"]

[talk name="momoi" face="eyeclose"]
1ヶ月に5個限定、普通に生きてたらお目にかかる機会なんてほとんどない、超スーパー激レアプリンなんだよ。
[wait time="450"]
[click_next]

[talk name="momoi" face="serious"]
[act name="momoi" act="hophop" wait="false"]
[emo name="momoi" emo="exclaim"]
なのにそんな超スーパー激レアプリンが、今なら手を伸ばせば食べられるところにある！だから……！
[wait time="300"]
[click_next]

[talk ]

[choice_button mode="1" choice1="食べてしまったと？" jump1="*jump_67" storage="05_ending_momoi.ks"]
*jump_67

[talk name="momoi" face="07"]
[act name="momoi" act="greeting" wait="false"]
最近の私は、プリンの魅力に取り憑かれてたっていうか……
[wait time="450"]
[click_next]

[talk name="momoi" face="10"]
どうやって激レアプリンを食べるかってことしか、考えられなくなってて。
[wait time="450"]
[click_next]

[talk name="momoi" face="09"]
[act name="momoi" act="shake" wait="false"]
[emo name="momoi" emo="sweat"]
でも食べ終わったところでようやく我に返って、そしたら急に怖くなっちゃって……
[wait time="300"]
[click_next]

[wait time="300"]

[talk ]

[choice_button mode="1" choice1="そこで偽装工作ですね？" jump1="*jump_68" storage="05_ending_momoi.ks"]
*jump_68

[talk name="momoi" face="serious"]
[act name="momoi" act="greeting" wait="false"]
そういうこと。誰も本物の超スーパー激レアプリンを食べたこともなければ、見たことだってない――
[wait time="450"]
[click_next]

[talk name="momoi" face="07"]
だったら代わりのプリンとすり替えても気付かれない……そう思ったんだよ。
[wait time="450"]
[click_next]

[talk ]
…………
[wait time="450"]
[click_next]


[talk ]
[choice_button mode="1" choice1="入れ替えた……！？" jump1="*jump_69" storage="05_ending_momoi.ks"]
*jump_69

[talk name="momoi" face="respond"]
[emo name="momoi" emo="question"]
そうだよ。まさか、入れ替えたプリンが消えちゃうとは思わなかったけどね。
[wait time="300"]
[click_next]

[talk ]

[choice_button mode="1" choice1="そんな、まさか……！？" jump1="*jump_70" storage="05_ending_momoi.ks"]
*jump_70

[hide_all]

[wait time="600"]

[talk name=""]
（メイドのモモイさんは、冷蔵庫にあったプリンを食べた）
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
[talk name=" " face="def"]
～ The End？ ～
[wait time="450"]
[click_next]

[wait time="1500"]
[playse storage="SE_RetroSuccess_01.wav" loop="false"]
【パスワード】
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