[iscript]
    f.evidence_of_midori = "true";
    f.evidence_of_momoi = "true";
    f.evidence_of_akira = "true";
    f.d1_momoi_talked ="true";
    f.d1_midori_talked = "true";

    f.evidence_of_midori2 = "false";
    f.evidence_of_dummy1 = "false";
    f.evidence_of_dummy2 = "false";
    f.evidence_of_momoi2 = "false";
    f.evidence_of_akira2 = "false";
    f.detective_part2_end = 'false';
[endscript]

[bg_effect storage="BG06_PartyRoom.jpg"]
[fadeinbgm storage="Theme_68.ogg" time="3000" volume="25"]

[backlay layer="base"]
[filter layer="base" page="back" brightness="50" blur="5" ]
[trans layer="base" time="300"]

[button target="*book" role="sleepgame" x="1160" y="120" height="60"  graphic="Item_Icon_Material_Rohonc_3.png" fix="true" storage="system/evidence.ks"]
[skip_button storage="04_detective_part2_search.ks"]
;--------------------------------------------------------------------------

[talk name=""]
（得到证言后，暂时回到了餐厅）
[wait time="450"]
[click_next]

[talk name=""]
（如果有虚假的不在场证明，必定会在哪儿露出马脚……）
[wait time="450"]
[click_next]

[talk name=""]
（实际在刚才的打听中，就已经察觉到了不在场证明的破绽）
[wait time="450"]
[click_next]

[talk name=""]
（……这样一来，接下来该寻找的是――）
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="与犯人有关的物证。" jump1="*jump_54" storage="04_detective_part2_search.ks"]
*jump_54

[talk name=""]
（不过该从哪开始找呢？）
[wait time="450"]
[click_next]

[free_filter layer="base"]
;[wt]

[layopt layer="message0" visible="false" wait="true"]
;[hide_all]


;探索パート2_探索------------------------------------------------------------------


;場所移動選択肢----------------------------
*map_select
;探索終了フラグ
[layopt layer="message0" visible="false" wait="true"]
[iscript]
if (f.evidence_of_midori2 === 'true' && 
    f.evidence_of_momoi2 === 'true' && 
    f.evidence_of_akira2 === 'true' &&
    f.evidence_of_dummy1 === 'true' && 
    f.evidence_of_dummy2 === 'true' 
    ) {

        // チュートリアル終了フラグ
        f.detective_part2_end = "true";
}

[endscript]

;全員の話を聞いたら*endに飛ぶ

[jump target="*04_detective_part2_end" storage="04_detective_part2_search.ks" cond="f.detective_part2_end =='true'"]
[map_select storage="04_detective_part2_search.ks"]


;エントランスホール--------------------------------------------------
*jump1
;花瓶にダミー
;-------------------------------------------------------------------
[layopt layer="message0" visible="false" wait="true"]
[bg_effect storage="BG01_HotelLobby.jpg"]

[eval exp="tf.serched = 'false'"]

[layopt layer="message0" visible="true"]

[talk name=""]
（来到入口大厅）
[wait time="450"]
[click_next]

[talk name=""]
（要寻找与犯人有关的线索吗？）
[wait time="450"]
[click_next]

;選択-----------------------------------------------------
*lobbyselect
[layopt layer="message0" visible="false" wait="true"]
[clickable target="*kaidan" x="495" y="360" width="370" height="150"]
[clickable target="*tesuri" x="785" y="275" width="70" height="180"]
[clickable target="*tesuri" x="485" y="275" width="150" height="180"]
[clickable target="*kabin" x="1100" y="380" width="100" height="100"]
[clickable target="*sofa" x="10" y="390" width="300" height="120"]
[clickable target="*shoumei" x="640" y="15" width="100" height="280"]
[button target="*leave_map" x="40" y="40" height="60" graphic="my_gamedevdept_01_door_01.png" fix="false"]
[s]

