[preload storage="data/fgimage/momoi_wit.png"]
[preload storage="data/fgimage/midori_wit.png"]
[preload storage="data/fgimage/white_wit.png"]

;表示-----------------------------------------------------------------------
[macro name="evidence_pop"]
    [image name="evi" layer="1" x="465" y="150" width="350" storage="evidence.png"]
    [image name="evi_item" layer="1" x="%x|480" y="%y|160" width="%width|300" storage="%storage"]
    [kanim name="evi" keyframe="rota_kakudai" time="300" mode="forwards"]
    [kanim name="evi_item" keyframe="kakudai" time="300" mode="forwards"]
    [wait time="350"]
[endmacro]
[macro name="wit_pop"]
    [image name="evi" layer="1" x="465" y="150" width="350" storage="%storage"]
    [kanim name="evi" keyframe="rota_kakudai" time="300" mode="forwards"]
    [wait time="350"]
[endmacro]

[macro name="evidence_remove"]
    [kanim name="evi" keyframe="rota_shukusho" time="300" mode="forwards"]
    [kanim name="evi_item" keyframe="shukusho" time="300" mode="forwards"]
    [wait time="350"]
    [free name="evi" layer="1"]
    [free name="evi_item" layer="1"]    
[endmacro]
[macro name="wit_remove"]
    [kanim name="evi" keyframe="rota_shukusho" time="300" mode="forwards"]
    [wait time="350"]
    [free name="evi" layer="1"]
[endmacro]
;メモメモ帳用の証言アイコンーーーーーー
[macro name="select_evidence"]
    [free name="evi" layer="1"]
    [free name="evi_item" layer="1"]
    [free name="pin" layer="1"] 
    [image name="evi" layer="1" x="150" y="150" width="300" storage="evidence.png"]
    [image name="evi_item" layer="1" x="190" y="160" width="220" storage="%storage"]
    [kanim name="evi" keyframe="rota_10" time="1" mode="forwards"]
    [image name="pin" layer="1" x="300" y="160" width="25" storage="Icon_Pin_01.png"]
[endmacro]
[macro name="select_witness"]
    [free name="evi" layer="1"]
    [free name="evi_item" layer="1"]
    [image name="evi_item" layer="1" x="150" y="150" width="300" storage="%storage"]
    [kanim name="evi_item" keyframe="rota_10" time="1" mode="forwards"]
    [image name="pin" layer="1" x="300" y="160" width="25" storage="Icon_Pin_01.png"]

[endmacro]
[macro name="report_icon"]
    [iscript]
        f.framex=parseInt(mp.x);
        f.framey=parseInt(mp.y);
        tf.iconx=parseInt(f.framex) + ( parseInt(mp.marx) || parseInt(15) );
        tf.icony=parseInt(f.framey) + ( parseInt(mp.mary) || parseInt(12) );
    [endscript]
    [image name="%name" layer="1" x="&f.framex" y="&f.framey" width="160" storage="evidence.png"]
    [image name="%name" layer="1" x="&tf.iconx" y="&tf.icony" width="%width|120" storage="%storage"]
[endmacro]

[return]
;bookの表示関連----------------------------------------------------------------------------------

*book
[cm]
[iscript]
tyrano.plugin.kag.config.defaultLineSpacing = '-10';
[endscript]
[layopt layer="fix" visible="false"]
[layopt layer="message0" visible="false" wait="true"]
[layopt layer="message1" visible="true"]
;[filter layer="base" blur="3" wait="true"]
[image name="book" layer="1" x="90" y="50" width="1100" storage="pocket_book.png"]
[kanim name="book" keyframe="kakudai" time="300" mode="forwards"]


*evi_select_1st
;part1---------------------
[if exp="f.evidence_of_midori == 'true'"]
    [image name="midori_wit" layer="1" x="515" y="200" width="160"  storage="midori_wit.png"]
    [clickable x="515" y="200" width="160" height="116" target="*midori_select_evi1"]
    [kanim name="midori_wit" keyframe="kakudai_rota10deg" time="300" mode="forwards"]
    [eval exp="tf.evidence_of_midori_selected = true"]
[endif]
[if exp="f.evidence_of_momoi === 'true'"]
    [image name="momoi_wit" layer="1" x="810" y="200" width="160" storage="momoi_wit.png"]
    [clickable x="810" y="200" width="160" height="116" target="*momoi_select_evi1"]
    [kanim name="momoi_wit" keyframe="kakudai_rota-2deg" time="300" mode="forwards"]
