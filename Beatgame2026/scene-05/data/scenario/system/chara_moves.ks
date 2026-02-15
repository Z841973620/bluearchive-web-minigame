[loadcss file="./data/scenario/system/chara_moves.css"]
[call storage="system/chara_moves_keyframes.ks"]

[iscript]
       f.scHeight = TG.config.scHeight;
       f.scWidth = TG.config.scWidth;
[endscript]

;立ち位置計算-------------------------
[macro name="calc_chara_pos"]

       [iscript]

              // x軸の位置計算
              var pos = mp.pos || 3;
              var size = mp.size || 'medium';

              var chara_top = this.kag.stat.f[mp.name+"_top"]+1;



              switch(size){
                     case "small":
                            
                            tf.chara_width = this.kag.stat.f[mp.name+"_width"] * 0.5;
                            tf.y = chara_top;
                            tf.from_y = chara_top;
                            this.kag.stat.f[mp.name+"_size"] = 0.5;
                            break;
                     case "medium":
                            
                            tf.chara_width = this.kag.stat.f[mp.name+"_width"];
                            tf.y = chara_top
                            tf.from_y = chara_top;
                            this.kag.stat.f[mp.name+"_size"] = 1;
                            break;
                     case "big":
                            
                            tf.chara_width = this.kag.stat.f[mp.name+"_width"] * 1.5;
                            tf.y = chara_top;
                            tf.from_y = chara_top;
                            this.kag.stat.f[mp.name+"_size"] = 1.5;
                            break;
              }
              
              var chara_width = tf.chara_width / 2 + this.kag.stat.f[mp.name+"_offset_L"];

              
              switch(pos){
                     case "1":
                            tf.x = ( f.scWidth * 0.1 ) - chara_width;
                            break;
              
                     case "2":
                            tf.x = ( f.scWidth * 0.25 ) - chara_width;
                            break;
                     
                     case "2.5":
                            tf.x = ( f.scWidth * 0.35 ) - chara_width;
                            break;

                     case "3":
                            tf.x = ( f.scWidth * 0.50 ) - chara_width;
                            break;

                     case "3.5":
                            tf.x = ( f.scWidth * 0.65 ) - chara_width;
                            break;

                     case "4":
                            tf.x = ( f.scWidth * 0.75 ) - chara_width;
                            break;

                     case "5":
                            tf.x = ( f.scWidth * 0.90 ) - chara_width;
                            break;

                     case 'left':
                            tf.x = ( f.scWidth * -0.50 ) - chara_width ;
                            break;

                     case 'right':
                            tf.x = ( f.scWidth * 1.50 ) - chara_width ;
                            break;
              }

              // 0座標の問題を回避（Kokona pos 2でちょうど0になり、移動しない不具合への対策）
              if (tf.x === 0) {
                     tf.x = 1;
              }

              tf.from = mp.from;
              
              switch(tf.from){
                     case 'left':
                            tf.from_x = ( f.scWidth * -0.50 ) - chara_width;
                            break;

                     case 'right':
                            tf.from_x = ( f.scWidth * 1.50 ) - chara_width ;
                            break;

                     case 'bottom':
                            tf.from_x = tf.x;
                            tf.from_y = parseInt(f.scHeight) + parseInt(chara_top);
                            break;

                     case 'false':
                            tf.from_y = this.kag.stat.f[mp.name+"_top"];
                            break;
              }

              // エモーション位置の計算
              // 堅牢なパースとデフォルト値の設定
              var e_size = parseFloat(this.kag.stat.f[mp.name+"_size"] || 1);
              var base_emo_x = parseFloat(this.kag.stat.f["emo_x_margin"] || -150);
              var offset_emo_x = parseFloat(this.kag.stat.f[mp.name+"_offset_emo_L"] || 0);
              var margin_x = (base_emo_x + offset_emo_x) * e_size;

              var base_emo_y = parseFloat(this.kag.stat.f["emo_y_margin"] || 50);
              var offset_emo_y = parseFloat(this.kag.stat.f[mp.name+"_offset_emo_T"] || 0);
              var margin_y = (base_emo_y + offset_emo_y) * e_size;

              if (isNaN(tf.chara_width)) {
                     tf.chara_width = parseFloat(this.kag.stat.f[mp.name+"_width"]) || 0;
                     if (mp.size == "small") tf.chara_width *= 0.5;
                     if (mp.size == "big") tf.chara_width *= 1.5;
              }

              // tf.emo_x_margin: moveマクロで tf.x + tf.emo_x_margin として使われる
              // emo.ks: e_x = left + width/2 + margin_x
              // よって tf.emo_x_margin = width/2 + margin_x
              // tf.chara_width は拡大縮小適用後の幅
              tf.emo_x_margin = (tf.chara_width / 2) + margin_x;

              // tf.emo_y_margin: moveマクロで tf.y + tf.emo_y_margin として使われる
              // 高さ情報がここではないため、ひとまず margin_y をそのまま使う（NaN回避）
              tf.emo_y_margin = margin_y;

       [endscript]
