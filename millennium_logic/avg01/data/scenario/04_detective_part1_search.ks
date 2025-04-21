[iscript]
    f.evidence_of_midori = "false";
    f.evidence_of_momoi = "false";
    f.evidence_of_akira = "false";
    f.d1_momoi_talked ="false";
    f.d1_midori_talked = "false";

    f.evidence_of_midori2 = "false";
    f.evidence_of_dummy1 = "false";
    f.evidence_of_dummy2 = "false";
    f.evidence_of_momoi2 = "false";
    f.evidence_of_akira2 = "false";
[endscript]

[bg2 storage="BG06_PartyRoom.jpg" wait="true"]
[playbgm storage="Theme_68.ogg" time="3000" volume="25"]

[backlay layer="base"]
[filter layer="base" page="back" brightness="50" blur="5" ]
[trans layer="base" time="300"]

[skip_button storage="04_detective_part1_search.ks"]
;--------------------------------------------------------------------------


[talk name="" face="def"]
犯人に繋がる手がかりは２つ。
[wait time="450"]
[click_next]

[talk name="" face="def"]
『人物像』と『物的証拠』。
[wait time="450"]
[click_next]

[talk name="" face="def"]
この両方が揃った時、おのずと犯人像が浮かび上がってくるはずです。
[wait time="450"]
[click_next]

[talk name="" face="def"]
まずは人に話を聞き、怪しい人物を見ていないか情報を入手しましょう。
[wait time="450"]
[click_next]

[talk name="" face="def"]
次に屋敷の中を移動して、不審な痕跡を見つけましょう。
[wait time="450"]
[click_next]

;[talk name=""]
;（そうなると、まずはどこに行こうか？）
;[wait time="450"]
;[click_next]

[free_filter layer="base"]
;[trans layer="base" time="100"]
[wt]

;------------------------------------------------------------------------------
;探索フラグ初期化
;------------------------------------------------------------------------------

[clearfix]
[bg2 storage="BG06_PartyRoom.jpg" wait="false"]
[layopt layer="message0" visible="true"]
[skip_button storage="04_detective_part1_search.ks"]
[button target="*book" role="sleepgame" x="1160" y="120" height="60"  graphic="Item_Icon_Material_Rohonc_3.png" fix="true" storage="system/evidence.ks"]
;探索パート1_探索1------------------------------------------------------------------
[talk name=""]
（そうなると、まずはどこに行こうか？）
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false"]

[map_select]

;場所移動選択肢----------------------------
*map_select
[layopt layer="message0" visible="false"]
;探索終了フラグ
[iscript]
if (f.evidence_of_midori === 'true' && 
    f.evidence_of_momoi === 'true' && 
    f.evidence_of_akira === 'true' &&
    f.d1_momoi_talked === 'true' &&
    f.d1_midori_talked === 'true') {

        // チュートリアル終了フラグ
        f.detective_part1_end = "true";
}

[endscript]

;全員の話を聞いたら*endに飛ぶ
[jump target="*part1_end" storage="04_detective_part1_search.ks" cond="f.detective_part1_end =='true'"]
[talk name=""]
（話を聞くことができたし、そろそろ別の場所へ行こうか？）
[wait time="450"]
[click_next]

*map_select2

[chara_hide_all  time="300"]
[layopt layer="message0" visible="false" wait="true"]
[map_select]


;エントランスホール--------------------------------------------------
*jump1
[layopt layer="message0" visible="false" wait="true"]
[bg_effect storage="BG01_HotelLobby.jpg"]

[app name="aris" width="600" left="100" top="160" wait="true"]

[layopt layer="message0" visible="true"]

[talk name=""]
（エントランスホールへとやって来た）
[wait time="450"]
[click_next]

[talk name=""]
（メイドのアリスさんが、雨で濡れた床をせっせと拭いている）
[wait time="450"]
[click_next]
[layopt layer="message0" visible="false" wait="true"]

;選択-----------------------------------------------------
[clickable target="*aris_search_01" x="220" y="220" width="300" height="500"]
[button target="*aris_search_01_leave" x="40" y="40" height="60" graphic="my_gamedevdept_01_door_01.png" fix="false"]
[s]

*aris_search_01
[chara_hide name="aris" time="300" wait="true"]
[app name="aris" pos="3" wait="true"]
[layopt layer="message0" visible="true"]


[talk name="aris" face="def"]
先生！メイドのアリスに何かご用ですか？
[wait time="450"]
[click_next]

[talk name="aris" face="respond"]
聞き込み……なるほど。アリス、理解しました。
[wait time="450"]
[click_next]

