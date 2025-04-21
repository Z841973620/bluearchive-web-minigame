[loadcss file="./data/scenario/system/emo.css"]
[preload storage="data/fgimage/emo/Emoticon_Action1.png"]
[preload storage="data/fgimage/emo/Emoticon_Action2.png"]
[preload storage="data/fgimage/emo/Emoticon_Action3.png"]
[preload storage="data/fgimage/emo/Emoticon_Balloon_N.png"]
[preload storage="data/fgimage/emo/Emoticon_QuestionMark.png"]
[preload storage="data/fgimage/emo/Emoticon_Exclamation.png"]
[preload storage="data/fgimage/emo/Emoticon_ExclamationMark.png"]
[preload storage="data/fgimage/emo/Emoticon_Question.png"]
[preload storage="data/fgimage/emo/Emoticon_Sweat_1.png"]
[preload storage="data/fgimage/emo/Emoticon_Sweat_2.png"]
[preload storage="data/fgimage/emo/Emoticon_Note.png"]
[preload storage="data/fgimage/emo/Emoticon_Aggro1.png"]
[preload storage="data/fgimage/emo/Emoticon_Aggro2.png"]
[preload storage="data/fgimage/emo/Emoticon_Aggro3.png"]
[preload storage="data/fgimage/emo/Emoticon_Sweat_2.png"]
[preload storage="data/fgimage/emo/Emoticon_Shy.png"]
[preload storage="data/fgimage/emo/Emoticon_Heart.png"]
[preload storage="data/fgimage/emo/Emoji_Sigh.png"]
[preload storage="data/fgimage/emo/Emoji_Bulb_1.png"]
[preload storage="data/fgimage/emo/Emoji_Bulb_2.png"]
[preload storage="data/fgimage/emo/Emoji_Sad.png"]
[preload storage="data/fgimage/emo/Emoticon_Twinkle.png"]
[preload storage="data/fgimage/emo/Emoticon_Twinkle1.png"]
[preload storage="data/fgimage/emo/Emoticon_Twinkle2.png"]
[preload storage="data/fgimage/emo/Emoticon_Twinkle3.png" wait="true"]

;効果音のプレロード
[preload storage="data/sound/SFX_Emoticon_Motion_Respond.wav"]
[preload storage="data/sound/SFX_Emoticon_Motion_Dot.wav"]
[preload storage="data/sound/SFX_Emoticon_Motion_Surprise.wav"]
[preload storage="data/sound/SFX_Emoticon_Motion_Question.wav"]
[preload storage="data/sound/SFX_Emoticon_Motion_Chat.wav"]
[preload storage="data/sound/SFX_Emoticon_Motion_Sweat.wav"]
[preload storage="data/sound/SFX_Emoticon_Motion_Exclaim.wav"]
[preload storage="data/sound/SFX_Emoticon_Motion_Upset.wav"]
[preload storage="data/sound/SFX_Emoticon_Motion_Twinkle.wav"]
[preload storage="data/sound/SFX_Emoticon_Motion_Music.wav"]
[preload storage="data/sound/SFX_Emoticon_Motion_Angry.wav"]
[preload storage="data/sound/SFX_Emoticon_Motion_Shy.wav"]
[preload storage="data/sound/SFX_Emoticon_Motion_Heart.wav"]
[preload storage="data/sound/SFX_Emoticon_Motion_Sigh.wav"]
[preload storage="data/sound/SFX_Emoticon_Motion_Bulb.wav"]
[preload storage="data/sound/SFX_Emoticon_Motion_Sad.wav"]


