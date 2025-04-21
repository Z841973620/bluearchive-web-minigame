[iscript]
    f.tutorial_aris_talked = "false";
    f.tutorial_midori_talked = "false";
    f.tutorial_momoi_talked = "false";
    f.tutorial_yuzu_talked = "false";
    f.tutorial_akira_talked = "false";
    f.tutorial_end = 'false'

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
[preload storage="data/bgm/Theme_68.ogg"]
[fadeinbgm storage="Theme_68.ogg" time="3000" volume="25"]
[bg_effect storage="BG06_PartyRoom.jpg" time="1000"]

[skip_button storage="03_tutorial.ks"]

[app_all]
[layopt layer="message0" visible="false" wait="true"]

[wait time="600"]

[talk name="" face="def"]
さあ、ここからいよいよ捜査開始です！
[wait time="450"]
[click_next]

[talk name="" face="def"]
人に話を聞いたり、怪しい場所を調べたりしながら、犯人に繋がる証拠を集めましょう！
[wait time="450"]
[click_next]

[talk name="" face="def"]
……ですがまずは練習として、集まっている人たちから『アリバイ』を集めてみてください。
[wait time="450"]
[click_next]


*tutorial_search
[iscript]
if (f.tutorial_aris_talked === 'true' && 
    f.tutorial_midori_talked === 'true' && 
    f.tutorial_momoi_talked === 'true' && 
    f.tutorial_yuzu_talked === 'true' && 
    f.tutorial_akira_talked === 'true') {

        // チュートリアル終了フラグ
        f.tutorial_end = 'true'
}
[endscript]

;全員の話を聞いたら*endに飛ぶ
[jump target="*tutorial_search_end" storage="03_tutorial.ks" cond="f.tutorial_end=='true'"]

; [talk name=""]
; 背景上のキャラ選択
; [wait time="600"]

; [talk name=""]
; ユズを選択
; [wait time="600"]

[layopt layer="message0" visible="false" wait="true"]

[clickable target="*akira" x="800" y="250" width="170" height="370"]
[clickable target="*aris" x="260" y="190" width="220" height="550"]
[clickable target="*midori" x="10" y="190" width="220" height="550"]
[clickable target="*midori" x="180" y="490" width="160" height="180"]
[clickable target="*momoi" x="1060" y="190" width="220" height="550"]
[clickable target="*momoi" x="880" y="430" width="220" height="250"]
[clickable target="*akira" x="830" y="330" width="100" height="200"]
[clickable target="*yuzu" x="510" y="100" width="320" height="700"]
[clickable target="*yuzu" x="400" y="440" width="160" height="300"]
[s]

;------------------------------------------------------------------------------------------------------------------------
;ゆずパート
*yuzu
;------------------------------------------------------------------------------------------------------------------------
[hide_all_light]
[app name="yuzu" pos="3" wait="true" ]
[eval exp="f.tutorial_yuzu_talked = 'true'"]
[layopt layer="message0" visible="true"]

[choice_button mode="1" choice1="犯行時刻だと思われる時間、どこで何をしていましたか？" jump1="*jump_48" storage="03_tutorial.ks"]
*jump_48

[talk name="yuzu" face="def"]
犯行時刻に、ですか？
[wait time="450"]
[click_next]

[talk name="yuzu" face="def"]
さっきもお話したとおり、主様のお部屋にいました。アリスちゃんも一緒に。
[wait time="450"]
[click_next]

[talk name="yuzu" face="def"]
主様に確認すればわかることだと思います。
[wait time="450"]
[click_next]

[talk name="yuzu" face="def"]
あの……やっぱり私、疑われてるんですか？
[wait time="450"]
[click_next]

[talk name=""]
（犯行時刻は恐らく午後3時から4時の間）
[wait time="450"]
[click_next]

[talk name=""]
（しかしその時間、彼女には主様と一緒にいたというカンペキなアリバイがある）
[wait time="450"]
[click_next]

[talk name=""]
（つまり同じ部屋にいた彼女のアリバイは成立していることになる）
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="心配いりません。念のため確認しただけですから。" jump1="*jump_49" storage="03_tutorial.ks"]
*jump_49
[choice_button mode="1" choice1="お話を聞かせていただき、ありがとうございました。" jump1="*jump_50" storage="03_tutorial.ks"]
*jump_50


