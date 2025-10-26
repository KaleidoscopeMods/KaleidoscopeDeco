advancement revoke @s only dc:right_click
#寻找击打目标
tag @s add dc_click_temp
execute as @e[type=interaction,tag=dc_interaction,distance=..20] run function dc:events/_detect/rc_find
tag @s remove dc_click_temp