[endif]
[if exp="f.evidence_of_akira === 'true'"]
    [image name="white_wit" layer="1" x="800" y="350" width="160" storage="white_wit.png"]
    [clickable x="800" y="350" width="160" height="116" target="*akira_select_evi1"]
    [kanim name="white_wit" keyframe="kakudai_rota3deg" time="300" mode="forwards"]
[endif]
;
;part2------------------------------------
[if exp="f.evidence_of_midori2 == 'true'"]
    [report_icon name="midori2_icon" x="520" y="350" storage="My_Defaultroom_Window.png"]
    [clickable x="&f.framex" y="&f.framey" width="160" height="116" target="*midori_select_evi2"]
    [kanim name="midori2_icon" keyframe="kakudai_rota-8deg" time="300" mode="forwards"]
[endif]
[if exp="f.evidence_of_momoi2 === 'true'"]
    [report_icon name="momoi2_icon" x="950" y="200" storage="BG02_momoi.png"]
    [clickable x="&f.framex" y="&f.framey" width="160" height="116" target="*momoi_select_evi2"]
    [kanim name="momoi2_icon" keyframe="kakudai_rota10deg" time="300" mode="forwards"]
[endif]
[if exp="f.evidence_of_akira2 === 'true'"]
    [report_icon name="akira2_icon" x="640" y="380" storage="BG03_akira.png"]
    [clickable x="&f.framex" y="&f.framey" width="160" height="116" target="*akira_select_evi2"]
    [kanim name="akira2_icon" keyframe="kakudai_rota-8deg" time="300" mode="forwards"]
[endif]
[if exp="f.evidence_of_dummy1 === 'true'"]
    [report_icon name="dummy1_icon" x="940" y="330" storage="Item_Icon_Favor_Lv2_Package.png"]
    [clickable x="&f.framex" y="&f.framey" width="160" height="116" target="*dummy_select_evi1"]
    [kanim name="dummy1_icon" keyframe="kakudai_rota-2deg" time="300" mode="forwards"]
[endif]
[if exp="f.evidence_of_dummy2 === 'true'"]
    [report_icon name="dummy2_icon" x="650" y="200" marx="15" mary="10"  width="110" storage="Event_806_BuffSelect_Icon_05.png"]
    [clickable x="&f.framex" y="&f.framey" width="160" height="116" target="*dummy_select_evi2"]
    [kanim name="dummy2_icon" keyframe="kakudai_rota-12deg" time="300" mode="forwards"]
[endif]

[clickable x="1125" y="80" width="75" height="75" target="*book_end"]
[s]

*evi_select_2nd
;一度クリックした後にもう一度は配置しないとクリック

[if exp="f.evidence_of_midori == 'true'"]
    [clickable x="515" y="200" width="160" height="116" target="*midori_select_evi1"]
[endif]
[if exp="f.evidence_of_momoi === 'true'"]
    [clickable x="810" y="200" width="160" height="116" target="*momoi_select_evi1"]
[endif]
[if exp="f.evidence_of_akira === 'true'"]
    [clickable x="800" y="350" width="160" height="116" target="*akira_select_evi1"]
[endif]
[if exp="f.evidence_of_midori2 == 'true'"]
    [clickable x="520" y="350" width="160" height="116" target="*midori_select_evi2"]
[endif]
[if exp="f.evidence_of_momoi2 === 'true'"]
    [clickable x="950" y="200" width="160" height="116" target="*momoi_select_evi2"]
[endif]
[if exp="f.evidence_of_akira2 === 'true'"]
    [clickable x="640" y="380" width="160" height="116" target="*akira_select_evi2"]
[endif]
[if exp="f.evidence_of_dummy1 === 'true'"]
    [clickable x="940" y="330" width="160" height="116" target="*dummy_select_evi1"]
[endif]
[if exp="f.evidence_of_dummy2 === 'true'"]
    [clickable x="650" y="200" width="160" height="116" target="*dummy_select_evi2"]
[endif]

[clickable x="1125" y="80" width="75" height="75" target="*book_end"]
[s]

*book_end
;[free_filter]
[free name="book" layer="1"]
[iscript]
tyrano.plugin.kag.config.defaultLineSpacing = '9';
[endscript]
[awakegame]
[return]

;証拠１--------------------------------------------------------------
*midori_select_evi1

[free name="check" layer="1"]
[layopt layer="message1" visible="true"]
[current layer="message1"]
[message_config line_spacing="-10" kerning="true"]
[font size="15" color="0x70767c" bold="true" ]