;グローバル変数の宣言------------------------------------------------------
[iscript]
       //エモーションのマージン
       f.emo_x_margin = -150;
       f.emo_y_margin = 50;
       const emo_layer =0;

       //エモーションのフォーマット
       // エモーション名,layer,画像の大きさ,再生秒数,画像の格納先
       f.respond = [
              ["respond1", emo_layer, 70, 670, "emo/Emoticon_Action1.png","SFX_Emoticon_Motion_Respond.wav"],
              ["respond1", emo_layer, 70, 670, "emo/Emoticon_Action2.png"],
              ["respond1", emo_layer, 70, 670, "emo/Emoticon_Action3.png"]
        ];

       f.dot = [
              ["dot1", emo_layer, 100, 1410, "emo/Emoticon_Balloon_N.png", "SFX_Emoticon_Motion_Dot.wav"],
              ["dot2", emo_layer, 100, 1410, "emo/Emoticon_Idea1.png"],
              ["dot3", emo_layer, 100, 1410, "emo/Emoticon_Idea2.png"],
              ["dot4", emo_layer, 100, 1410, "emo/Emoticon_Idea3.png"]
       ];

       f.surprise = [
              ["surprise_ex", emo_layer, 100, 1000, "emo/Emoticon_Exclamation.png","SFX_Emoticon_Motion_Surprise.wav"],
              ["surprise_q", emo_layer, 100, 1000, "emo/Emoticon_Question.png"]
       ];

       f.question = [
              ["question", emo_layer, 55, 1000, "emo/Emoticon_QuestionMark.png","SFX_Emoticon_Motion_Question.wav"]
       ];
       
       f.chat = [
              ["chat", emo_layer, 60, 800, "emo/Emoticon_Chat.png", "SFX_Emoticon_Motion_Chat.wav"]
       ];

       f.sweat = [
              ["sweat1", emo_layer, 32, 970, "emo/Emoticon_Sweat_1.png", "SFX_Emoticon_Motion_Sweat.wav"],
              ["sweat2", emo_layer, 18, 970, "emo/Emoticon_Sweat_2.png"]
       ];

       f.exclaim = [
              ["exclaim", emo_layer, 37, 730, "emo/Emoticon_ExclamationMark.png", "SFX_Emoticon_Motion_Exclaim.wav"]
       ];

       f.upset = [
              ["upset1", emo_layer, 100, 960, "emo/Emoticon_Balloon_N.png", "SFX_Emoticon_Motion_Upset.wav"],
              ["upset2", emo_layer, 100, 960, "emo/Emoticon_Anxiety.png"]
       ];

       f.twinkle = [
              ["twinkle1", emo_layer, 80, 1500, "emo/Emoticon_Twinkle1.png", "SFX_Emoticon_Motion_Twinkle.wav"],
              ["twinkle2", emo_layer, 80, 1500, "emo/Emoticon_Twinkle2.png"],
              ["twinkle3", emo_layer, 80, 1500, "emo/Emoticon_Twinkle3.png"]
       ];

       f.music = [
              ["music", emo_layer, 65, 730, "emo/Emoticon_Note.png", "SFX_Emoticon_Motion_Music.wav"]
       ];

       f.angry = [
              ["angry", emo_layer, 85, 620, "emo/Emoticon_Aggro1.png", "SFX_Emoticon_Motion_Angry.wav"],
              ["angry", emo_layer, 85, 620, "emo/Emoticon_Aggro2.png"],
              ["angry", emo_layer, 85, 620, "emo/Emoticon_Aggro3.png"]
       ];

       f.shy = [
              ["shy1", emo_layer, 100, 750, "emo/Emoticon_Balloon_N.png", "SFX_Emoticon_Motion_Shy.wav"],
              ["shy2", emo_layer, 100, 750, "emo/Emoticon_Shy.png"]
       ];

       f.heart = [
              ["heart1", emo_layer, 100, 780, "emo/Emoticon_Balloon_N.png", "SFX_Emoticon_Motion_Heart.wav"],
              ["heart2", emo_layer, 100, 780, "emo/Emoticon_Heart.png"]
       ];

       f.sigh = [
          ["sigh", emo_layer, 80, 750, "emo/Emoji_Sigh.png", "SFX_Emoticon_Motion_Sigh.wav"]
       ];

       f.bulb = [
              ["bulb1", emo_layer, 100, 1000, "emo/Emoticon_Balloon_N.png", "SFX_Emoticon_Motion_Bulb.wav"],
              ["bulb2", emo_layer, 100, 1000, "emo/Emoji_Bulb_1.png"],
              ["bulb3", emo_layer, 100, 1000, "emo/Emoji_Bulb_2.png"]
       ];

       f.sad = [
              ["sad1", emo_layer, 10, 1000, "emo/Emoji_Sad.png", "SFX_Emoticon_Motion_Sad.wav"],
              ["sad2", emo_layer, 10, 1000, "emo/Emoji_Sad.png"],
              ["sad3", emo_layer, 10, 1000, "emo/Emoji_Sad.png"]
       ];