*tesuri
[eval exp="tf.serched = 'true'"]
[layopt layer="message0" visible="true"]

[talk name=""]
（刷得雪白的扶手）
[wait time="450"]
[click_next]

[talk name=""]
（表面光洁如新，一尘不染）
[wait time="450"]
[click_next]

[jump target="*lobbyselect" storage="04_detective_part2_search.ks"]

;----------------------------------------------------------------
*kabin
[eval exp="tf.serched = 'true'"]
[eval exp="f.evidence_of_dummy1 = 'true'"]

[talk name=""]
（插在花瓶里的玫瑰）
[wait time="450"]
[click_next]
;証拠：ダミー証拠入手
[talk name=""]
（空气中弥漫着一股高贵的甜美香气）
[wait time="450"]
[click_next]

[evidence_pop storage="Item_Icon_Favor_Lv2_Package.png" width="290"]
[talk name=""]
(很像桃井洒出来的芳香剂的香味)
[wait time="450"]
[click_next]

[evidence_remove]


[jump target="*lobbyselect" storage="04_detective_part2_search.ks"]

;----------------------------------------------------------------
*sofa
[eval exp="tf.serched = 'true'"]

[talk name=""]
（看起来很高级的沙发，连坐上去都要思忖再三）
[wait time="450"]
[click_next]

[talk name=""]
（最近没有被人坐过的痕迹）
[wait time="450"]
[click_next]

[jump target="*lobbyselect" storage="04_detective_part2_search.ks"]

;----------------------------------------------------------------
*kaidan
[eval exp="tf.serched = 'true'"]

[talk name=""]
（大理石砌成的豪华楼梯）
[wait time="450"]
[click_next]

[talk name=""]
（每爬一段，脚步声就会在入口回响）
[wait time="450"]
[click_next]

[jump target="*lobbyselect" storage="04_detective_part2_search.ks"]

;----------------------------------------------------------------
*shoumei
[eval exp="tf.serched = 'true'"]

[talk name=""]
（天花板上悬挂着的浮夸的吊灯）
[wait time="450"]
[click_next]

[talk name=""]
（一想到如果它掉下来的话……就有点害怕）
[wait time="450"]
[click_next]

[jump target="*lobbyselect" storage="04_detective_part2_search.ks"]

;----------------------------------------------------------------



;1かい廊下------------------------------------------------------------------------
*jump2
;------------------------------------------------------------------------
[layopt layer="message0" visible="false" wait="true"]
[bg_effect storage="BG02_OldHouseCorridor.jpg"]

[eval exp="tf.serched = 'false'"]

[talk name=""]
（来到1楼的走廊）
[wait time="450"]
[click_next]

[talk name=""]
（要寻找与犯人有关的线索吗？）
[wait time="450"]
[click_next]

