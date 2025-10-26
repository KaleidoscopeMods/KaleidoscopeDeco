function kaleidoscope:cookery_plus/trans/rubbish_bin/close

execute store result score @s kaleidoscope_temp run data get entity @s data.rubbish_bin[0]
execute unless score @s kaleidoscope_temp matches 1.. run return run particle smoke ~ ~0.9 ~ 0.1 0.1 0.1 0 20

particle poof ~ ~0.9 ~ 0.05 0.05 0.05 0 2
playsound entity.item.pickup block @a[tag=dc_click_temp]
execute at @a[tag=dc_click_temp] run summon item ~ ~ ~ {Tags:[k_rubbish_bin_reclaim],Item:{id:"stone"}}
data modify entity @n[tag=k_rubbish_bin_reclaim] Item set from entity @s data.rubbish_bin[0]
tag @n[tag=k_rubbish_bin_reclaim] remove k_rubbish_bin_reclaim
data remove entity @s data.rubbish_bin[0]

advancement grant @a[tag=dc_click_temp] only kaleidoscope:cookery_plus/rubbish_bin