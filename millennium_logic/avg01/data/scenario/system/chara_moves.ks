[loadcss file="./data/scenario/system/chara_moves.css"]
[call storage="system/chara_moves_keyframes.ks"]

[iscript]
       f.scHeight = TG.config.scHeight;
       f.scWidth = TG.config.scWidth;
[endscript]

;立ち位置計算-------------------------
[macro name="calc_chara_pos"]
;指定したキャラのゲーム変数からキャラのwidth、top、offset値を取得し
;キャラの座標を計算し、tf.x及びtf.yの数値で返す

;計算式:（画面幅*係数） - ( キャラの横幅/2 + オフセット値 )
;
;引数---------------------------------
;name=キャラ名（ローマ字表記）
;pos= 1~6 キャラの立ち位置を決定する、3で中央（デフォルト中央）
;wait=デフォルト:false
;キャラの立ち位置はキャラの幅とオフセットで中央値を決定している
;未実装:移動距離に応じた時間調整
;------------------------------------------------
;
;戻り値----------------------------------
;tf.x=移動先のX座標
;tf.from_x:移動前の座標　※calc_move_timeで利用 1/11 未実装
;tf.y=移動先のY座標
;tf.from_y:移動前の座標
;------------------------------------------------


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
              case "3":
                     tf.x = ( f.scWidth * 0.50 ) - chara_width;
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
       
       // 移動元の座標計算主に画面外からの登場時に使用
       // 特に指定がなければfalseが代入される
       // falseの場合は、現在の座標が取得される

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

[endscript]
[endmacro]


;=====================================================================================================================

;キャラの出現マクロ--------------------------------------------------------
[macro name="app"]

;指定した座標以外にも、キャラの出現方法も指定できる
;appの引数
;name:キャラ名
;pos:キャラのポジション                   def:3
;from:キャラの出現方向                    def:false
       ;light:左から右に出現
       ;left:右から左に出現
       ;bottom:下から上に出現
;face:キャラの表情                        def:def
;wait:キャラの出現及びmoveを待つか         def:true
;mode:キャラの出現パターン                 def:def
　　 ;def:シルエットから徐々に出現
　　 ;quick:キャラを瞬間表示
     ;silhouette:シルエット表示
　　 ;fadein:fadein
;page
;time:
;size:
;------------------------------------------------