*corridor_1f
    [layopt layer="message0" visible="false" wait="true"]

    [clickable target="*ka-petto" x="0" y="510" width="1150" height="400"]
    [clickable target="*ka-petto" x="330" y="450" width="400" height="300"]
    [clickable target="*fuukeiga" x="240" y="300" width="70" height="100"]
    [clickable target="*jinbutsuga" x="770" y="300" width="60" height="100"]
    [clickable target="*tobira_migi" x="670" y="250" width="60" height="250"]
    [clickable target="*tobira_hidari" x="330" y="250" width="60" height="250"]

    [button target="*leave_map" x="40" y="40" height="60" graphic="my_gamedevdept_01_door_01.png" fix="false"]
    [s]

    *tobira_migi
        [layopt layer="message0" visible="true"]
        [eval exp="tf.serched = 'true'"]
        [eval exp="f.evidence_of_momoi2 = 'true'"]


        [talk name=""]
        （分给白衣女子的房间）
        [wait time="300"]
        [click_next]

        [talk name=""]
        （有一股淡淡的香草似的香气）
        [wait time="300"]
        [click_next]
        ;証拠：モモイの証拠入手
        [evidence_pop storage="BG02_momoi.png"]

        [talk name=""]
        （像是香草精油的味道，为什么会出现在这里？）
        [wait time="300"]
        [click_next]

        [evidence_remove]

        [jump target="*corridor_1f" storage="04_detective_part2_search.ks"]

    *tobira_hidari
        [layopt layer="message0" visible="true"]
        [eval exp="tf.serched = 'true'"]

        [talk name=""]
        （充满历史感的门）
        [wait time="300"]
        [click_next]

        [talk name=""]
        （里面没有传出任何响动）
        [wait time="300"]
        [click_next]



        [jump target="*corridor_1f" storage="04_detective_part2_search.ks"]

    *ka-petto
        [layopt layer="message0" visible="true"]
        [eval exp="tf.serched = 'true'"]

        [talk name=""]
        （铺着地毯的走廊上，有3种脚印）
        [wait time="300"]
        [click_next]

        [talk name=""]
        （有两种脚印的鞋尖是圆的，另一种则是尖的）
        [wait time="300"]
        [click_next]

        [jump target="*corridor_1f" storage="04_detective_part2_search.ks"]

    *fuukeiga
        [layopt layer="message0" visible="true"]
        [eval exp="tf.serched = 'true'"]

        （好像是宅邸庭院的绘画）
        [wait time="300"]
        [click_next]

        [talk name=""]
        （画框略微倾斜，没有特别奇怪的地方）
        [wait time="300"]
        [click_next]

        [jump target="*corridor_1f" storage="04_detective_part2_search.ks"]

    *jinbutsuga
        [layopt layer="message0" visible="true"]
        [eval exp="tf.serched = 'true'"]

        [talk name=""]
        （一副带着从容微笑的人物肖像）
        [wait time="300"]
        [click_next]

        ;※ヒマリの絵かも……と思わせる形にしてます。（実際のイラストは違うので表情のみの描写）
        [talk name=""]
        （看上去给人一种全部被看穿的感觉，没有特别奇怪的地方）
        [wait time="300"]
        [click_next]


        [jump target="*corridor_1f" storage="04_detective_part2_search.ks"]


    ;二階廊下--------------------------------------------------------
*jump3
;-------------------------------------------------------------
    [layopt layer="message0" visible="false" wait="true"]
    [bg_effect storage="BG03_Hotelcorridor.jpg"]

    [layopt layer="message0" visible="true"]
    [eval exp="tf.serched = 'false'"]

    [talk name=""]
    （来到2楼的走廊）
    [wait time="300"]
    [click_next]

    [talk name=""]
    （要寻找与犯人有关的线索吗？）
    [wait time="300"]
    [click_next]

