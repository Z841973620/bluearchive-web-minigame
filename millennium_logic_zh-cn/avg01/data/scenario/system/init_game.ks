


;prelordr類
;必須
[call storage="system/macro.ks"]
[call storage="system/talk.ks"]
[call storage="system/chara_moves.ks"]
[call storage="system/emo.ks"]
[call storage="system/choices_button.ks"]
[call storage="system/evidence.ks"]
[call storage="system/skip.ks"]
[call storage="system/bg_effect.ks"]
[call storage="system/event_macro.ks"]


;フラグの初期化ーーーーーーーーーー
[iscript]
    // チュートリアルのフラグ
    f.tutorial_aris_talked = "false";
    f.tutorial_midori_talked = "false";
    f.tutorial_momoi_talked = "false";
    f.tutorial_yuzu_talked = "false";
    f.tutorial_akira_talked = "false";

    f.tutorial_end = 'false'


    // 探索1のフラグ
    f.evidence_of_midori = "false";
    f.evidence_of_momoi = "false";
    f.evidence_of_akira = "false";
    f.d1_momoi_talked ="false";
    f.d1_midori_talked = "false";

    f.detective_part1_end = "false";


    // 探索2のフラグ
    f.evidence_of_midori2 = "false";
    f.evidence_of_dummy1 = "false";
    f.evidence_of_dummy2 = "false";
    f.evidence_of_momoi2 = "false";
    f.evidence_of_akira2 = "false";

[endscript]

;画像の宣言
[preload storage="data/bgimage/BG_ForestRailRoad_Fog.jpg" single_use="true"]
[preload storage="data/bgimage/BG_MudFlat_cloudy.jpg" single_use="true"]
[preload storage="data/bgimage/BG_ForestRoad_Night.jpg" single_use="true"]
[preload storage="data/bgimage/BG01_HotelLobby.jpg"]
[preload storage="data/bgimage/BG05_LuxuriousRooms_Night.jpg"]
[preload storage="data/bgimage/BG06_PartyRoom.jpg"]
[preload storage="data/bgimage/BG02_OldHouseCorridor.jpg"]
[preload storage="data/bgimage/BG03_Hotelcorridor.jpg"]
[preload storage="data/bgimage/BG04_TrinityOldLibrary.jpg"]

; 効果音
[preload storage="data/sound/SE_Run_05.wav"]
[preload storage="data/sound/SE_Knock_03c.wav"]
[preload storage="data/sound/SE_Spotlight_01.wav"]
[preload storage="data/sound/SE_FootStep_10.wav"]
[preload storage="data/sound/SE_FootStep_04b.wav"]
[preload storage="data/sound/SE_Hit_02.wav"]
[preload storage="data/sound/SE_HangUp_01.wav"]
[preload storage="data/sound/SE_RetroSuccess_01.wav"]
[preload storage="data/sound/SE_Flick_01.wav"]
[preload storage="data/sound/SE_DoorSlowOpen_01.wav" single_use="true"]
[preload storage="data/sound/SE_Eat_01.wav" single_use="true"]
[preload storage="data/sound/SE_Throw_01.wav" single_use="true"]
[preload storage="data/sound/SE_Fall_06.wav" single_use="true"]
[preload storage="data/sound/SE_Knock_01.wav" single_use="true"]
[preload storage="data/sound/SE_PrisonDoor_01_Close.wav" single_use="true"]
[preload storage="data/sound/SE_BigLaser_01.wav" single_use="true"]
[preload storage="data/sound/SE_BigLaser_02.wav" single_use="true"]
[preload storage="data/sound/SE_Typing_02.wav"]

[return]