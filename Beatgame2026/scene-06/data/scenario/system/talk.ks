
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
                tf.char_exists = !!TYRANO.kag.stat.charas[tf.talker];
        [endscript]
        
        [if exp="!tf.char_exists || tf.talker == '？？？' || tf.talker == '2人' || tf.talker == '3人' || tf.talker==''|| tf.nametag == 'true'" ]
              [chara_config talk_focus="none"]

        [else]
              [chara_config talk_focus="brightness" brightness_value="40"]
        [endif]

        *hatena
        ;ネームプレートにキャラ名の表示及び表情の変更
        [if exp="tf.hatena == 'true'"]
            #？？？
        [else]
            #&tf.talker
        [endif]

        [if exp="tf.char_exists && tf.talker != '' && tf.talker != '？？？' && tf.nametag != 'true'"]
            [chara_part name="&tf.talker" face="%face|def"]
        [endif]

        [wait time="200"]

[clearstack stack="if"]    
[endmacro]
;---------------------------------------------------------------

;Brightness:キャラの明暗調整----------------------------------------
[macro name="br"]
;キャラのブライトネスを調整する
;
        [iscript]
                const className = mp.name || "tyrano_chara";
                // クラスの指定がない場合は全キャラが対象

                $(`.${className}`).css("filter", "brightness(100%)");

        [endscript]
[endmacro]
;---------------------------------------------------------------