*corridor_2f
    [layopt layer="message0" visible="false" wait="true"]

    [clickable target="*rouka_2f" x="380" y="620" width="570" height="100"]
    [clickable target="*rouka_2f" x="500" y="525" width="400" height="100"]
    [clickable target="*rouka_2f" x="610" y="480" width="240" height="50"]
    [clickable target="*rouka_2f" x="665" y="415" width="170" height="70"]
    [clickable target="*hidari_tobira_2f" x="30" y="150" width="280" height="600"]
    [clickable target="*tana" x="800" y="400" width="50" height="60"]
    [clickable target="*migi_tobira_2f" x="1080" y="140" width="160" height="600"]

    [button target="*leave_map" x="40" y="40" height="60" graphic="my_gamedevdept_01_door_01.png" fix="false"]
    [s]

    ;--------------------------------------
    *rouka_2f
    ;--------------------------------------
        [layopt layer="message0" visible="true"]

        [eval exp="tf.serched = 'true'"]
        [eval exp="f.evidence_of_akira2 = 'true'"]

        [talk name=""]
        （圆鞋尖的脚印一直延伸到屋主的房间里）
        [wait time="300"]
        [click_next]


        [talk name=""]
        （脚印的左侧，布满了细小的圆形污渍……）
        [wait time="300"]
        [click_next]
        ;証拠：アキラの証拠入手
        [evidence_pop storage="BG03_akira.png"]

        （这些连续的小凹陷是什么的痕迹？）
        [wait time="300"]
        [click_next]
        [evidence_remove]


        [jump target="*corridor_2f" storage="04_detective_part2_search.ks"]


    ;--------------------------------------
    *hidari_tobira_2f
    ;--------------------------------------
        [layopt layer="message0" visible="true"]

        [eval exp="tf.serched = 'true'"]
        [talk name=""]
        （刷的雪白的门）
        [wait time="300"]
        [click_next]

        [talk name=""]
        （把手放在门把上，但门锁着打不开）
        [wait time="300"]
        [click_next]

        [jump target="*corridor_2f" storage="04_detective_part2_search.ks"]


    ;--------------------------------------
    *tana
    ;--------------------------------------
        [layopt layer="message0" visible="true"]

        [eval exp="tf.serched = 'true'"]
        [talk name=""]
        （带门的小柜子）
        [wait time="300"]
        [click_next]

        [talk name=""]
        （里面装满了子弹和手榴弹）
        [wait time="300"]
        [click_next]
        [jump target="*corridor_2f" storage="04_detective_part2_search.ks"]


    ;--------------------------------------
    *migi_tobira_2f
    ;--------------------------------------
        [layopt layer="message0" visible="true"]

        [eval exp="tf.serched = 'true'"]
        [talk name=""]
        （带读卡器的门锁）
        [wait time="300"]
        [click_next]

        [talk name=""]
        （似乎是很重要的房间，但看上去和本案无关）
        [wait time="300"]
        [click_next]

        [jump target="*corridor_2f" storage="04_detective_part2_search.ks"]




;書庫---------------------------------------------------------
*jump4
;-------------------------------------------------------------
[layopt layer="message0" visible="false" wait="true"]
[bg_effect storage="BG04_TrinityOldLibrary.jpg"]

[eval exp="tf.serched = 'false'"]

[talk name=""]
（来到宅邸的书房）
[wait time="450"]
[click_next]

[talk name=""]
（要寻找与犯人有关的线索吗？）
[wait time="450"]
[click_next]

*shoko
[layopt layer="message0" visible="false" wait="true"]
[clickable target="*hondana" x="190" y="135" width="280" height="250"]
[clickable target="*hondana2" x="955" y="175" width="440" height="220"]
[clickable target="*isu" x="520" y="360" width="480" height="150"]
[clickable target="*hashigo" x="575" y="125" width="100" height="210"]
[clickable target="*hashigo" x="560" y="320" width="100" height="100"]
[clickable target="*futariyou" x="0" y="360" width="295" height="150"]

[button target="*leave_map" x="40" y="40" height="60" graphic="my_gamedevdept_01_door_01.png" fix="false"]
[s]

;--------------------------------------
*hashigo
;--------------------------------------
[layopt layer="message0" visible="true"]
[eval exp="tf.serched = 'true'"]
[talk name=""]
（一架结实的木梯）
[wait time="450"]
[click_next]
;証拠：ダミーはしご

[talk name=""]
（从表面的摩擦程度来看，平时应该没怎么用过）
[wait time="450"]
[click_next]
[eval exp="f.evidence_of_dummy2 = 'true'"]
[evidence_pop storage="Event_806_BuffSelect_Icon_05.png" x="520" width="220"]
[talk name=""]
（借助它应该可以从宅邸的一楼移动到二楼。）
[wait time="450"]
[click_next]

[evidence_remove]
[jump target="*shoko" storage="04_detective_part2_search.ks"]

;--------------------------------------
*isu
;--------------------------------------
[layopt layer="message0" visible="true"]
[eval exp="tf.serched = 'true'"]
[talk name=""]
（摆放着单人椅的阅读区）
[wait time="450"]
[click_next]