[hide name="yuzu" wait="true"]
[app_all]
[wait time="300"]
[jump target="tutorial_search" storage="03_tutorial.ks"]


;----------------------------------------------------------------


;----------------------------------------------------------------
;アリス探索パート
*aris
;----------------------------------------------------------------
[hide_all_light]
[app name="aris" pos="3" wait="true" ]
[layopt layer="message0" visible="true"]
[eval exp="f.tutorial_aris_talked = 'true'"]

[choice_button mode="1" choice1="犯行時刻だと思われる時間、どこで何をしていましたか？" jump1="*jump_51" storage="03_tutorial.ks"]
*jump_51
[talk name="aris" face="def"]
アリスはユズと一緒に、主様のお部屋にいました！
[wait time="450"]
[click_next]

[talk name="aris" face="def"]
つまりアリスとユズに犯行は不可能だったと言えます！
[wait time="450"]
[click_next]

[talk name=""]
（犯行時刻は恐らく午後3時から4時の間）
[wait time="450"]
[click_next]

[talk name=""]
（しかしその時間、彼女には主様と一緒にいたというカンペキなアリバイがある）
[wait time="450"]
[click_next]

[talk name=""]
（つまり同じ部屋にいた彼女のアリバイは成立していることになる）
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="ですね。あなた方のアリバイはカンペキです。" jump1="*jump_52" storage="03_tutorial.ks"]
*jump_52
[choice_button mode="1" choice1="お話を聞かせていただき、ありがとうございました。" jump1="*jump_53" storage="03_tutorial.ks"]
*jump_53


[hide name="aris" wait="true"]
[app_all]
[wait time="300"]
[jump target="tutorial_search" storage="03_tutorial.ks"]
;----------------------------------------------------------------


;----------------------------------------------------------------
;モモイ探索パート
*momoi
;----------------------------------------------------------------

[hide_all_light]
[app name="momoi" pos="3" wait="true" ]
[layopt layer="message0" visible="true"]
[eval exp="f.tutorial_momoi_talked = 'true'"]

[choice_button mode="1" choice1="犯行時刻だと思われる時間、どこで何をしていましたか？" jump1="*jump_54" storage="03_tutorial.ks"]
*jump_54
[talk name="momoi" face="def"]
犯行時刻に？
[wait time="450"]
[click_next]

[talk name="momoi" face="def"]
えっと……洗濯物をしまって、書斎で休憩を……
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="1人でですか？そのアリバイを証明できる人は？" jump1="*jump_55" storage="03_tutorial.ks"]
*jump_55
[talk name="momoi" face="def"]
それは……1人でだけど。
[wait time="450"]
[click_next]

[talk name=""]
（犯行時刻は恐らく午後3時から4時の間）
[wait time="450"]
[click_next]

[talk name=""]
（その間のアリバイを証明できない以上、調べてみる価値はあるかもしれない）
[wait time="450"]
[click_next]

[talk name="momoi" face="def"]
もういい？まだ仕事が残ってるから。
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="お話を聞かせていただき、ありがとうございました。" jump1="*jump_56" storage="03_tutorial.ks"]
*jump_56

[hide name="momoi" wait="true"]
[app_all]
[wait time="300"]
[jump target="tutorial_search" storage="03_tutorial.ks"]
;----------------------------------------------------------------




;----------------------------------------------------------------
;ミドリ探索パート
*midori
;----------------------------------------------------------------
[hide_all_light]
[app name="midori" pos="3" wait="true" ]
[layopt layer="message0" visible="true"]
[eval exp="f.tutorial_midori_talked = 'true'"]


[choice_button mode="1" choice1="犯行時刻だと思われる時間、どこで何をしていましたか？" jump1="*jump_57" storage="03_tutorial.ks"]
*jump_57
[talk name="midori" face="def"]
え、犯行時刻に……ですか？
[wait time="450"]
[click_next]