[talk name="aris" face="smile"]
つまり……推理ゲームにおける捜査パートですね！
[wait time="450"]
[click_next]

[talk name="aris" face="07"]
でしたらアリスも、証言者Aとして犯人逮捕に協力します。
[wait time="450"]
[click_next]

[talk name="aris" face="07"]
さあ先生、質問を選択してください！
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="怪しい行動をしてた人はいる？" jump1="*jump_01" storage="04_detective_part1_search.ks"]

*jump_01
[layopt layer="message0" visible="true"]

[talk name="aris" face="normal"]
ええと……。
[wait time="450"]
[click_next]

[talk name="aris" face="respond"]
そういえば15時半頃、主様がお部屋に戻る時間をミドリに聞かれました。
[wait time="450"]
[click_next]

[talk name="aris" face="normal"]
少し急いでいましたが……ミドリは今日の寝室当番だったので、準備をしていたのかもしれません。
[wait time="450"]
[click_next]

[talk name="aris" face="def"]
……アリスが知っているのはこれくらいです。
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="ありがとう、助かったよ。" jump1="*jump_02" storage="04_detective_part1_search.ks"]
*jump_02
[layopt layer="message0" visible="true"]

[talk name="aris" face="smile"]
いえ、探偵に事件の情報提供するのが証言者の役割ですから！
[wait time="450"]
[click_next]

[talk name="aris" face="07"]
先生、早く犯人を突き止めて、事件を解決してください！
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[hide name="aris" wait="true"]
[app name="aris" width="600" left="100" top="160" time="500" wait="true"]

[eval exp="f.evidence_of_midori = 'true'"]
[wit_pop storage="midori_wit.png"]

[talk name=""]
証言:ミドリさんの担当
[wait time="450"]
[click_next]

[wit_remove]

;場所移動ボタン/話を聞いた場合
;[talk name=""]
;（話を聞くことができたし、そろそろ別の場所へ行こうか？）
;[wait time="300"]
;[click_next]

;[layopt layer="message0" visible="false" wait="true"]
;[chara_hide_all  time="300"]
[jump target="*map_select" storage="04_detective_part1_search.ks"]


*aris_search_01_leave
[cm]
[layopt layer="message0" visible="true"]

;場所移動ボタン/話を聞いていない場合
[talk name=""]
（掃除の邪魔をしても悪いし、今話しかけるのはやめておこう）
[wait time="450"]
[click_next]
[chara_hide_all  time="300"]
[jump target="*map_select2" storage="04_detective_part1_search.ks"]



;アキラ------------------------------------------------------------------------
*jump2
;------------------------------------------------------------------------
[layopt layer="message0" visible="false" wait="true"]
[bg_effect storage="BG02_OldHouseCorridor.jpg"]
[app name="akira" width="440" left="250" top="185" wait="true"]
[layopt layer="message0" visible="true"]

[talk name=""]
（1階の廊下へとやって来た）
[wait time="450"]
[click_next]

[talk name=""]
（白いお姉さんが、壁の絵画を眺めながら歩いている）
[wait time="450"]
[click_next]
[layopt layer="message0" visible="false" wait="true"]
[clickable target="*akira_search_01" x="380" y="180" width="220" height="460"]
;[clickable target="*akira_search_01_leave" x="0" y="25" width="50" height="50" ]
[button target="*akira_search_01_leave"  x="40" y="40" height="60" graphic="my_gamedevdept_01_door_01.png"]

[s]

*akira_search_01
[chara_hide  time="300"  name="akira" wait="true"]
[app name="akira" wait="true"]

[layopt layer="message0" visible="true"]

[talk name="akira" face="serious"]
ふむ……どうしたものか……。
[wait time="450"]
[click_next]

[talk name="akira" face="08"]
おや、先生？いえ、たいしたことではありません。
[wait time="450"]
[click_next]

[talk name="akira" face="normal"]
こちらに着いてすぐ、厨房へ飲み物を頂きに伺ったのですが……。
[wait time="450"]
[click_next]

[talk name="akira" face="respond"]
そこで白い服のお嬢さんから、ミネラルウォーターをダンボール箱ごと渡されまして。
[wait time="450"]
[click_next]

;白い服のお嬢さん＝ヒマリ
;ミネラルウォーター＝ヒマリの自称から。
;
[talk name="akira" face="15"]
一晩過ごせるだけの水と伝えましたが、さすがにこの量は……。
[wait time="450"]
[click_next]