[talk name=""]
（椅子表面因为岁月的侵蚀而开裂了）
[wait time="450"]
[click_next]

[jump target="*shoko" storage="04_detective_part2_search.ks"]
;--------------------------------------
*futariyou
;--------------------------------------
[layopt layer="message0" visible="true"]
[eval exp="tf.serched = 'true'"]

[talk name=""]
（摆放着双人椅的阅读区）
[wait time="450"]
[click_next]

;※証拠1の方でユズが座っていたため。
[talk name=""]
（最近应该有谁坐过，坐垫有些皱了）
[wait time="450"]
[click_next]
[jump target="*shoko" storage="04_detective_part2_search.ks"]

;--------------------------------------
*hondana
;--------------------------------------
[layopt layer="message0" visible="true"]
[eval exp="tf.serched = 'true'"]


[talk name=""]
（摆放着占卜书籍的书架）
[wait time="450"]
[click_next]

;※ヒマリがよく占いの本を読んでいる
[talk name=""]
（书的排列摇摇晃晃的，似乎频繁地被拿进拿出？）
[wait time="450"]
[click_next]

[talk name=""]
（甚至中间还有十几本是被抽出来的状态）
[wait time="450"]
[click_next]

[talk name=""]
……
[wait time="450"]
[click_next]

[talk name=""]
…
[wait time="450"]
[click_next]

[fadeoutbgm time="500"]
[wait time="1000"]

[playse storage="SE_Fall_06.wav" loop="false" wait="true"]
[choice_button mode="1" choice1="不知为何很在意这个书架！" jump1="*jump_89" storage="04_detective_part2_search.ks"]
*jump_89
[talk name=""]
（书架后面好像有什么开关！）
[wait time="450"]
[click_next]

[talk name=""]
（好像需要输入0~4的四位密码）
[wait time="450"]
[click_next]

[layopt layer="message0" visible="false" wait="true"]

[iscript]
    tf.bangou_counter = 0;
[endscript]

[anshoubangou jump2="*anshou1"]

*anshou1
[iscript]
    tf.bangou_counter +=1;
[endscript]

[anshoubangou jump1="*anshou2"]

*anshou2
[iscript]
    tf.bangou_counter +=1;
[endscript]
[anshoubangou jump1="*anshou3"]

*anshou3
[iscript]
    tf.bangou_counter +=1;
[endscript]
[anshoubangou jump1="*anshou4"]

*anshou4
[stopbgm]
[clearfix]
[clearstack]
[jump storage="09_true_ending.ks"]


*miss
[iscript]
    tf.bangou_counter +=1;
[endscript]
[if exp="tf.bangou_counter >= 4"]

    [talk name=""]
    (看来密码输错了)
    [wait time="450"]
[click_next]

    [talk name=""]
    (现在好像与这里无关，之后再来吧)
    [wait time="450"]
[click_next]

    [fadeinbgm storage="Theme_68.ogg" time="500" volume="25"]

    [jump target="*shoko" storage="04_detective_part2_search.ks"]
[endif]
[anshoubangou]


[jump target="*shoko" storage="04_detective_part2_search.ks"]


;--------------------------------------
*hondana2
;--------------------------------------
[layopt layer="message0" visible="true"]
[eval exp="tf.serched = 'true'"]

[talk name=""]
（摆满了和电脑编程有关的书架）
[wait time="450"]
[click_next]

;※ヒマリはプログラミング関係ほぼすべて知ってそうなので、本はあったとしてもあんまり開いていなさそうなので。
[talk name=""]
（每层都整理得很干净，最近没有被取出的迹象）
[wait time="450"]
[click_next]



[jump target="*shoko" storage="04_detective_part2_search.ks"]

;主の部屋--------------------------------------------------------
*jump5
;-------------------------------------------------------------
[layopt layer="message0" visible="false" wait="true"]
[bg_effect storage="BG05_LuxuriousRooms_Night.jpg"]

[eval exp="tf.serched = 'false'"]


