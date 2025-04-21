[macro name="skip_button"]
[iscript]
f.jumpstorage = mp.storage
[endscript]

[button target="*skip" role="sleepgame" storage="system/skip.ks" x="1170" y="40" height="60" graphic="skip.png" name="skip" fix="true"]
[jump target="*skip_button_bottom"]
*skip
[cm]
[layopt layer="fix" visible="false"]
[layopt layer="message0" visible="false" wait="true"]
[layopt layer="message1" visible="true"]
[image name="skip_ok" layer="1" x="390" y="200" width="500" storage="pu_bg.png"]

[button name="skip_ok" target="*skip_to_end" x="430" y="325" width="200"  graphic="skip_button.png" storage="system/skip.ks"]
[button name="skip_ok" target="*cancel_button" x="650" y="325" width="200"  graphic="cancel_button.png" storage="system/skip.ks"]
[kanim name="skip_ok" keyframe="kakudai" time="300" mode="forwards"]
[s]

*cancel_button
[cm]
[kanim name="skip_ok" keyframe="shukusho" time="600" mode="forwards"]
[wait time="600"]
[free name="skip_ok" layer="1"]
[awakegame]
[return]

*skip_to_end
[cm]
[kanim name="skip_ok" keyframe="shukusho" time="600" mode="forwards"]
[wait time="600"]
[free name="skip_ok" layer="1"]
[chara_hide_all time="1000" wait="false"]
[fadeoutbgm time="2000" wait="false"]
[bg_effect storage="black.jpg" time="2000" wait="false"]
[breakgame]
[free_filter layer="base"]
[reset_camera]
[clearfix]
[clearstack]

[jump target="*part_end" storage="&f.jumpstorage"]
*skip_button_bottom
[endmacro]


