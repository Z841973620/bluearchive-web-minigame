*title
[clearfix]
[clearstack]
[fadeoutbgm time="500"]
[chara_hide_all wait="false"]

[iscript]
const charaImageElements = document.querySelectorAll('.yuzu img');
charaImageElements.forEach((imageElement) => {
  imageElement.src = '';
});

const charaElements = document.querySelectorAll('.yuzu');
charaElements.forEach((element) => {
  element.parentNode.removeChild(element);
});
[endscript]

[bg2 position="center" storage="BG_GameDevRoom.jpg" time="2000"] 

[call storage="system/init_game.ks"]
[call storage="system/event_avg_character.ks"]

;シナリオ読み込み or タイトル画面読み込み---------------------------------------
[glink x="240" y="50" width="700" height="25" text="魂の新作"  color="blue" name="glink2" size="25" storage="system/init_01_intro.ks"  font_color="0x445160" graphic="choice.png"]
[glink x="240" y="150" width="700" height="25" text="名探偵・先生！"  color="blue" name="glink2" size="25" storage="02_intro_ADV_2_1.ks"  font_color="0x445160" graphic="choice.png"]
[glink x="240" y="250" width="700" height="25" text="アリバイの確認"  color="blue" name="glink2" size="25" storage="03_tutorial.ks"  font_color="0x445160" graphic="choice.png"]
[glink x="240" y="350" width="700" height="25" text="目撃情報"  color="blue" name="glink2" size="25" storage="04_detective_part1_search.ks"  font_color="0x445160" graphic="choice.png"]
[glink x="240" y="450" width="700" height="25" text="痕跡探し"  color="blue" name="glink2" size="25" storage="04_detective_part2_search.ks" font_color="0x445160" graphic="choice.png"]
[glink x="240" y="550" width="700" height="25" text="ミレニアムロジック！"  color="blue" name="glink2" size="25" storage="04_detective_part3_reasoning.ks"  font_color="0x445160" graphic="choice.png"]
;[glink x="240" y="415" width="700" height="25" text="犯人はモモイ"  color="blue" name="glink2" size="25" storage="system/init_05_momoi.ks"  font_color="0x445160" graphic="choice.png"]
;[glink x="240" y="475" width="700" height="25" text="犯人はミドリ"  color="blue" name="glink2" size="25" storage="system/init_06_midori.ks"  font_color="0x445160" graphic="choice.png"]
;[glink x="240" y="535" width="700" height="25" text="犯人はアキラ"  color="blue" name="glink2" size="25" storage="system/init_07_akira.ks"  font_color="0x445160" graphic="choice.png"]
;[glink x="240" y="595" width="700" height="25" text="true ending"  color="blue" name="glink2" size="25" storage="system/init_09_true.ks"  font_color="0x445160" graphic="choice.png"]
[s]


;[jump storage="system/init_01_intro.ks"]
;[jump storage="02_intro_ADV_2.ks"]
;[jump storage="03_tutorial.ks"]
;[jump storage="04_detective_part_interval.ks" target="*detective_part2_interval"]
;[jump storage="04_detective_part_interval.ks"]
;[jump storage="04_detective_part1_search.ks"]
;[jump storage="04_detective_part2_search.ks"]
;[jump storage="05_ending_momoi.ks"]
;[jump storage="06_ending_midori.ks"]
;[jump storage="07_ending_akira.ks"]
;[jump storage="08_epilogue.ks"]
;[jump storage="03.tutorial.ks"]
;[jump storage="09_true_ending.ks"]