[talk name=""]
（来到了宅邸主人的卧室）
[wait time="450"]
[click_next]

[talk name=""]
（要寻找与犯人有关的线索吗？）
[wait time="450"]
[click_next]

*arujinoheya
[layopt layer="message0" visible="false" wait="true"]
[clickable target="*fukafuka" x="150" y="470" width="1000" height="400"]
[clickable target="*madogiwa" x="500" y="370" width="350" height="100"]
[clickable target="*bed" x="0" y="385" width="550" height="200"]
[clickable target="*bigsofa" x="880" y="370" width="250" height="125"]
[clickable target="*kagami" x="1150" y="200" width="300" height="220"]

[button target="*leave_map" x="40" y="40" height="60" graphic="my_gamedevdept_01_door_01.png" fix="false"]
[s]

;--------------------------------------
*madogiwa

[eval exp="tf.serched = 'true'"]
[eval exp="f.evidence_of_midori2 = 'true'"]

[talk name=""]
（窗边的地板上有被雨淋过的痕迹）
[wait time="450"]
[click_next]

;証拠：ミドリの証拠入手
[talk name=""]
（最近窗户好像被打开过）
[wait time="450"]
[click_next]
（听说窗户打不开来着……）
[wait time="450"]
[click_next]

[evidence_pop storage="My_Defaultroom_Window.png"]

[talk name=""]
（说起来，是我到了这座宅邸之后才开始下雨的）
[wait time="450"]
[click_next]
[evidence_remove]
[jump target="*arujinoheya" storage="04_detective_part2_search.ks"]

;------------------------
*bed

[eval exp="tf.serched = 'true'"]

[talk name=""]
（收拾得很干净的床铺）
[wait time="450"]
[click_next]

[talk name=""]
（枕头旁边堆满了占卜有关的书籍）
[wait time="450"]
[click_next]

;※BG04のDで抜き取られていた本

[jump target="*arujinoheya" storage="04_detective_part2_search.ks"]

;-----------------------------------------------------------
*bigsofa

[eval exp="tf.serched = 'true'"]

[talk name=""]
（沙发很长，能坐下3个人）
[wait time="450"]
[click_next]

[talk name=""]
（可能是没怎么坐过，感觉还很新）
[wait time="450"]
[click_next]
[jump target="*arujinoheya" storage="04_detective_part2_search.ks"]

;-----------------------------------------------------------
*fukafuka

[eval exp="tf.serched = 'true'"]

[talk name=""]
（又厚又贵的地毯）
[wait time="450"]
[click_next]

[talk name=""]
（可能是放过重物，上面有两条细长的痕迹）
[wait time="450"]
[click_next]
[jump target="*arujinoheya" storage="04_detective_part2_search.ks"]

;-----------------------------------------------------------
*kagami

[eval exp="tf.serched = 'true'"]

[talk name=""]
（巨大的最新款电视机）
[wait time="450"]
[click_next]

[talk name=""]
（现在不是看电视的时候）
[wait time="450"]
[click_next]
[jump target="*arujinoheya" storage="04_detective_part2_search.ks"]


*leave_map
[cm]
[layopt layer="message0" visible="true"]

[jump target="*no_touch" storage="04_detective_part2_search.ks" cond="tf.serched == 'false'"]

[talk name=""]
（在意的地方都调查过了，差不多该去其他地方了吧？）
[wait time="450"]
[click_next]

[jump target="*map_select" storage="04_detective_part2_search.ks"]


;none
;----------------------------------------------
*no_touch

[talk name=""]
（还有其他可以调查的地方。要前往吗？）
[wait time="450"]
[click_next]

[jump target="*map_select" storage="04_detective_part2_search.ks"]

*04_detective_part2_end
*part_end
[hide_all]
[fadeoutbgm time="500"]
[stopbgm]
[clearfix]
[clearstack]
[jump storage="04_detective_part3_reasoning.ks"]