[endmacro]


;=====================================================================================================================

;キャラの出現マクロ--------------------------------------------------------
[macro name="app"]

[if exp="( mp.left || 'false' ) == 'false' " ]

              [calc_chara_pos name="%name" pos="%pos|3" from="%from|false" size="%size|medium" ]

       [else]
              [iscript]
                     tf.from = 'false';
                     tf.x = mp.left;
                     tf.y = mp.top || 0;
                     tf.chara_width = mp.width || 600;
                     tf.page = mp.page || "fore";
              [endscript]
              
[endif]

[chara_part name="%name" face="%face|def"]

;キャラの出現位置を指定
[if exp="tf.from == 'false'" ]      

              [iscript]
                     tf.mode = mp.mode || 'def';
                     tf.wait = mp.wait || 'true';
                     tf.time = mp.time || '1000';
              [endscript]

              [if exp="tf.mode == 'def' "]
                     [wait time="100"]
                     ;一旦画面外に表示してからシルエット表示を適用し、所定の位置に移動させる
                     [chara_show name="%name" top="&tf.y" left="&tf.x" wait="false" layer="%layer|0" time="100" width="&tf.chara_width" zindex="%zindex|2"]
                     
                                          [iscript]
                            const className = mp.name;
                            const animationDurationSeconds = tf.time / 1000;

                            const charaImgList = document.querySelectorAll(`.${className} .chara_img, .${className} .part`);

                            const preloadImages = (imageElements, callback) => {
                                   let loadedCount = 0;
                                   const totalImages = imageElements.length;

                                   imageElements.forEach(imgElement => {
                                          const img = new Image();
                                          img.src = imgElement.src;
                                          img.onload = () => {
                                                 loadedCount++;
                                                 if (loadedCount === totalImages) {
                                                        callback();
                                                 }
                                          };
                                   });
                            };

                            const startAnimation = () => {
                           
                                   requestAnimationFrame(() => {
                                          charaImgList.forEach(charaImg => {
                                          charaImg.style.animation = `appear_from_silhouette ${animationDurationSeconds}s forwards ease-in-out`;

                                   
                                          charaImg.addEventListener(
                                                 'animationend',
                                                 () => {
                                                 charaImg.style.animation = ''; 
                                                 },
                                                 { once: true } 
                                          );
                                          });
                                   });
                            };

                            preloadImages(charaImgList, startAnimation);
                     [endscript]
                     [wait time="40"]
                     [chara_move name="%name" top="&tf.y" left="&tf.x" wait="false" anim="%anime|true" time="10"]
                                   ;ウェイト処理
                     [if exp="tf.wait == 'true'"][wait time="&tf.time"][endif]

                            
              ;クイック表示、ウェイト処理を強制的に'false'にする　
              [elsif exp="tf.mode == 'quick'"]

                     [chara_show name="%name" top="&tf.y" left="&tf.x" wait="false" layer="%layer|0" time="200" width="&tf.chara_width" page="&tf.page" zindex="%zindex|2"]
                            
              [endif]

       [else]
              [wait time="100"]
              [chara_show name="%name" top="&tf.from_y" left="&tf.from_x" time="10" layer="%layer|0" width="&tf.chara_width" zindex="%zindex|2"]
              [chara_move name="%name" top="&tf.y" left="&tf.x" wait="%wait|false" anim="%anime|true" time="1000" effect="easeOutCubic" ]   
                     
[endif]
[clearstack stack="if"]           
[endmacro]

