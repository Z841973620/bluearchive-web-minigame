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
与犯人有关的线索有两个。
[wait time="450"]
[click_next]

[talk name="" face="def"]
『人证』与『物证』。
[wait time="450"]
[click_next]

[talk name="" face="def"]
当两者都具备时，犯人的身份就会浮出水面。
[wait time="450"]
[click_next]

[talk name="" face="def"]
首先和大家谈谈，收集可疑人物的信息吧。
[wait time="450"]
[click_next]

[talk name="" face="def"]
接下来在宅邸中搜寻，发现可疑的痕迹吧。
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
（这样的话，首先应该去哪呢？）
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
（既然问完话了，差不多该去别的地方了吧？）
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
（来到入口大厅）
[wait time="450"]
[click_next]

[talk name=""]
（女仆爱丽丝小姐，正在拖干被雨淋湿的地板）
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
老师！找女仆爱丽丝有什么事吗？
[wait time="450"]
[click_next]

[talk name="aris" face="respond"]
打听消息吗……原来如此。爱丽丝了解了。
[wait time="450"]
[click_next]

[talk name="aris" face="smile"]
也就是……推理游戏的搜查环节吧！
[wait time="450"]
[click_next]

[talk name="aris" face="07"]
那么爱丽丝也要作为证人A帮忙逮捕犯人。
[wait time="450"]
[click_next]

[talk name="aris" face="07"]
好啦老师，请选择问题吧！
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="有行为举止怪异的人吗？" jump1="*jump_01" storage="04_detective_part1_search.ks"]

*jump_01
[layopt layer="message0" visible="true"]

[talk name="aris" face="normal"]
嗯嗯……。
[wait time="450"]
[click_next]

[talk name="aris" face="respond"]
这么说来，15点半那会，小绿问了主人回房的时间。
[wait time="450"]
[click_next]

[talk name="aris" face="normal"]
虽然可能有点急……但今天是小绿负责卧室的值日，也许已经在做准备了。
[wait time="450"]
[click_next]

[talk name="aris" face="def"]
……爱丽丝知道的只有这些。
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="谢谢，很有帮助。" jump1="*jump_02" storage="04_detective_part1_search.ks"]
*jump_02
[layopt layer="message0" visible="true"]

[talk name="aris" face="smile"]
不客气，向侦探提供信息正是证人的职责！
[wait time="450"]
[click_next]

[talk name="aris" face="07"]
老师，请快点查出凶手，解决案件吧！
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[hide name="aris" wait="true"]
[app name="aris" width="600" left="100" top="160" time="500" wait="true"]

[eval exp="f.evidence_of_midori = 'true'"]
[wit_pop storage="midori_wit.png"]

[talk name=""]
证言:绿小姐的工作
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
（来到1楼的走廊）
[wait time="450"]
[click_next]

[talk name=""]
（白衣女子一边欣赏墙上的画一边走着）
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
嗯……该怎么办呢……。
[wait time="450"]
[click_next]

[talk name="akira" face="08"]
哎呀，老师？不，没什么。
[wait time="450"]
[click_next]

[talk name="akira" face="normal"]
到了这之后，我就马上去厨房拿饮料喝……。
[wait time="450"]
[click_next]

[talk name="akira" face="respond"]
到了那之后，白衣服的小姐把矿泉水连同纸箱一起递给了我。
[wait time="450"]
[click_next]

;白い服のお嬢さん＝ヒマリ
;ミネラルウォーター＝ヒマリの自称から。
;
[talk name="akira" face="15"]
虽然我说了只需要能喝够一个晚上的水就好，但这个量也太……。
[wait time="450"]
[click_next]

[talk name="akira" face="smile"]
比起这个，老师有什么事吗？
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="在调查案件，四处打听。" jump1="*jump_03" storage="04_detective_part1_search.ks"]
*jump_03
[layopt layer="message0" visible="true"]

[talk name="akira" face="08"]
原来如此，可疑人物啊。说起来那个粉色的女仆――
[wait time="450"]
[click_next]

[talk name="akira" face="eyeclose"]
好像是16点前吧。她看上去很焦急地跑过了入口。
[wait time="450"]
[click_next]

[talk name="akira" face="normal"]
似乎抱着一个小瓶子，里面到底是什么呢。
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="……谢谢你的信息。" jump1="*jump_04" storage="04_detective_part1_search.ks"]
*jump_04
[layopt layer="message0" visible="true"]

[talk name="akira" face="respond"]
呵呵，我不会吝惜帮助的。而且，这也是老师的请求。
[wait time="450"]
[click_next]

[talk name="akira" face="09"]
那么就请您继续搜查下去吧。
[wait time="450"]
[click_next]

[talk name="akira" face="embarassed"]
……还有，矿泉水，需要带几瓶走吗？
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[hide name="akira" wait="true"]
[app name="akira" width="440" left="250" top="185" time="500" wait="true"]

[talk name=""]

[eval exp="f.evidence_of_momoi = 'true'"]
[wit_pop storage="momoi_wit.png"]

[talk name=""]
证言:桃井很慌张。
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
（女仆桃井拿着水桶和拖把走着）
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
老师你听我说！我刚刚把装有芳香剂的瓶子打翻了！
[wait time="450"]
[click_next]

[talk name="momoi" face="depressed"]
结果里面的液体撒到了衣服上……花香四溢哦～！！
[wait time="450"]
[click_next]

