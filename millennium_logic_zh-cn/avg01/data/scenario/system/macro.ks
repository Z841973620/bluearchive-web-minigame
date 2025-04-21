
[iscript]

f.wait_time = 0;
f.global_wait = 'false';


// 関数の定義
// X秒後指定したnameを削除--------------------------------------------------
f.deleteElement = function(name, time) {
    setTimeout(() => {
        const elementToRemove = document.querySelector(name);
        if (elementToRemove) {
            // 修正: parentElement を elementToRemove.parentNode に変更
            elementToRemove.parentNode.removeChild(elementToRemove);
        }
    }, time);
};
//---------------------------------------------------------------------------
[endscript]


;マクロの定義
;wait関連マクロ----------------------------------------------------------------------------------------------
;実行中のアクションにはアクション時間がばらばらなため
;常に一番長いアクションが、f.wait_timeに保存される
;f.global_waitには一番アクション時間の長い処理がwait=trueになっていない場合、
;強制的にtrueにする
;実行中のアクションの秒数を比較する----------------------------------------------------------------------------
;f.wait_timeに指定された数値
[macro name="wait_process"]
[if exp="(mp.wait||'true') == 'true'"]
        [eval exp="f.wait_time = parseInt(f.wait_time) + 50"]
        ;[emb exp="f.wait_time"]
        [wait time="&f.wait_time"]
        [iscript]
            f.wait_time = 0;
            f.global_wait = 'false';
        [endscript]
[endif]
[endmacro]

[macro name="wait_check"]
;f.wait_timeと実行中のタイムを比較し、大きい方をいれる
    [iscript]
    if( f.wait_time < mp.action_time ){
            f.wait_time = mp.action_time;

            // global_waitを強制的にtrueにする
            if(f.global_wait == 'false' && (mp.wait||'false') == 'false'){
                f.global_wait = 'true';
            }
    }
    [endscript]
    [wait_process wait="%wait|'true'"]
[endmacro]

[macro name="click_next"]
    [wait_process wait="&global_wait"]
    [l][cm]
[endmacro]
