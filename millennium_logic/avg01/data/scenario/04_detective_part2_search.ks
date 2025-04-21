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
（証言を得た後、一旦食堂へと戻って来た）
[wait time="450"]
[click_next]

[talk name=""]
（嘘のアリバイを語れば、必ずどこかでボロが出るものだし……）
[wait time="450"]
[click_next]

[talk name=""]
（実際今の聞き込みで、アリバイにも綻びが見えた気がする）
[wait time="450"]
[click_next]

[talk name=""]
（……となれば、次に探すべきは――）
[wait time="450"]
[click_next]

[choice_button mode="1" choice1="犯人に繋がる物的証拠集めだ。" jump1="*jump_54" storage="04_detective_part2_search.ks"]
*jump_54

[talk name=""]
（とはいえどこから探そう？）
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
（エントランスホールへとやって来た）
[wait time="450"]
[click_next]

[talk name=""]
（犯人に繋がりそうな手がかりを探そうか？）
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
（真っ白に塗られた手すりだ）
[wait time="450"]
[click_next]

[talk name=""]
（表面はピカピカで汚れ一つない）
[wait time="450"]
[click_next]

[jump target="*lobbyselect" storage="04_detective_part2_search.ks"]

;----------------------------------------------------------------
*kabin
[eval exp="tf.serched = 'true'"]
[eval exp="f.evidence_of_dummy1 = 'true'"]

[talk name=""]
（花瓶に生けられたバラだ）
[wait time="450"]
[click_next]
;証拠：ダミー証拠入手
[talk name=""]
（どこか気品のある甘い香りが漂っている）
[wait time="450"]
[click_next]

[evidence_pop storage="Item_Icon_Favor_Lv2_Package.png" width="290"]
[talk name=""]
(モモイさんが溢したという、芳香剤の香りに似ている気がする)
[wait time="450"]
[click_next]

[evidence_remove]


[jump target="*lobbyselect" storage="04_detective_part2_search.ks"]

;----------------------------------------------------------------
*sofa
[eval exp="tf.serched = 'true'"]

[talk name=""]
（思わず座るのをためらってしまうほど高級そうなソファだ）
[wait time="450"]
[click_next]

[talk name=""]
（最近誰かが使った形跡はない）
[wait time="450"]
[click_next]

[jump target="*lobbyselect" storage="04_detective_part2_search.ks"]

;----------------------------------------------------------------
*kaidan
[eval exp="tf.serched = 'true'"]

[talk name=""]
（大理石造りのゴージャスな階段だ）
[wait time="450"]
[click_next]

[talk name=""]
（一段のぼるたび、足音がエントランス中に響いていく）
[wait time="450"]
[click_next]

[jump target="*lobbyselect" storage="04_detective_part2_search.ks"]

;----------------------------------------------------------------
*shoumei
[eval exp="tf.serched = 'true'"]

[talk name=""]
（天井から吊るされたおしゃれな照明だ）
[wait time="450"]
[click_next]

[talk name=""]
（あれがもし落ちてきたらと思うと……少し怖い）
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
（一階の廊下へとやって来た）
[wait time="450"]
[click_next]