[talk name="momoi" face="respond"]
……诶，说起来老师来找我有什么事呢？
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="希望你能协助我的调查。" jump1="*jump_05" storage="04_detective_part1_search.ks"]
*jump_05
[layopt layer="message0" visible="true"]

[talk name="momoi" face="11"]
这样啊！老师就是推理游戏所说的『侦探』吧！
[wait time="450"]
[click_next]

[talk name="momoi" face="respond"]
但是先说好，我可不是犯人！
[wait time="450"]
[click_next]

[talk name="momoi" face="normal"]
吃掉主人重要的布丁什么的，是女仆的失职！
[wait time="450"]
[click_next]

[talk name="momoi" face="10"]
在我看来，犯人一定是那个白衣小姐姐！
[wait time="450"]
[click_next]

[talk name="momoi" face="respond"]
毕竟除了宅邸里本来的人，就只有老师和她了吧？
[wait time="450"]
[click_next]

[talk name="momoi" face="def"]
而且在事情被发现前，我听见她好几次进出房间的声音！
[wait time="450"]
[click_next]

[talk name="momoi" face="11"]
是吧，很奇怪吧？她绝对向我们隐瞒了什么！
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="谢谢，很有参考价值。" jump1="*jump_06" storage="04_detective_part1_search.ks"]
*jump_06
[layopt layer="message0" visible="true"]

[talk name="momoi" face="10"]
哼哼。我的证言，对案件的推理很有帮助吧！
[wait time="450"]
[click_next]

[talk name="momoi" face="def"]
我相信老师的话一定能解决这个案子的！
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
（来到宅邸的书房）
[wait time="450"]
[click_next]

[talk name=""]
（女仆柚子正在东张西望地观察着周围的情况）
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
呼……在沙发上休息一下吧……。
[wait time="450"]
[click_next]

[talk name="yuzu" face="embarrass"]
呀，老师……！？怎、怎么来这里了……？
[wait time="450"]
[click_next]

[talk name="yuzu" face="08"]
难难难、难道我要被当成犯人逮捕了吗……！？
[wait time="450"]
[click_next]

[talk name="yuzu" face="respond"]
啊，是、是来打听消息吗……抱歉，是我先入为主了……。
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="不好意思吓到你了。" jump1="*jump_07" storage="04_detective_part1_search.ks"]
*jump_07
[layopt layer="message0" visible="true"]

[talk name="yuzu" face="normal"]
没、没有。那个……可疑人物吗？但是对不起，没有什么帮得上忙的信息……。
[wait time="450"]
[click_next]

[talk name="yuzu" face="eyeclose"]
一点小事也行吗？唔——……啊。
[wait time="450"]
[click_next]

[talk name="yuzu" face="normal"]
虽然没看到人……其实今天早上，门口有一封奇怪的信。
[wait time="450"]
[click_next]

[talk name="yuzu" face="respond"]
寄件人只写着「慈爱的怪盗」。但我不认识这样的人……。
[wait time="450"]
[click_next]

[talk name="yuzu" face="normal"]
我以为是恶作剧，马上就扔掉了。
[wait time="450"]
[click_next]

[talk name="yuzu" face="10"]
难道跟这件事有关系吗？
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="很有参考价值，谢谢。" jump1="*jump_08" storage="04_detective_part1_search.ks"]
*jump_08
[layopt layer="message0" visible="true"]

[talk name="yuzu" face="07"]
不不不！能帮到老师很高兴……！
[wait time="450"]
[click_next]

[talk name="yuzu" face="smile"]
如何还有其他可以帮上忙的，请务必来找我。
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]
[hide name="yuzu" wait="true"]
[app name="yuzu" width="280" left="250" top="250" wait="true" time="500"]

[eval exp="f.evidence_of_akira = 'true'"]
[wit_pop storage="white_wit.png"]

;証拠：アキラの証拠入手
[talk name=""]
证言:突然寄来的信
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
（来到了宅邸主人的卧室）
[wait time="450"]
[click_next]

[talk name=""]
（女仆绿正在整理床铺）
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
老师，找到犯人了吗？
[wait time="450"]
[click_next]

[talk name="midori" face="07"]
这样啊……究竟是谁把主人的布丁给……。
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="能稍微问一下话吗？" jump1="*jump_09" storage="04_detective_part1_search.ks"]
*jump_09
[layopt layer="message0" visible="true"]

[talk name="midori" face="respond"]
当然可以。我也想帮忙！
[wait time="450"]
[click_next]

[talk name="midori" face="07"]
不过虽然这么说，今天打扫屋子就已经晕头转向了，可能没什么可以提供的信息……。
[wait time="450"]
[click_next]

[talk name="midori" face="respond"]
在意的人？说起来我看到1楼的走廊，穿着白色衣服的客人一直走来走去。
[wait time="450"]
[click_next]

[talk name="midori" face="eyeclose"]
时间是……16点到16点半的时候吧。
[wait time="450"]
[click_next]

[talk name="midori" face="normal"]
她倒是没做什么，只是想和老师说一下这个。
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="谢谢，很有参考价值。" jump1="*jump_10" storage="04_detective_part1_search.ks"]
*jump_10
[layopt layer="message0" visible="true"]

[talk name="midori" face="eyeclose"]
能帮上老师就好。
[wait time="450"]
[click_next]

[talk name="midori" face="respond"]
那位差不多也该走了。案件的搜查就交给您了。
[wait time="450"]
[click_next]

[talk name="midori" face="smile"]
我相信，老师一定能找出凶手。
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
（好，这下就收集完所有人的证言了）
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