[macro name="move"]
;1～5の座標及びleft,rightの合計7個の座標を指定してキャラを移動させる
;topの移動は1/15未実装
;emotionも一緒に移動させるため、エモーションの変換コードも実装している
;moveはキャラ、animはエモーションを移動させる
;------------------------------------------------
;move引数
;name:キャラ名
;pos:移動先
;wait:移動動作を待つか                      def:true
;animeするか、falseの場合はfade-out-in   　 def:true
;time:                                     def:1000 *1秒
;------------------------------------------------
       [calc_chara_pos name="%name" pos="%pos|3" from="false" ]
       [iscript]
              tf.e_x = tf.x + tf.emo_x_margin;
              tf.e_y = tf.y + tf.emo_y_margin;
              tf.class = 'c_' + mp.name;

              tf.wait_time = mp.time || 1000;

              if (mp.pos == 'left' || mp.pos == 'right' || mp.pos == 'bottom'){
                     f.deleteElement(`.`+mp.name, tf.wait_time)
              }

       [endscript]
       [anim name="&tf.class" left="&tf.e_x" top="&tf.e_y" time="%time|1000" effect="easeOutCubic"]
       [chara_move name="%name" top="&tf.y" left="&tf.x" time="%time|1000" wait="%wait|true" anim="%anime|true" effect="easeOutCubic"]
[endmacro]


;=====================================================================================================================
;キャラクターハイドマクロ-----------------------------------------------------------------------
[macro name="hide"]
;指定したモードでキャラクターをハイドする
;def:シルエット化後フェードアウト
;quick:瞬間的に消える
;fade:フェードアウト

[eval exp="tf.mode= mp.mode || 'sil_out' "]


       ;シルエット化後フェードアウト
       ;シルエットの変化はCSSアニメーションを適用
       [if exp="tf.mode == 'sil_out'"]

              [iscript]
              
                     tf.wait_time = mp.time || 1000;
                     // 変数でクラス名を指定
                     const className = mp.name;

              
                     // JavaScriptで対象のクラスにアニメーションを追加
                     const charaImgList = document.querySelectorAll(`.${className}`);
              
                     charaImgList.forEach(charaImg => {
                            charaImg.style.animation = 'hide_in_silhouette 1s forwards ease-in';
                     });
              
                     // 1秒後にキャラを削除
                     f.deleteElement(`.${className}`,tf.wait_time);
              

              [endscript]
              [if exp="( mp.wait || 'true' ) == 'true'"]
                     [wait time="&tf.wait_time"]              
              [endif]         
       
       ;瞬間的に消える
       [elsif exp="tf.mode =='quick'"]
              [chara_hide name="%name" time="0" wait="false"]

       ;フェードアウト
       [elsif exp="tf.mode =='def'"]
              [chara_hide name="%name" time="%time|200" wait="%wait|true"]
       [endif]
[clearstack stack="if"]   
[endmacro]

[macro name="act"]
[iscript]
       switch (mp.act) {
              case "greeting":
                     tf.time = mp.time || 430;
                     tf.wait_time = mp.time || 400;
                     break;
              case "jump":
                     tf.time = mp.time || 200;
                     tf.wait_time = mp.time || 180; // wait_timeの値を設定
                     break;
              case "hophop":
                     tf.time = mp.time || 390;
                     tf.wait_time = mp.time || 300; // wait_timeの値を設定
                     break;
              case "shake":
                     tf.time = mp.time || 290;
                     tf.wait_time = mp.time || 300; // wait_timeの値を設定
                     break;
              case "stiff":
                     tf.time = mp.time || 470;
                     tf.wait_time = mp.time || 400; // wait_timeの値を設定
                     break;
              case "falldownL":
              case "falldownR":
                     tf.time = mp.time || 1470;
                     tf.wait_time = (mp.time || tf.time)+300; // wait_timeの値を設定
                     f.deleteElement(`.`+mp.name, tf.time+100);    // 1.47秒後にキャラを削除
                     break;
              case "flip":
                     tf.time = mp.time || 100;
                     tf.wait_time = mp.time || 100; // wait_timeの値を設定
                     break;

       }
[endscript]
       [wait time="100"]
       [kanim name="%name" keyframe="%act" time="&tf.time" wait="true"]          
       [wait_check action_time="&tf.wait_time" wait="%wait|false"]
[endmacro]

