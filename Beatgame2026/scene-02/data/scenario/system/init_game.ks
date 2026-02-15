


;prelordr類
;必須
[call storage="system/macro.ks"]
[call storage="system/chara_moves.ks"]
[call storage="system/emo.ks"]
[call storage="system/choices_button.ks"]
[call storage="system/skip.ks"]
[call storage="system/character.ks"]
[call storage="system/talk.ks"]
[call storage="system/preload.ks"]

[preload storage="data/image/prompt.png"]
[preload storage="data/image/pu_bg.png"]
[preload storage="data/image/skip_button.png"]
[preload storage="data/image/cancel_button.png"]
[preload storage="data/image/choice.png"]
[preload storage="data/image/nextpage.gif"]
[preload storage="data/image/nextpage2.gif"]
[preload storage="data/image/skip.png"]
[preload storage="data/image/log.png"]
[preload storage="data/image/auto.png"]
[preload storage="data/image/autoon.png"]

[macro name="wait_process"]
       [if exp="(mp.wait||'true') == 'true'"]
              [eval exp="f.wait_time = parseInt(f.wait_time) - 10]
              [wait time="&f.wait_time"]
              [iscript]
              f.wait_time = 0;
              f.global_wait = 'false';
              [endscript]
       [endif]
       [clearstack stack="if"]
[endmacro]

[macro name="wait_check"]
    [iscript]
    if( f.wait_time < mp.action_time ){
            f.wait_time = mp.action_time;

            if(f.global_wait == 'false' && (mp.wait||'false') == 'false'){
                f.global_wait = 'true';
            }
    }
    [endscript]
    [wait_process wait="%wait|'true'"]
    [clearstack stack="if"]
[endmacro]

[macro name="click_next"]
    [l][cm]
[endmacro]


[return]