[talk name="akira" face="smile"]
それより先生、何かご用だったのでは？
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="事件の聞き込みをしていて。" jump1="*jump_03" storage="04_detective_part1_search.ks"]
*jump_03
[layopt layer="message0" visible="true"]

[talk name="akira" face="08"]
なるほど、怪しい人物ですか。そういえばピンク色のメイドさんが――
[wait time="450"]
[click_next]

[talk name="akira" face="eyeclose"]
あれは16時前でしょうか。焦った様子で、エントランスを走り抜けていきました。
[wait time="450"]
[click_next]

[talk name="akira" face="normal"]
なにやら小瓶を抱えていたようですが、何だったんでしょうね。
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="……情報ありがとう。" jump1="*jump_04" storage="04_detective_part1_search.ks"]
*jump_04
[layopt layer="message0" visible="true"]

[talk name="akira" face="respond"]
ふふ、協力は惜しみませんよ。それに、ほかでもない先生の頼みですから。
[wait time="450"]
[click_next]

[talk name="akira" face="09"]
それでは引き続き、事件の捜査をよろしくお願いいたします。
[wait time="450"]
[click_next]

[talk name="akira" face="embarassed"]
……それとミネラルウォーター、少し持っていかれませんか？
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[hide name="akira" wait="true"]
[app name="akira" width="440" left="250" top="185" time="500" wait="true"]

[talk name=""]

[eval exp="f.evidence_of_momoi = 'true'"]
[wit_pop storage="momoi_wit.png"]

[talk name=""]
証言:モモイさんは慌てていた。
[wait time="450"]
[click_next]

[wit_remove]



;[talk name=""]
;（話を聞くことができたし、そろそろ別の場所へ行こうか？）
;[wait time="300"]
;[click_next]

;[layopt layer="message0" visible="false" wait="true"]
;[chara_hide_all  time="300"]
[jump target="*map_select" storage="04_detective_part1_search.ks"]


*akira_search_01_leave
[cm]
[layopt layer="message0" visible="true"]

[talk name=""]
（邪魔しても悪いし、今話しかけるのはやめておこう）
[wait time="450"]
[click_next]
[chara_hide_all time="300"]
[jump target="*map_select2" storage="04_detective_part1_search.ks"]


;モモイ--------------------------------------------------------
*jump3
;-------------------------------------------------------------
;[layopt layer="message0" visible="true"]
[layopt layer="message0" visible="false" wait="true"]
[bg_effect storage="BG03_Hotelcorridor.jpg"]
[app name="momoi" width="150" left="700" top="350" wait="true"]


[talk name=""]
（メイドのモモイさんが、バケツとモップを持って歩いている）
[wait time="450"]
[click_next]
[layopt layer="message0" visible="false" wait="true"]
[clickable target="*momoi_search_01" x="700" y="325" width="125" height="200" ]
;[clickable target="*momoi_search_01_leave" x="0" y="25" width="50" height="50" ]
[button target="*momoi_search_01_leave"  x="40" y="40" height="60" graphic="my_gamedevdept_01_door_01.png"]

[s]

*momoi_search_01
;[layopt layer="message0" visible="true"]
[chara_hide time="300" name="momoi" wait="true"]
[app name="momoi" wait="true"]

[talk name="momoi" face="09"]
先生聞いてよ！さっき部屋で芳香剤の瓶を落としちゃったの！
[wait time="450"]
[click_next]

[talk name="momoi" face="depressed"]
おかげで中の液が服にかかって……フローラルな香りがぷんぷんするよー！！
[wait time="450"]
[click_next]

[talk name="momoi" face="respond"]
……あれ、そういえば先生はなんで私のところに？
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="聞き込みに協力してほしくて。" jump1="*jump_05" storage="04_detective_part1_search.ks"]
*jump_05
[layopt layer="message0" visible="true"]

[talk name="momoi" face="11"]
そっかー！先生は推理ゲームで言うところの『探偵』だもんね！
[wait time="450"]
[click_next]

[talk name="momoi" face="respond"]
でも先に言っとくけど、私は犯人じゃないから！
[wait time="450"]
[click_next]

[talk name="momoi" face="normal"]
主様が大切にしてたプリンを食べるなんて、メイド失格だもん！
[wait time="450"]
[click_next]

[talk name="momoi" face="10"]
私が思うに、犯人はきっとあの白いお姉さんだよ！
[wait time="450"]
[click_next]

[talk name="momoi" face="respond"]
だって屋敷の人間じゃないのは、先生を除けばあの人だけでしょ？
[wait time="450"]
[click_next]

[talk name="momoi" face="def"]
それに事件が発覚する前、あの人が何度も部屋を出入りする音を聞いたんだ！
[wait time="450"]
[click_next]

