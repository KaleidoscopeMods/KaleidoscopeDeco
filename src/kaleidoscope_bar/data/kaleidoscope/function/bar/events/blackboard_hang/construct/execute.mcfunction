tag @s add kaleidoscope_bar_blackboard_hang
execute as @n[tag=dc_custom_display] unless data entity @s item.components."minecraft:custom_model_data".flags run data modify entity @s item.components."minecraft:custom_model_data".flags set value [false,false,false,false]

summon text_display ~ ~ ~ {Tags:["k_board_text","k_board_text_temp"],text:{text:"",color:"gray"},background:0}

scoreboard players operation @n[tag=k_board_text_temp] dc_uid = @s dc_uid


tp @n[tag=dc_custom_interaction] @s
execute at @n[tag=dc_custom_display] run rotate @n[tag=dc_custom_interaction] ~ ~
execute as @n[tag=dc_custom_interaction] at @s run tp ^ ^ ^-0.8

tp @n[tag=k_board_text_temp] @n[tag=dc_custom_interaction]
data modify entity @n[tag=k_board_text_temp] Rotation set from entity @n[tag=dc_custom_interaction] Rotation
execute as @n[tag=k_board_text_temp] at @s run tp ^ ^-0.1 ^0.37

tag @n[tag=k_board_text_temp] remove k_board_text_temp