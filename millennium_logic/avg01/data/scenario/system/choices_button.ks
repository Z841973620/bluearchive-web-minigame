
[keyframe name="choice_enter"]
       [frame p=0% scale="80%" opacity="0"  ]
       [frame p=80% scale="90%"  ]
       [frame p=100% scale="100%" opacity="255" ]
[endkeyframe]
[glink_config show_time="300" show_keyframe="choice_enter" select_keyframe="choice_enter" select_time="300" reject_time="300" reject_delay="300"    ]

[macro name="choice_button"]
[layopt layer="message0" visible="false" wait="true"]
;mode
;choice1
;jump1
;choice2
;jump2
;choice3
;jump3
;storage
       [iscript]
              tf.mode = mp.mode || 1;
              tf.choice1 = mp.choice1 || "選択肢_1";
              tf.jump1 = mp.jump1 || "*jump";
              tf.choice2 = mp.choice2 || "選択肢_2";
              tf.jump2 = mp.jump2 || "*jump";
              tf.choice3 = mp.choice3 || "選択肢_3";
              tf.jump3 = mp.jump3 || "*jump";
              tf.storage=mp.storage ||"sample.ks";
       [endscript]


       [if exp="tf.mode == '1'"]

              [glink x="240" y="200" width="700" height="25" text="&tf.choice1" target="&tf.jump1" color="blue" name="glink2" storage="&tf.storage"  font_color="0x445160" graphic="choice.png" size="25"]

              [s]

       [elsif exp="tf.mode == '2'"]
              [glink x="240" y="150" width="700" height="25" text="&tf.choice1" target="&tf.jump1" color="blue" name="glink1" storage="&tf.storage" graphic="choice.png" font_color="0x445160" size="25"]
              [glink x="240" y="250" width="700" height="25" text="&tf.choice2" target="&tf.jump2" color="blue" name="glink2" storage="&tf.storage" graphic="choice.png" font_color="0x445160" size="25"]
              [s]

       [elsif exp="tf.mode == '3'"]
              [glink x="240" y="100" width="700" height="25" text="&tf.choice1" target="&tf.jump1" color="blue" name="glink1" storage="&tf.storage" graphic="choice.png" font_color="0x445160" size="25"]
              [glink x="240" y="200" width="700" height="25" text="&tf.choice2" target="&tf.jump2" color="blue" name="glink2" storage="&tf.storage" graphic="choice.png" font_color="0x445160" size="25"]
              [glink x="240" y="300" width="700" height="25" text="&tf.choice3" target="&tf.jump3" color="blue" name="glink3" storage="&tf.storage" graphic="choice.png" font_color="0x445160" size="25"]

              [s]

       [endif]         
[endmacro]
[macro name="map_select"]
;mode
;choice1
;jump1
;choice2
;jump2
;choice3
;jump3
;storage
       [iscript]

              tf.jump1 = mp.jump1 || "*jump1";
              tf.jump2 = mp.jump2 || "*jump2";
              tf.jump3 = mp.jump3 || "*jump3";
              tf.jump4 = mp.jump4 || "*jump4";
              tf.jump5 = mp.jump5 || "*jump5";
              tf.storage= mp.storage || "04_detective_part1_search.ks"


       [endscript]
              [chara_hide_all wait="false"]

              [glink x="240" y="100" width="700" height="25" text="エントランスホール" target="&tf.jump1" color="blue" name="glink1" storage="&tf.storage" graphic="choice.png" font_color="0x445160" size="25"]
              [glink x="240" y="200" width="700" height="25" text="一階廊下" target="&tf.jump2" color="blue" name="glink2" storage="&tf.storage" graphic="choice.png" font_color="0x445160" size="25"]
              [glink x="240" y="300" width="700" height="25" text="二階廊下" target="&tf.jump3" color="blue" name="glink3" storage="&tf.storage" graphic="choice.png" font_color="0x445160" size="25"]
              [glink x="240" y="400" width="700" height="25" text="書庫" target="&tf.jump4" color="blue" name="glink4" storage="&tf.storage" graphic="choice.png" font_color="0x445160" size="25"]
              [glink x="240" y="500" width="700" height="25" text="主の寝室" target="&tf.jump5" color="blue" name="glink5" storage="&tf.storage" graphic="choice.png" font_color="0x445160" size="25"]

              [s]

               
[endmacro]

[macro name="anshoubangou"]
;mode
;choice1
;jump1
;choice2
;jump2
;choice3
;jump3
;storage
       [iscript]

              tf.jump1 = mp.jump1 || "*miss";
              tf.jump2 = mp.jump2 || "*miss";
              tf.jump3 = mp.jump3 || "*miss";
              tf.jump4 = mp.jump4 || "*miss";
              tf.jump5 = mp.jump5 || "*miss";
              tf.storage= mp.storage || "04_detective_part2_search.ks"


       [endscript]
       
              [chara_hide_all wait="false"]

              [glink x="240" y="100" width="700" height="25" text="0" target="&tf.jump1" color="blue" name="glink1" storage="&tf.storage" graphic="choice.png" font_color="0x445160" size="25"]
              [glink x="240" y="200" width="700" height="25" text="1" target="&tf.jump2" color="blue" name="glink2" storage="&tf.storage" graphic="choice.png" font_color="0x445160" size="25"]
              [glink x="240" y="300" width="700" height="25" text="2" target="&tf.jump3" color="blue" name="glink3" storage="&tf.storage" graphic="choice.png" font_color="0x445160" size="25"]
              [glink x="240" y="400" width="700" height="25" text="3" target="&tf.jump4" color="blue" name="glink4" storage="&tf.storage" graphic="choice.png" font_color="0x445160" size="25"]
              [glink x="240" y="500" width="700" height="25" text="4" target="&tf.jump5" color="blue" name="glink5" storage="&tf.storage" graphic="choice.png" font_color="0x445160" size="25"]
              
              [s]

               
[endmacro]
[return]