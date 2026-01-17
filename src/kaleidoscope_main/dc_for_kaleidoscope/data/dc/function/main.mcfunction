#tick
execute as @e[type=#dc:place,tag=dc_place] at @s run function dc:construct/main

execute as @e[type=marker,tag=dc_pivot,tag=dc_type_fixed] at @s run function dc:misc/fixed/interaction_adaption

execute if score #installing dc_options matches 1 run function dc:index/_install/continue



#execute positioned 0.0 0.0 0.0 unless entity @e[tag=dc_math_temp,distance=..2,type=item_display] run summon item_display 0 0 0 {Tags:[dc_math_temp]}
tag @a remove dc_player