;キャラの座標を計算及び表情の指定
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

                            ;一旦画面外に表示してからシルエット表示を適用し、所定の位置に移動させる
                            [chara_show name="%name" top="&tf.y" left="-1500" wait="false" layer="%layer|0" time="10" width="&tf.chara_width"]
                            

                            ;キャラクターのchara_imgとpartにキーフレームアニメーションを適用と削除
                            [iscript]

                                   // 変数でクラス名を指定
                                   const className = mp.name;
                                   var animationDurationSeconds = tf.time / 800;


                                   // JavaScriptで対象のクラスにアニメーションを追加
                                   const charaImgList = document.querySelectorAll(`.${className} .chara_img, .${className} .part `);

                                   charaImgList.forEach(charaImg => {
                                          charaImg.style.animation = `appear_from_silhouette ${animationDurationSeconds}s forwards ease-in-out`;
                                                 
                                          // アニメーションが終了したらクラスを削除
                                          charaImg.addEventListener('animationend', function() {
                                                 charaImg.style.animation = '';  // アニメーションをクリア
                                                 }, { once: true }); // { once: true } オプションで一度だけのイベントリスナーにする
                                          });

                            [endscript]


                            [chara_move name="%name" top="&tf.y" left="&tf.x" wait="false" anim="%anime|true" time="10"]

                                          ;ウェイト処理
                            [if exp="tf.wait == 'true'"][wait time="&tf.time"][endif]

                                   
                     ;クイック表示、ウェイト処理を強制的に'false'にする　
                     [elsif exp="tf.mode == 'quick'"]

                            [chara_show name="%name" top="&tf.y" left="&tf.x" wait="false" layer="%layer|0" time="100" width="&tf.chara_width" page="&tf.page"]
                            [eval exp="tf.wait='false'"]
                            [wait time="550"]
                            ;シルエット表示 (　シルエットの解除はappear )
                     [elsif exp="tf.mode == 'silhouette'" ]

                            ;画面外で表示
                            [chara_show name="%name" top="&tf.y" left="-1500" wait="false" layer="%layer|0" time="1" width="&tf.chara_width"]

                            ;ブライトネスを0%でシルエット化
                            [iscript]
                                          
                                   var animationDurationSeconds = tf.time / 1000;
                                   const className = mp.name;

                                   // JavaScriptで対象のクラスにアニメーションを追加]
                                   const charaImgList = document.querySelectorAll(`.${className} .chara_img, .${className} .part `);

                                   charaImgList.forEach(charaImg => {

                                          charaImg.style.animation = 'appear_by_silhouette ${animationDurationSeconds}s forwards ease';

                                          // アニメーションが終了したらクラスを削除
                                          charaImg.addEventListener('animationend', function() {
                                                 charaImg.style.animation = '';  // アニメーションをクリア
                                          }, { once: true }); // { once: true } オプションで一度だけのイベントリスナーにする
                                   });
                                   
                                   $("."+mp.name +" .chara_img, ."+mp.name +" .part").css("filter","brightness(0%)");

                            [endscript]
                                   
                            ;指定の位置にキャラを移動
                            [chara_move name="%name" top="&tf.y" left="&tf.x" wait="false" anim="%anime|true" time="1"]
                                   
                            ;ウェイト処理
                            [if exp="tf.wait == 'true'"][wait time="tf.time"][endif]
                                   
                     [elsif exp="tf.mode == 'appear'"]

                            ;キャラクターのchara_imgとpartにキーフレームアニメーションを適用と削除
                            [iscript]
                            // 変数でクラス名を指定
                                   const className = mp.name;
                                   var animationDurationSeconds = tf.time / 1000;
                                   // JavaScriptで対象のクラスにアニメーションを追加
                                   const charaImg_Halo = document.querySelector(`.${className} .chara_img`);

                                   if (charaImg_Halo) {
                                          //charaImg.style.position = 'relative';
                                          charaImg_Halo.style.animation = '';
                                   }      

                                   setTimeout(() => {
                                          // JavaScriptで対象のクラスにアニメーションを追加
                                          const charaImgList = document.querySelectorAll(`.${className} .chara_img, .${className} .part `);

                                                 
                                          charaImgList.forEach(charaImg => {
                                          // シルエット解除後にCSSを削除すると暗くなるのでその対処

                                          charaImg.style.animation = 'appear_from_silhouette ${animationDurationSeconds}s forwards ease';
                                                 
                                          // アニメーションが終了したらクラスを削除
                                          charaImg.addEventListener('animationend', function() {
                                                 $("."+mp.name +" .chara_img, ."+mp.name +" .part").css("filter","brightness(100%)");
                                                 charaImg.style.animation = '';  // アニメーションをクリア
                                                 charaImg_Halo.style.animation = 'haloAnimation 3s infinite ease-in';

                                          }, { once: true }); // { once: true } オプションで一度だけのイベントリスナーにする
                                          });
                                   },100);
                            [endscript]

                            ;ウェイト処理
                            [if exp="tf.wait == 'true'"][wait time="tf.time"][endif]
                            
              [endif]

       [else]

              [chara_show name="%name" top="&tf.from_y" left="&tf.from_x" time="10" layer="%layer|0" wdith="&tf.chara_width"]

              [chara_move name="%name" top="&tf.y" left="&tf.x" wait="%wait|false" anim="%anime|true" time="1000" effect="easeOutCubic" ]   
                     
[endif]


       ;haloのCSSアニメをキャラ名+chara_imgで指定
                   
       ;[iscript]
       ;// 変数でクラス名を指定
       ;       const className = mp.name
       ;       setTimeout(() => {
       ;              // JavaScriptで対象のクラスにアニメーションを追加
       ;              const charaImg = document.querySelector(`.${className} .chara_img`);

       ;              if (charaImg) {
       ;                     //charaImg.style.position = 'relative';
       ;                    charaImg.style.animation = 'haloAnimation 3s infinite ease-in-out';
       ;              }
      
       ;       },0);
       ;[endscript]
                   