[nowait]

[select_witness storage="midori_wit.png"]
[image name="check" layer="1" storage="Check_P.png" x="595" y="210" width="25"]

负责锁门的绿，
说是卧室窗户的锁坏了。
不知道是不是和确认主人回房间的时间有关？


[endnowait]

[jump target="*evi_select_2nd"]

*momoi_select_evi1
[free name="check" layer="1"]
[layopt layer="message1" visible="true"]
[current layer="message1"]
[message_config line_spacing="1" kerning="true"]
[font size="15" color="0x70767c" bold="true"  ]
[nowait]
[select_witness storage="momoi_wit.png"]
[image name="check" layer="1" storage="Check_P.png" x="890" y="210" width="25"]


桃井似乎在惊慌失措地奔跑着。
小瓶子里装的是什么？

[endnowait]
[jump target="*evi_select_2nd"]
;--------------------------------------------------------------
*akira_select_evi1
[free name="check" layer="1"]
[layopt layer="message1" visible="true"]
[current layer="message1"]
[message_config line_spacing="1" kerning="true"]
[font size="15" color="0x70767c" bold="true"  ]
[nowait]
[select_witness storage="white_wit.png"]
[image name="check" layer="1" storage="Check_P.png" x="880" y="360" width="25"]

突然收到一封信后，一位白衣女子来到了宅邸。
这和『慈爱的怪盗』有关系吗？

[endnowait]
[jump target="*evi_select_2nd"]
;-----------------------------------------------------------------------------------
;証拠２------------------------
;--------------------------------------------------------------
*midori_select_evi2
[free name="check" layer="1"]
[layopt layer="message1" visible="true"]
[current layer="message1"]
[message_config line_spacing="1" kerning="true"]
[font size="15" color="0x70767c" bold="true"  ]
[nowait]
[select_evidence storage="My_Defaultroom_Window.png"]
[image name="check" layer="1" storage="Check_P.png" x="600" y="360" width="25"]

开始下雨是在我到达这个宅邸以后。
在那之后似乎有人打开又关上了窗户。

[endnowait]
[jump target="*evi_select_2nd"]
;-----------------------------------------------------------------------------------
*momoi_select_evi2
[free name="check" layer="1"]
[layopt layer="message1" visible="true"]
[current layer="message1"]
[message_config line_spacing="1" kerning="true"]
[font size="15" color="0x70767c" bold="true"  ]
[nowait]
[select_evidence storage="BG02_momoi.png"]
[image name="check" layer="1" storage="Check_P.png" x="1030" y="210" width="25"]

门口有一股甜甜的香味。
像是香草精油的味道，为什么会出现在这里？

[endnowait]
[jump target="*evi_select_2nd"]

*akira_select_evi2
[free name="check" layer="1"]
[layopt layer="message1" visible="true"]
[current layer="message1"]
[message_config line_spacing="1" kerning="true"]
[font size="15" color="0x70767c" bold="true"  ]
[nowait]
[select_evidence storage="BG03_akira.png"]
[image name="check" layer="1" storage="Check_P.png" x="720" y="390" width="25"]

女仆所穿鞋子的脚印。
它两侧的小凹陷是什么的痕迹？

[endnowait]
[jump target="*evi_select_2nd"]

*dummy_select_evi1
[free name="check" layer="1"]
[layopt layer="message1" visible="true"]
[current layer="message1"]
[message_config line_spacing="1" kerning="true"]
[font size="15" color="0x70767c" bold="true"  ]
[nowait]
[select_evidence storage="Item_Icon_Favor_Lv2_Package.png"]
[image name="check" layer="1" storage="Check_P.png" x="1020" y="340" width="25"]

具有甜美香气的玫瑰花。
和桃井同学说的芳香剂的味道很像。

[endnowait]
[jump target="*evi_select_2nd"]

*dummy_select_evi2
[free name="check" layer="1"]
[layopt layer="message1" visible="true"]
[current layer="message1"]
[message_config line_spacing="1" kerning="true"]
[font size="15" color="0x70767c" bold="true"  ]

[nowait]
[select_evidence storage="Event_806_BuffSelect_Icon_05.png"]
[image name="check" layer="1" storage="Check_P.png" x="730" y="210" width="25"]

看起来平时不常用的梯子。
使用这个的话，应该可以从建筑物的一楼移动到二楼。

[endnowait]
[jump target="*evi_select_2nd"]
[return]