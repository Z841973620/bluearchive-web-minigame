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
好，现在开始调查吧！
[wait time="450"]
[click_next]

[talk name="" face="def"]
一边询问他人，一边调查可疑的地方，找出与犯人相关的证据吧！
[wait time="450"]
[click_next]

[talk name="" face="def"]
……先小试牛刀，从聚集的人群处收集『不在场证明』吧。
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

[choice_button mode="1" choice1="在被认为是案发时间的那个时候，你在哪里做了什么？" jump1="*jump_48" storage="03_tutorial.ks"]
*jump_48

[talk name="yuzu" face="def"]
案发时间我在哪里，是吗？
[wait time="450"]
[click_next]

[talk name="yuzu" face="def"]
刚刚我也说过了，我在主人的房间。爱丽丝也和我在一起。
[wait time="450"]
[click_next]

[talk name="yuzu" face="def"]
我觉得向主人确认一下就会明白的。
[wait time="450"]
[click_next]

[talk name="yuzu" face="def"]
那个……果然，还是在怀疑我吧？
[wait time="450"]
[click_next]

[talk name=""]
（案发时间大概是在下午3点到4点之间）
[wait time="450"]
[click_next]

[talk name=""]
（但那段时间里，她有完美的不在场证明，也就是说和主人待在一起）
[wait time="450"]
[click_next]

[talk name=""]
（也就是说在同一房间里的她，不在场证明可以成立）
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="不用担心，以防万一只是想确认一下。" jump1="*jump_49" storage="03_tutorial.ks"]
*jump_49
[choice_button mode="1" choice1="非常感谢能提供这些信息。" jump1="*jump_50" storage="03_tutorial.ks"]
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

[choice_button mode="1" choice1="在被认为是案发时间的那个时候，你在哪里做了什么？" jump1="*jump_51" storage="03_tutorial.ks"]
*jump_51
[talk name="aris" face="def"]
爱丽丝和柚子，一起在主人的房间里！
[wait time="450"]
[click_next]

[talk name="aris" face="def"]
也就是说爱丽丝和柚子是不可能犯罪的！
[wait time="450"]
[click_next]

[talk name=""]
（案发时间大概是在下午3点到4点之间）
[wait time="450"]
[click_next]

[talk name=""]
（但那段时间里，她有完美的不在场证明，也就是说和主人待在一起）
[wait time="450"]
[click_next]

[talk name=""]
（也就是说在同一房间里的她，不在场证明可以成立）
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="也是啊，你们的不在场证明是完美的。" jump1="*jump_52" storage="03_tutorial.ks"]
*jump_52
[choice_button mode="1" choice1="非常感谢能提供这些信息。" jump1="*jump_53" storage="03_tutorial.ks"]
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

[choice_button mode="1" choice1="在被认为是案发时间的那个时候，你在哪里做了什么？" jump1="*jump_54" storage="03_tutorial.ks"]
*jump_54
[talk name="momoi" face="def"]
案发时间？
[wait time="450"]
[click_next]

[talk name="momoi" face="def"]
那个……收拾完衣物之后，就在书房里休息……
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="是一个人吗？有证人吗？" jump1="*jump_55" storage="03_tutorial.ks"]
*jump_55
[talk name="momoi" face="def"]
那时……只有我一个人。
[wait time="450"]
[click_next]

[talk name=""]
（案发时间大概是在下午3点到4点之间）
[wait time="450"]
[click_next]

[talk name=""]
（既然无法证明这期间的不在场证明，或许有调查的价值）
[wait time="450"]
[click_next]

[talk name="momoi" face="def"]
可以了吗？我还有工作要做。
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="非常感谢能提供这些信息。" jump1="*jump_56" storage="03_tutorial.ks"]
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


[choice_button mode="1" choice1="在被认为是案发时间的那个时候，你在哪里做了什么？" jump1="*jump_57" storage="03_tutorial.ks"]
*jump_57
[talk name="midori" face="def"]
诶，案发时间……是吗？
[wait time="450"]
[click_next]

[talk name="midori" face="def"]
那会儿……因为听说天气要变坏，所以把外面的盆栽搬进屋里了。
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="是独自一人吗？还是说有什么人和你在一起吗？" jump1="*jump_58" storage="03_tutorial.ks"]
*jump_58
[talk name="midori" face="def"]
对的，只有我一个人……。难道说，在怀疑我吗？
[wait time="450"]
[click_next]

[talk name=""]
（案发时间大概是在下午3点到4点之间）
[wait time="450"]
[click_next]

[talk name=""]
（既然无法证明这期间的不在场证明，或许有调查的价值）
[wait time="450"]
[click_next]

[talk name="midori" face="def"]
……非常抱歉。我接下来还有工作，先失陪了。
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="非常感谢能提供这些信息。" jump1="*jump_59" storage="03_tutorial.ks"]
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

[choice_button mode="1" choice1="在被认为是案发时间的那个时候，你在哪里做了什么？" jump1="*jump_60" storage="03_tutorial.ks"]
*jump_60
[talk name="akira" face="def"]
那个时候，好像是……
[wait time="450"]
[click_next]

[talk name="akira" face="def"]
当时我刚到这座宅邸，得到许可后，便在宅邸里面参观。
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="活动时间这么早？" jump1="*jump_61" storage="03_tutorial.ks"]
*jump_61
[choice_button mode="1" choice1="顺便问一下，有证人吗？" jump1="*jump_62" storage="03_tutorial.ks"]
*jump_62
[talk name="akira" face="def"]
没有。很不巧，女仆们似乎很忙，只有我一个人。
[wait time="450"]
[click_next]

[talk name=""]
（案发时间大概是在下午3点到4点之间）
[wait time="450"]
[click_next]

[talk name=""]
（既然无法证明这期间的不在场证明，或许有调查的价值）
[wait time="450"]
[click_next]

[talk name="akira" face="def"]
呵呵，没有不在场证明的我，是不是也是嫌疑人呢？
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="这个还不好说……" jump1="*jump_63" storage="03_tutorial.ks"]
*jump_63
[choice_button mode="1" choice1="总之，非常感谢能提供这些信息。" jump1="*jump_64" storage="03_tutorial.ks"]
*jump_64


[hide name="akira" wait="true"]
[app_all]
[wait time="300"]
[jump target="tutorial_search" storage="03_tutorial.ks"]



;チュートリアルエンド--------------------------------------------

*tutorial_search_end
[layopt layer="message0" visible="true"]




[choice_button mode="1" choice1="（不能证明不在场的有桃井，绿和白衣女子）" jump1="*jump_65" storage="03_tutorial.ks"]
*jump_65
[choice_button mode="1" choice1="（嫌犯肯定是这３人之一）" jump1="*jump_66" storage="03_tutorial.ks"]
*jump_66
[choice_button mode="1" choice1="（接下来只要找到与罪犯有关的证据就好……）" jump1="*jump_67" storage="03_tutorial.ks"]
*jump_67

[layopt layer="message0" visible="true"]

[talk name=""]
（就这样――）
[wait time="450"]
[click_next]

[talk name=""]
（突如其来被卷入的『布丁偷吃事件』，搜查就此揭开序幕）
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