[endscript]

;エモーションアイコン座標取得---------------------------------------------------
[macro name="calc_emo_pos"]
; キャラの座標からエモアイコンの表示位置を取得
; 引数-----
;name:キャラ名(class名)
;
;戻り値------
;tf.e_x :エモーションアイコンのX座標
;tf.e_y :エモーションアイコンのy座標


;エモーション変形マクロ------------------------------------------------------------------------------
[macro name="emo_apply"]
;指定したクラスにCSSアニメーションを適用する (*主に画像クラスを指定することを想定)
;また指定したクラスをdivで包みこむ（class名は指定したクラス名の先頭"c_"が追加される）
;上記動作は、画像に直接CSSアニメを適用し、divにはCSSアニメを適用せず、ティラノのkanimを適用させるためにある
;
;引数-------
;name:指定する画像のクラス名
;class:作成するクラス名
;time:CSSアニメの秒数　:def:1000
;wait:ウェイト
;戻り値--------
;tf.wait_time:wait用のタイマー
;

[iscript]
       const chara_name = "c_" + mp.name;
       const emoimgClass = mp.img;
       const animeDuration = `${(mp.time || 1000) / 1000}s`;
       const ease = mp.ease || 'ease';
       const charaImgList = document.querySelectorAll(`.${emoimgClass}:not([id])`);
       
       tf.wait = mp.wait||"false";
       tf.wait_time = mp.time;

       charaImgList.forEach((charaImg, index) => {

              // 新しい div 要素を作成し、クラスとスタイルを追加
              const divElement = document.createElement('div');
              divElement.style.position = 'absolute';  // position: absolute を追加
              divElement.style.zIndex = '1';  // z-index を先に設定
              divElement.classList.add("emo_class", chara_name);

              const uniqueID = `charaImg_${index}`;
              charaImg.id = uniqueID;

              // 子要素がある場所に新しい div 要素を挿入
              const parentElement = charaImg.parentElement;
              parentElement.insertBefore(divElement, charaImg);
              divElement.appendChild(charaImg);

              
              // 子要素のスタイルを親要素にコピー（特定のスタイルのみ）
              const stylesToCopy = ['position', 'top', 'left', 'zIndex'];
              for (const styleProperty of stylesToCopy) {
                     divElement.style[styleProperty] = window.getComputedStyle(charaImg)[styleProperty];
              }

              // 子要素から特定のスタイルプロパティを削除
              for (const styleProperty of stylesToCopy) {
                     charaImg.style[styleProperty] = '';
              }
              

              // 子要素に CSS アニメーションを追加
              charaImg.style.animation = `${mp.anime} ${animeDuration} forwards ${ease}`;
              
              // mp.time秒後に emotionのElementを削除
              var emo_name = `.emo_class.${chara_name}` ;
              f.deleteElement(emo_name,mp.time);
              
       });
[endscript]
       ; wait処理
       [if exp="tf.wait == 'true'"]
              [wait time="&tf.wait_time"]
       [endif]

[endmacro]
;エモマクロ---------------------------------------------------------
;emo_アイコン名
;エモーションマクロは名称がemo_から始まる
;イメージを表示したあと、そのイメージにそれに応じたアニメーションを実施し、
;その後クラスごと削除される
;マクロの順番は
;1.エモ座標取得マクロの実行
;2.画像の表示
;3.効果音の再生
;4.画像のアニメーションと画像クラスの破棄
;引数:---------------
;name:キャラ名
;