[talk name="momoi" face="11"]
ね、怪しくない？絶対私たちに隠れて何かしてたんだよ！
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="ありがとう、参考にするね。" jump1="*jump_06" storage="04_detective_part1_search.ks"]
*jump_06
[layopt layer="message0" visible="true"]

[talk name="momoi" face="10"]
ふふん。私の証言、事件の推理に役立てて！
[wait time="450"]
[click_next]

[talk name="momoi" face="def"]
先生ならぱぱっと事件を解決してくれるって信じてるよ！
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[hide name="momoi" wait="true"]
[app name="momoi" width="150" left="700" top="350" wait="true"]

;[talk name=""]
;（話を聞くことができたし、そろそろ別の場所へ行こうか？）
;[wait time="300"]
;[click_next]

[eval exp="f.d1_momoi_talked = 'true'"]

;[layopt layer="message0" visible="false" wait="true"]
;[chara_hide_all time="300"]
[jump target="*map_select" storage="04_detective_part1_search.ks"]



*momoi_search_01_leave
[cm]
[layopt layer="message0" visible="true"]

[talk name=""]
（掃除の邪魔をしても悪いし、今話しかけるのはやめておこう）
[wait time="450"]
[click_next]
[chara_hide_all time="300"]
[jump target="*map_select2" storage="04_detective_part1_search.ks"]





;ユズ---------------------------------------------------------
*jump4
;-------------------------------------------------------------
;[layopt layer="message0" visible="true"]
[layopt layer="message0" visible="false" wait="true"]
[bg_effect storage="BG04_TrinityOldLibrary.jpg"]
[app name="yuzu" width="280" left="250" top="250" wait="true"]
[layopt layer="message0" visible="true"]

[talk name=""]
（屋敷の書庫へとやって来た）
[wait time="450"]
[click_next]

[talk name=""]
（メイドのユズさんが、何やらキョロキョロと辺りの様子を窺っている）
[wait time="450"]
[click_next]
[layopt layer="message0" visible="false" wait="true"]
[clickable target="*yuzu_search_01" x="330" y="250" width="150" height="270" ]
[button target="*yuzu_search_01_leave"  x="40" y="40" height="60" graphic="my_gamedevdept_01_door_01.png"]

[s]


*yuzu_search_01
[chara_hide  name="yuzu" wait="true" time="300"]
[app name="yuzu" wait="true"]
[layopt layer="message0" visible="true"]


[talk name="yuzu" face="07"]
ふぅ……ちょっとソファで休憩……。
[wait time="450"]
[click_next]

[talk name="yuzu" face="embarrass"]
ひゃっ、先生……！？ど、どうしてここに……？
[wait time="450"]
[click_next]

[talk name="yuzu" face="08"]
ままま、まさか私を犯人として捕まえにきたとか……！？
[wait time="450"]
[click_next]

[talk name="yuzu" face="respond"]
あ、き、聞き込みですか……すみません、早とちりしてしまって……。
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="驚かせてごめんね。" jump1="*jump_07" storage="04_detective_part1_search.ks"]
*jump_07
[layopt layer="message0" visible="true"]

[talk name="yuzu" face="normal"]
い、いえ。えっと……怪しい人ですよね？でもすみません、お役に立つようなことはなにも……。
[wait time="450"]
[click_next]

[talk name="yuzu" face="eyeclose"]
些細なことでも？うーん……あっ。
[wait time="450"]
[click_next]

[talk name="yuzu" face="normal"]
人、ではないんですけど……実は今朝、エントランスに妙な手紙が落ちてまして。
[wait time="450"]
[click_next]

[talk name="yuzu" face="respond"]
差出人には「慈愛の怪盗」とだけ。でもそんな方は知りませんし……。
[wait time="450"]
[click_next]

[talk name="yuzu" face="normal"]
イタズラだと思って、すぐに捨ててしまったんです。
[wait time="450"]
[click_next]

[talk name="yuzu" face="10"]
まさかこの事件と関係あったんでしょうか？
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="参考にするね。ありがとう。" jump1="*jump_08" storage="04_detective_part1_search.ks"]
*jump_08
[layopt layer="message0" visible="true"]

[talk name="yuzu" face="07"]
いえ！先生のお力になれたなら嬉しいです……！
[wait time="450"]
[click_next]

[talk name="yuzu" face="smile"]
他にできることがあれば、また声をかけてくださいね。
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[hide name="yuzu" wait="true"]
[app name="yuzu" width="280" left="250" top="250" wait="true" time="500"]