[talk name=""]
（犯人に繋がりそうな手がかりを探そうか？）
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
        （白い女性に割り当てられた部屋だ）
        [wait time="300"]
        [click_next]

        [talk name=""]
        （ほのかにバニラのような甘い香りがする）
        [wait time="300"]
        [click_next]
        ;証拠：モモイの証拠入手
        [evidence_pop storage="BG02_momoi.png"]

        [talk name=""]
        （バニラエッセンスのような香りだが、なぜこんなところから？）
        [wait time="300"]
        [click_next]

        [evidence_remove]

        [jump target="*corridor_1f" storage="04_detective_part2_search.ks"]

    *tobira_hidari
        [layopt layer="message0" visible="true"]
        [eval exp="tf.serched = 'true'"]

        [talk name=""]
        （歴史を感じさせる扉だ）
        [wait time="300"]
        [click_next]

        [talk name=""]
        （中からも物音は聞こえない）
        [wait time="300"]
        [click_next]



        [jump target="*corridor_1f" storage="04_detective_part2_search.ks"]

    *ka-petto
        [layopt layer="message0" visible="true"]
        [eval exp="tf.serched = 'true'"]

        [talk name=""]
        （カーペットが敷かれた廊下には、3種類の足跡がついている）
        [wait time="300"]
        [click_next]

        [talk name=""]
        （2種類の足跡は靴先が丸く、1種類はとがっているようだ）
        [wait time="300"]
        [click_next]

        [jump target="*corridor_1f" storage="04_detective_part2_search.ks"]

    *fuukeiga
        [layopt layer="message0" visible="true"]
        [eval exp="tf.serched = 'true'"]

        （屋敷の庭を描いた絵画らしい）
        [wait time="300"]
        [click_next]

        [talk name=""]
        （額縁がわずかに傾いているが、特別おかしなところはない）
        [wait time="300"]
        [click_next]

        [jump target="*corridor_1f" storage="04_detective_part2_search.ks"]

    *jinbutsuga
        [layopt layer="message0" visible="true"]
        [eval exp="tf.serched = 'true'"]

        [talk name=""]
        （余裕のある笑みを浮かべた人物の絵画だ）
        [wait time="300"]
        [click_next]

        ;※ヒマリの絵かも……と思わせる形にしてます。（実際のイラストは違うので表情のみの描写）
        [talk name=""]
        （眺めているとすべてを見透かされそうな気分になるが、特別おかしなところはない）
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
    （2階の廊下へとやって来た）
    [wait time="300"]
    [click_next]

    [talk name=""]
    （犯人に繋がりそうな手がかりを探そうか？）
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
        （靴先の丸い足跡が、主人の部屋へと続いている）
        [wait time="300"]
        [click_next]


        [talk name=""]
        （足跡の左側には、小さな円状の汚れが点々と付着しているが……）
        [wait time="300"]
        [click_next]
        ;証拠：アキラの証拠入手
        [evidence_pop storage="BG03_akira.png"]

        （点々と続く小さなくぼみは何の跡だろうか？）
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
        （真っ白に塗られた扉だ）
        [wait time="300"]
        [click_next]

        [talk name=""]
        （ノブに手をかけるが、鍵が閉まっていて開かない）
        [wait time="300"]
        [click_next]

        [jump target="*corridor_2f" storage="04_detective_part2_search.ks"]


    ;--------------------------------------
    *tana
    ;--------------------------------------
        [layopt layer="message0" visible="true"]

        [eval exp="tf.serched = 'true'"]
        [talk name=""]
        （扉付きの小さな棚だ）
        [wait time="300"]
        [click_next]

        [talk name=""]
        （中には銃弾や手榴弾がぎっしり詰まっている）
        [wait time="300"]
        [click_next]
        [jump target="*corridor_2f" storage="04_detective_part2_search.ks"]


    ;--------------------------------------
    *migi_tobira_2f
    ;--------------------------------------
        [layopt layer="message0" visible="true"]

        [eval exp="tf.serched = 'true'"]
        [talk name=""]
        （カードリーダーのついたドアノブだ）
        [wait time="300"]
        [click_next]

        [talk name=""]
        （重要な部屋のようだが、今回の事件には関係なさそうだ）
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
（屋敷の書庫へとやって来た）
[wait time="450"]
[click_next]

[talk name=""]
（犯人に繋がりそうな手がかりを探そうか？）
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
（丈夫に作られた木のはしごだ）
[wait time="450"]
[click_next]
;証拠：ダミーはしご

[talk name=""]
（表面の擦れ具合から、あまり使われていないようだ）
[wait time="450"]
[click_next]
[eval exp="f.evidence_of_dummy2 = 'true'"]
[evidence_pop storage="Event_806_BuffSelect_Icon_05.png" x="520" width="220"]
[talk name=""]
（これを使えば館の一階から二階への移動も可能になるはずだ。）
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
（1人がけの椅子が並ぶ読書スペースだ）
[wait time="450"]
[click_next]

[talk name=""]
（椅子の表面は、経年劣化によってひび割れている）
[wait time="450"]
[click_next]

[jump target="*shoko" storage="04_detective_part2_search.ks"]
;--------------------------------------
*futariyou
;--------------------------------------
[layopt layer="message0" visible="true"]
[eval exp="tf.serched = 'true'"]

[talk name=""]
（2人がけの椅子が置かれた読書スペースだ）
[wait time="450"]
[click_next]

;※証拠1の方でユズが座っていたため。
[talk name=""]
（最近誰かが座ったのか、クッション部分にシワが寄っている）
[wait time="450"]
[click_next]
[jump target="*shoko" storage="04_detective_part2_search.ks"]

