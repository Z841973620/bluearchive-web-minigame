[clearstack]
[clearfix]

[call storage="system/init_game.ks"]
[call storage="system/event_avg_character.ks"]

;画像の宣言
[preload storage="data/bgimage/BG06_PartyRoom.jpg"]

[preload storage="data/sound/SE_Fall_06.wav"]
[preload storage="data/sound/SE_Hit_02.wav"]
[preload storage="data/sound/SE_Knock_03c.wav"]
[preload storage="data/sound/SE_RetroSuccess_01.wav" single_use="true" ]

[iscript]
    f.momoi_end = 'false';
    f.midori_end = 'false';
    f.akira_end = 'false';
[endscript]


[jump storage="07_ending_akira.ks"]