[talk name="midori" face="def"]
あの時は……天気が荒れると聞いたので、外の植木鉢を屋内にしまっていました。
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="それはお一人で？誰かと一緒ではありませんでしたか？" jump1="*jump_58" storage="03_tutorial.ks"]
*jump_58
[talk name="midori" face="def"]
はい。一人ですけど……。もしかして私、疑われてます？
[wait time="450"]
[click_next]

[talk name=""]
（犯行時刻は恐らく午後3時から4時の間）
[wait time="450"]
[click_next]

[talk name=""]
（その間のアリバイを証明できない以上、調べてみる価値はあるかもしれない）
[wait time="450"]
[click_next]

[talk name="midori" face="def"]
……すみません。次の仕事があるので、失礼します。
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="お話を聞かせていただき、ありがとうございました。" jump1="*jump_59" storage="03_tutorial.ks"]
*jump_59

[hide name="midori" wait="true"]
[app_all]
[wait time="300"]
[jump target="tutorial_search" storage="03_tutorial.ks"]
;----------------------------------------------------------------


;----------------------------------------------------------------
;アキラ探索パート
*akira
;----------------------------------------------------------------

[hide_all_light]
[app name="akira" pos="3" wait="true" ]
[layopt layer="message0" visible="true"]
[eval exp="f.tutorial_akira_talked = 'true'"]

[choice_button mode="1" choice1="犯行時刻だと思われる時間、どこで何をしていましたか？" jump1="*jump_60" storage="03_tutorial.ks"]
*jump_60
[talk name="akira" face="def"]
その時は、たしか……
[wait time="450"]
[click_next]

[talk name="akira" face="def"]
この屋敷にたどり着いた直後でしたから、許可をいただいて、中を見て回っていた頃だと思います。
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="そんなに早い時間から？" jump1="*jump_61" storage="03_tutorial.ks"]
*jump_61
[choice_button mode="1" choice1="ちなみにそれを証明してくれる方はいますか？" jump1="*jump_62" storage="03_tutorial.ks"]
*jump_62
[talk name="akira" face="def"]
いいえ。あいにくメイドのお嬢さん方は忙しそうにしていましたから。一人ですよ。
[wait time="450"]
[click_next]

[talk name=""]
（犯行時刻は恐らく午後3時から4時の間）
[wait time="450"]
[click_next]

[talk name=""]
（その間のアリバイを証明できない以上、調べてみる価値はあるかもしれない）
[wait time="450"]
[click_next]

[talk name="akira" face="def"]
ふふっ、アリバイが無い私（わたくし）は、容疑者候補の一人だと？
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="それはまだ何とも言えませんが……" jump1="*jump_63" storage="03_tutorial.ks"]
*jump_63
[choice_button mode="1" choice1="とにかくお話を聞かせていただき、ありがとうございました。" jump1="*jump_64" storage="03_tutorial.ks"]
*jump_64


[hide name="akira" wait="true"]
[app_all]
[wait time="300"]
[jump target="tutorial_search" storage="03_tutorial.ks"]



;チュートリアルエンド--------------------------------------------

*tutorial_search_end
[layopt layer="message0" visible="true"]




[choice_button mode="1" choice1="（アリバイを証明できないのがモモイ、ミドリ、白い服の人）" jump1="*jump_65" storage="03_tutorial.ks"]
*jump_65
[choice_button mode="1" choice1="（容疑者はこの３人に絞られたと見て間違いない）" jump1="*jump_66" storage="03_tutorial.ks"]
*jump_66
[choice_button mode="1" choice1="（あとは犯人に繋がる証拠さえ見つかれば……）" jump1="*jump_67" storage="03_tutorial.ks"]
*jump_67

[layopt layer="message0" visible="true"]

[talk name=""]
（こうして――）
[wait time="450"]
[click_next]

[talk name=""]
（突如として巻き込まれた『プリン盗み食い事件』の捜査が幕を開けた）
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false"]

[fadeoutbgm time="500"]
[wait time="500"]

*part_end

[hide_all_light]
[stopbgm]
[unload all_sound="true"]
[clearfix]
[clearstack]
[wait time="1000"]
[jump storage="04_detective_part1_search.ks"]