[endmacro]

;=====================================================================================================================

;指定した座標にキャラを移動--------------------------
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

              if (mp.pos == 'left' || mp.pos == 'right'){
                     // 1秒後にキャラを削除
                     f.deleteElement(`.`+mp.name, tf.wait_time)
              }

       [endscript]
       [anim name="&tf.class" left="&tf.e_x" top="&tf.e_y" time="&tf.wait_time" effect="easeOutCubic"]
       [chara_move name="%name" top="&tf.y" left="&tf.x" wait="%wait|true" anim="%anime|true" time="&tf.wait_time" effect="easeOutCubic"]
       [wait_check action_time="&tf.wait_time" wait="&tf.moves_wait"]          
[endmacro]


;=====================================================================================================================
;キャラクターハイドマクロ-----------------------------------------------------------------------
[macro name="hide"]
;指定したモードでキャラクターをハイドする
;def:シルエット化後フェードアウト
;quick:瞬間的に消える
;fade:フェードアウト

[eval exp="tf.mode= mp.mode || 'def' "]


       ;シルエット化後フェードアウト
       ;シルエットの変化はCSSアニメーションを適用
       [if exp="tf.mode == 'def'"]

              [iscript]
              
                     tf.wait_time = mp.time || 280;
                     // 変数でクラス名を指定
                     const className = mp.name;

              
                     // JavaScriptで対象のクラスにアニメーションを追加
                     const charaImgList = document.querySelectorAll(`.${className}`);
              
                     charaImgList.forEach(charaImg => {
                            charaImg.style.animation = 'hide_in_silhouette 0.3s forwards ease-in';
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
       [elsif exp="tf.mode =='fade'"]
              [chara_hide name="%name" time="%time|1000" wait="%wait|true"]
       [endif]

[endmacro]

;=====================================================================================================================
;キャラモーショーンアニメーションマクロ-----------------------------------------------------------------------
[macro name="act"]
;キャラとエモーションにモーションアニメを実行する
;アニメはkeyframeにて実行される。 *これはエモーションアイコン（CSSアニメ）、anim（Jqueryアニメ）と一緒に動かせるようにするため
;一部のアニメは実行後、キャラが削除される
;------------------------------------------------
;act引数
;name:キャラ名
;anime:指定したkeyframeを実行　*keyframeはchara_moves_keyframes.ksを参照
;time:アニメの実行時間、基本的には各アニメーションにはデフォルト値が設定されるため、記述する必要はない
;wait:移動動作を待つか                      def:false
;
;戻り値-------------
;tf.wait_time:モーションの実行時間が返ってくる
;------------------------------------------------
[iscript]
       tf.class = 'c_' + mp.name;
       tf.moves_wait = mp.wait || 'false';

       switch (mp.act) {
              case "greeting":
                     tf.time = mp.time || 430;
                     tf.wait_time = mp.time || 430;
                     break;
              case "jump":
                     tf.time = mp.time || 200;
                     tf.wait_time = mp.time || 200; // wait_timeの値を設定
                     break;
              case "hophop":
                     tf.time = mp.time || 390;
                     tf.wait_time = mp.time || 390; // wait_timeの値を設定
                     break;
              case "shake":
                     tf.time = mp.time || 290;
                     tf.wait_time = mp.time || 290; // wait_timeの値を設定
                     break;
              case "stiff":
                     tf.time = mp.time || 470;
                     tf.wait_time = mp.time || 470; // wait_timeの値を設定
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
       ;[wait time="300"]
       [kanim name="%name" keyframe="%act" time="&tf.time" ] 
       [kanim name="&tf.class" keyframe="%act" time="&tf.time"]
       [wait_check action_time="&tf.wait_time" wait="&tf.moves_wait"]           
[endmacro]
[return]

[macro name="app2"]

[endmacro]