[eval exp="f.evidence_of_akira = 'true'"]
[wit_pop storage="white_wit.png"]

;証拠：アキラの証拠入手
[talk name=""]
証言:突然届いた手紙
[wait time="450"]
[click_next]

[wit_remove]

;[talk name=""]
;（話を聞くことができたし、そろそろ別の場所へ行こうか？）
;[wait time="300"]
;[click_next]

;[layopt layer="message0" visible="false" wait="true"]
;[chara_hide_all time="300"]
[jump target="*map_select" storage="04_detective_part1_search.ks"]



*yuzu_search_01_leave
[cm]

[talk name=""]
（疲れ気味に見えるし、今話しかけるのはやめておこう）
[wait time="450"]
[click_next]
[chara_hide_all time="300"]
[jump target="*map_select2" storage="04_detective_part1_search.ks"]



;ミドリ---------------------------------------------------------------
*jump5
;---------------------------------------------------------------------
[layopt layer="message0" visible="false" wait="true"]
[bg_effect storage="BG05_LuxuriousRooms_Night.jpg"]
[app name="midori" width="600" left="75" top="190" wait="true"]
[layopt layer="message0" visible="true"]

[talk name=""]
（屋敷の主の寝室へとやって来た）
[wait time="450"]
[click_next]

[talk name=""]
（メイドのミドリさんが、ベッドメイクをしている）
[wait time="450"]
[click_next]
[layopt layer="message0" visible="false" wait="true"]
[clickable target="*midori_search_01" x="240" y="200" width="320" height="470"]
[button target="*midori_search_01_leave"  x="40" y="40" height="60" graphic="my_gamedevdept_01_door_01.png"]

[s]
*midori_search_01
[chara_hide  name="midori" wait="true" time="300"]
[app name="midori" wait="true"]
[layopt layer="message0" visible="true"]


[talk name="midori" face="normal"]
先生、犯人はわかりましたか？
[wait time="450"]
[click_next]

[talk name="midori" face="07"]
そうですか……いったい誰が主様のプリンを……。
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="少し話を聞かせてくれる？" jump1="*jump_09" storage="04_detective_part1_search.ks"]
*jump_09
[layopt layer="message0" visible="true"]

[talk name="midori" face="respond"]
もちろんです。私にも協力させてください！
[wait time="450"]
[click_next]

[talk name="midori" face="07"]
といっても、今日はお部屋の掃除でバタバタしてたから、話せることはほとんどありませんけど……。
[wait time="450"]
[click_next]

[talk name="midori" face="respond"]
気になる人？そういえば1階の廊下を、白い服のお客様が歩き回っていたのを見ました。
[wait time="450"]
[click_next]

[talk name="midori" face="eyeclose"]
時間は……16時から16時半だったと思います。
[wait time="450"]
[click_next]

[talk name="midori" face="normal"]
何かしてたわけじゃありませんけど、一応お伝えしておきます。
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="ありがとう、参考にするね。" jump1="*jump_10" storage="04_detective_part1_search.ks"]
*jump_10
[layopt layer="message0" visible="true"]

[talk name="midori" face="eyeclose"]
先生のお役に立てたならよかったです。
[wait time="450"]
[click_next]

[talk name="midori" face="respond"]
では私はそろそろ行きますね。事件の捜査をよろしくお願いします。
[wait time="450"]
[click_next]

[talk name="midori" face="smile"]
先生なら、きっと犯人を見つけてくれるって信じてます。
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[hide name="midori"]
[app name="midori" width="600" left="75" top="190" wait="true"]

;[talk name=""]
;（話を聞くことができたし、そろそろ別の場所へ行こうか？）
;[wait time="300"]
;[click_next]
[eval exp="f.d1_midori_talked = 'true'"]


;[layopt layer="message0" visible="false" wait="true"]
;[chara_hide_all time="300"]
[jump target="*map_select" storage="04_detective_part1_search.ks"]


*midori_search_01_leave
[cm]
[layopt layer="message0" visible="true"]

[talk name=""]
（掃除の邪魔をしても悪いし、今話かけるのはやめておこう）
[wait time="450"]
[click_next]
[chara_hide_all time="300"]
[jump target="*map_select2" storage="04_detective_part1_search.ks"]

*part1_end
[talk name=""]
（よし、全員から証言を聞いたな）
[click_next]

[layopt layer="message0" visible="false" wait="true"]
*part_end
[hide_all]
[fadeoutbgm time="500"]
[stopbgm]
[clearfix]
[clearstack]
[wait time="1000"]
[jump storage="04_detective_part2_search.ks"]
