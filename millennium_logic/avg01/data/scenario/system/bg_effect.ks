;暗転して背景変更
[macro name="bg_effect"]
       [if exp="(mp.effect||'blackout') == 'blackout'"]
              [mask time="%time|1000"]
              [bg2 position="center" storage="%storage" time="0"] 
              [mask_off time="%time_off|1000"]
       [endif]
[endmacro]