;--------------------------------------
*hondana
;--------------------------------------
[layopt layer="message0" visible="true"]
[eval exp="tf.serched = 'true'"]


[talk name=""]
（占い関係の本が並ぶ本棚だ）
[wait time="450"]
[click_next]

;※ヒマリがよく占いの本を読んでいる
[talk name=""]
（本の並びはガタガタで、頻繁に出し入れされている？）
[wait time="450"]
[click_next]

[talk name=""]
（さらには中段の十数冊が抜かれている状態だ）
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
[choice_button mode="1" choice1="この本棚が妙に気になる！" jump1="*jump_89" storage="04_detective_part2_search.ks"]
*jump_89
[talk name=""]
（本棚の奥に何かのスイッチがあった！）
[wait time="450"]
[click_next]

[talk name=""]
（どうやら0~4の4桁の暗証番号をいれるようだ）
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
    (どうやら番号を間違えたようだ)
    [wait time="450"]
[click_next]

    [talk name=""]
    (今はここは関係ないようだ、また来よう)
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
（PC・プログラミング関係の本が並ぶ本棚だ）
[wait time="450"]
[click_next]

;※ヒマリはプログラミング関係ほぼすべて知ってそうなので、本はあったとしてもあんまり開いていなさそうなので。
[talk name=""]
（どの段も綺麗に整頓されていて、最近取り出された形跡はない）
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
（屋敷の主の寝室へとやって来た）
[wait time="450"]
[click_next]

[talk name=""]
（犯人に繋がりそうな手がかりを探そうか？）
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
（窓際の床に、雨が降り込んだ痕跡がある）
[wait time="450"]
[click_next]

;証拠：ミドリの証拠入手
[talk name=""]
（最近窓が開かれたようだ）
[wait time="450"]
[click_next]
（窓が開かないという話だったが……）
[wait time="450"]
[click_next]

[evidence_pop storage="My_Defaultroom_Window.png"]

[talk name=""]
（そういえば雨が振り始めたのは、私がこの屋敷に到着した後だった）
[wait time="450"]
[click_next]
[evidence_remove]
[jump target="*arujinoheya" storage="04_detective_part2_search.ks"]

;------------------------
*bed

[eval exp="tf.serched = 'true'"]

[talk name=""]
（綺麗に整えられたベッドだ）
[wait time="450"]
[click_next]

[talk name=""]
（枕の脇には占い関係の本が山積みになっている）
[wait time="450"]
[click_next]

;※BG04のDで抜き取られていた本

[jump target="*arujinoheya" storage="04_detective_part2_search.ks"]

;-----------------------------------------------------------
*bigsofa

[eval exp="tf.serched = 'true'"]

[talk name=""]
（3人は座れそうな長めのソファだ）
[wait time="450"]
[click_next]

[talk name=""]
（あまり使われていないのか、真新しさが残っている）
[wait time="450"]
[click_next]
[jump target="*arujinoheya" storage="04_detective_part2_search.ks"]

;-----------------------------------------------------------
*fukafuka

[eval exp="tf.serched = 'true'"]

[talk name=""]
（フカフカで高そうなカーペットだ）
[wait time="450"]
[click_next]

[talk name=""]
（重いものを置いていたのか、2本の細長い跡が付いている）
[wait time="450"]
[click_next]
[jump target="*arujinoheya" storage="04_detective_part2_search.ks"]

;-----------------------------------------------------------
*kagami

[eval exp="tf.serched = 'true'"]

[talk name=""]
（大きな最新型のテレビだ）
[wait time="450"]
[click_next]

[talk name=""]
（今はテレビを見ている場合ではない）
[wait time="450"]
[click_next]
[jump target="*arujinoheya" storage="04_detective_part2_search.ks"]


*leave_map
[cm]
[layopt layer="message0" visible="true"]

[jump target="*no_touch" storage="04_detective_part2_search.ks" cond="tf.serched == 'false'"]

[talk name=""]
（気になるところは調べたし、そろそろ別の場所へ行こうか？）
[wait time="450"]
[click_next]

[jump target="*map_select" storage="04_detective_part2_search.ks"]


;none
;----------------------------------------------
*no_touch

[talk name=""]
（他にも調べに行く場所はある。移動しようか？）
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