;エモショーンアイコン表示マクロ------------------------------------------------------------------------
[macro name="emo"]
;指定したクラスにCSSアニメーションを適用する (*主に画像クラスを指定することを想定)
;また指定したクラスをdivで包みこむ（class名は指定したクラス名の先頭"c_"が追加される）
;上記動作は、画像に直接CSSアニメを適用し、divにはCSSアニメを適用せず、ティラノのkanimを適用させるためにある
;
;引数-------
;name:指定する画像のクラス名
;class:作成するクラス名
;time:CSSアニメの秒数　:def:1000
;wait:ウェイト
;戻り値--------
;tf.wait_time:wait用のタイマー
;

[iscript]
       // 座標の取得（キャラ名の位置を取得
       var e_size = this.kag.stat.f[mp.name+"_size"];
       const characterElement = document.querySelector(`.${mp.name}.tyrano_chara`);
       const e_x = parseInt(characterElement.style.left)+(parseInt(characterElement.style.width)/2)+(f.emo_x_margin+this.kag.stat.f[mp.name+"_offset_emo_L"])*e_size;
       const e_y = ((parseInt(characterElement.style.height)/8) +(f.emo_y_margin+this.kag.stat.f[mp.name+"_offset_emo_T"])*e_size) ;
       tf.wait_time = mp.time || f[mp.emo][f[mp.emo].length - 1][3];


       //画像の表示とCSSアニメーションの適用
       f[mp.emo].forEach(function (emo, index) {
              var e_width = emo[2] * e_size;
              // imageタグの実行:画像の表示
              TG.ftag.startTag("image", {
                     name: emo[0],
                     layer: emo[1].toString(),
                     width: e_width,
                     time: mp.time || emo[3].toString(),
                     storage: emo[4],
                     left: e_x.toString(),
                     top: e_y.toString(),
              });
          

              //表示した画像にCSSアニメーションの適用
              //必要な変数の宣言
              const chara_name = "c_" + mp.name;
              const emoimgClass = emo[0];
              const animeDuration = `${(mp.time || emo[3]) / 1000}s`; //CSSアニメの指定方法に数値を返還
              const emo_i_wait_time = mp.time || emo[3];
              const ease = 'ease';
       

              const charaImgList = document.querySelectorAll(`.${emo[0]}:not([id])`);
              charaImgList.forEach((charaImg, index) => {

                     // 新しい div 要素を作成し、クラスとスタイルを追加
                     const divElement = document.createElement('div');
                     divElement.style.position = 'absolute';  // position: absolute を追加
                     divElement.style.zIndex = '1';  // z-index を先に設定
                     divElement.classList.add("emo_class", chara_name);

                     const uniqueID = `${emo[0]}_${index}`;
                     charaImg.id = uniqueID;

                     // 子要素がある場所に新しい div 要素を挿入
                     const parentElement = charaImg.parentElement;
                     parentElement.insertBefore(divElement, charaImg);
                     divElement.appendChild(charaImg);

                     // 子要素のスタイルを親要素にコピー（特定のスタイルのみ）
                     const stylesToCopy = ['position', 'top', 'left', 'zIndex'];
                     for (const styleProperty of stylesToCopy) {
                            divElement.style[styleProperty] = window.getComputedStyle(charaImg)[styleProperty];
                     }

                     // 子要素から特定のスタイルプロパティを削除
                     for (const styleProperty of stylesToCopy) {
                            charaImg.style[styleProperty] = '';
                     }

                     charaImg.style.animation = `${emoimgClass} ${animeDuration} forwards ${ease}`;

              });
              // mp.time秒後に emotionのElementを削除

              f.deleteElement(`.emo_class.${chara_name}`, emo_i_wait_time);
          
       });
    
       //効果音の再生
       TG.ftag.startTag("playse", { storage:f[mp.emo][0][5],loop:"false",volume:"100" } );
[endscript]
       ; wait処理
       [wait_check action_time="&tf.wait_time" wait="%wait|false"]
[endmacro]
[return]