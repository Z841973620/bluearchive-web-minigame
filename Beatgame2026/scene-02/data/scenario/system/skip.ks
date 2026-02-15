[macro name="skip_button"]
[iscript]
f.jumpstorage = mp.storage
[endscript]
[button role="auto" x="950" y="18" height="90" graphic="auto.png" autoimg="autoon.png" name="auto" fix="true"]
[button target="*skip" role="sleepgame" storage="system/skip.ks" x="1170" y="36" height="63" graphic="skip.png" name="skip" fix="true"]
[jump target="*skip_button_bottom"]

*skip
[cm]
[layopt layer="fix" visible="false"]
[layopt layer="message0" visible="false" wait="true"]
[layopt layer="message1" visible="true"]
[image name="skip_window" layer="1" x="390" y="200" width="500" storage="pu_bg.png"]
[button name="skip_ok" target="*skip_to_end" x="430" y="325" width="200"  graphic="skip_button.png" storage="system/skip.ks"]
[button name="skip_cancel" target="*cancel_button" x="650" y="325" width="200"  graphic="cancel_button.png" storage="system/skip.ks"]
[s]

*cancel_button
[cm]
[kanim name="skip_window" keyframe="button_hide" time="300" wait="true"]
[wait time="300"]
[free name="skip_window" layer="1"]
[awakegame]
[return]

*skip_to_end
[cm]
[kanim name="skip_window" keyframe="button_hide" time="300" wait="true"]
[wait time="300"]
[free name="skip_window" layer="1"]

[jump storage="exit.ks"]

*skip_button_bottom
[endmacro]


