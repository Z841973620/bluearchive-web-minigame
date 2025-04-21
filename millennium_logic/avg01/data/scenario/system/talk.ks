;キャラの会話に関する制御--------------------------------------------------------
;主にキャラの表情の変更やBrightnessの調整などを行う

;talk:会話関連のマクロ----------------------------------------
[macro name="talk"]
;name=キャラ名（ローマ字で例:momoi)
;face＝で表情差分を指定する、記述しない場合はデフォルトの表情
;話者のz-indexを調整する
;発話者が空白もしくは？？？の場合、制御はそのままとなる
;hatenaがtrueなら、名前が???になる
;tagがtrueならnameに記載した名前になる
        [layopt layer="message0" visible="true"]

        [iscript]
                tf.talker = mp.name || "";
                tf.hatena = mp.hatena ||"false";
                tf.nametag = mp.tag || 'false';
                

                // ？？？か空白だったら何もしない
                if(tf.talker == "？？？" || tf.talker == "ヒマリ" || tf.talker == "全員"  || tf.talker == "？？？" || tf.talker=="" || (mp.br||'false' == 'true') || tf.nametag == 'true' ){
                }

                // 空白以外だったら、brightness調整を実施
                else{
                        $(".tyrano_chara").css("z-index",0);
                        $("."+mp.name).css("z-index",1);
                        
                        $(".tyrano_chara").css("filter","brightness(60%)");
                        $("."+mp.name).css("filter","brightness(100%)");
                }
 
        [endscript]
        
        ;ネームプレートにキャラ名の表示及び表情の変更
        [if exp="tf.hatena != 'true' && tf.talker != '' && tf.talker != '？？？' && tf.nametag != 'true'"]

                        #&tf.talker
                        [chara_part name="&tf.talker" face="%face|def"]
                        [wait time="300"]

                [elsif exp="tf.talker == '' || tf.talker == '？？？' || tf.nametag == 'true'"]

                        #&tf.talker
                        [wait time="300"]

                [elsif exp="tf.hatena == 'true'"]

                        #？？？
                        [chara_part name="&tf.talker" face="%face|def"]
                        [wait time="300"]

                [else]
                        #&tf.talker
                        [chara_part name="&tf.talker" face="%face|def"]
                        [wait time="300"]

        [endif]

[endmacro]
;---------------------------------------------------------------