[macro name="change"]
       [iscript]
              tf.wait_time = mp.time || 1000;
              // 変数でクラス名を指定
              const className = mp.name;

       
              // JavaScriptで対象のクラスにアニメーションを追加
              const charaImgList = document.querySelectorAll(`.${className}`);
       
              charaImgList.forEach(charaImg => {
                     charaImg.style.animation = 'change_in_silhouette 1s forwards ease-in';

              
                     charaImg.addEventListener(
                            'animationend',
                            () => {
                            charaImg.style.animation = ''; 
                            },
                            { once: true } 
                     );
              });
       [endscript]
       [wait time="500"]
       [chara_part name="%name" glasses="%glasses" mask="%mask" face="%face"]
[endmacro]

;2キャラ同時表示-----------------------------------------------------------------------
[macro name="app_pair"]
    ; Character 1 setup
    [calc_chara_pos name=%name1 pos=%pos1 size=%size1|medium from=%from1|false]
    [iscript]
        tf.x1 = tf.x;
        tf.y1 = tf.y;
        tf.chara_width1 = tf.chara_width;
    [endscript]

    ; Character 2 setup
    [calc_chara_pos name=%name2 pos=%pos2 size=%size2|medium from=%from2|false]
    [iscript]
        tf.x2 = tf.x;
        tf.y2 = tf.y;
        tf.chara_width2 = tf.chara_width;
    [endscript]

    [chara_part name=%name1 face=%face1|def]
    [chara_part name=%name2 face=%face2|def]

    ; Show characters, which makes them available in the DOM
    [chara_show name=%name1 top="&tf.y1" left="&tf.x1" wait="false" time="0" width="&tf.chara_width1" zindex="%zindex1|2"]
    [chara_show name=%name2 top="&tf.y2" left="&tf.x2" wait="false" time="0" width="&tf.chara_width2" zindex="%zindex2|2"]

    ; Animate them simultaneously
    [iscript]
        // Immediately set the initial state to prevent flicker
        const chara1_images = document.querySelectorAll(`.${mp.name1} .chara_img, .${mp.name1} .part`);
        chara1_images.forEach(img => {
            img.style.webkitFilter = 'brightness(0%) opacity(0%)';
            img.style.filter = 'brightness(0%) opacity(0%)';
        });
        const chara2_images = document.querySelectorAll(`.${mp.name2} .chara_img, .${mp.name2} .part`);
        chara2_images.forEach(img => {
            img.style.webkitFilter = 'brightness(0%) opacity(0%)';
            img.style.filter = 'brightness(0%) opacity(0%)';
        });

        // Now, proceed with the animation logic
        const chara1 = { name: mp.name1, time: mp.time1 || 1000 };
        const chara2 = { name: mp.name2, time: mp.time2 || 1000 };

        const allCharaImgList = [...chara1_images, ...chara2_images];

        const preloadImages = (imageElements, callback) => {
            if (!imageElements || imageElements.length === 0) {
                callback();
                return;
            }
            let loadedCount = 0;
            const totalImages = imageElements.length;
            imageElements.forEach(imgElement => {
                if (imgElement.src) {
                    const img = new Image();
                    img.src = imgElement.src;
                    img.onload = img.onerror = () => {
                        loadedCount++;
                        if (loadedCount === totalImages) callback();
                    };
                } else {
                    loadedCount++;
                    if (loadedCount === totalImages) callback();
                }
            });
        };

        const startAnimations = () => {
            requestAnimationFrame(() => {
                // Animate character 1
                const animationDuration1 = chara1.time / 1000;
                chara1_images.forEach(charaImg => {
                    charaImg.style.animation = `appear_from_silhouette ${animationDuration1}s forwards ease-in-out`;
                    charaImg.addEventListener('animationend', () => { 
                        charaImg.style.animation = ''; 
                        charaImg.style.webkitFilter = '';
                        charaImg.style.filter = ''; 
                    }, { once: true });
                });

                // Animate character 2
                const animationDuration2 = chara2.time / 1000;
                chara2_images.forEach(charaImg => {
                    charaImg.style.animation = `appear_from_silhouette ${animationDuration2}s forwards ease-in-out`;
                    charaImg.addEventListener('animationend', () => { 
                        charaImg.style.animation = '';
                        charaImg.style.webkitFilter = '';
                        charaImg.style.filter = '';
                    }, { once: true });
                });
            });
        };

        preloadImages(allCharaImgList, startAnimations);
    [endscript]

    ; Wait logic
    [if exp="mp.wait == 'true'"]
        [iscript]
            tf.longest_time = Math.max(mp.time1 || 1000, mp.time2 || 1000);
        [endscript]
        [wait time="&tf.longest_time"]
    [endif]
[endmacro]