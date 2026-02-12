#面朝南（0）
scoreboard players set #left kaleidoscope_temp 0
scoreboard players set #right kaleidoscope_temp 0
scoreboard players set #front kaleidoscope_temp 0
#left:x+1
scoreboard players set #temp kaleidoscope_temp -1
execute positioned ~1 ~ ~ as @e[type=marker,distance=..0.1,tag=dc_pivot,tag=kaleidoscope_bar_blackboard_hang,tag=!kaleidoscope_bar_blackboard_bind] store result score #temp kaleidoscope_temp run data get entity @s data.Rotation[0]
execute if score #temp kaleidoscope_temp matches 0 run data modify entity @n[tag=dc_custom_display] item.components."minecraft:custom_model_data".flags[1] set value true

#right:x-1
scoreboard players set #temp kaleidoscope_temp -1
execute positioned ~-1 ~ ~ as @e[type=marker,distance=..0.1,tag=dc_pivot,tag=kaleidoscope_bar_blackboard_hang,tag=!kaleidoscope_bar_blackboard_bind] store result score #temp kaleidoscope_temp run data get entity @s data.Rotation[0]
execute if score #temp kaleidoscope_temp matches 0 run data modify entity @n[tag=dc_custom_display] item.components."minecraft:custom_model_data".flags[0] set value true

#up:y+1
scoreboard players set #temp kaleidoscope_temp -1
execute positioned ~ ~1 ~ as @e[type=marker,distance=..0.1,tag=dc_pivot,tag=kaleidoscope_bar_blackboard_hang,tag=!kaleidoscope_bar_blackboard_bind] store result score #temp kaleidoscope_temp run data get entity @s data.Rotation[0]
execute if score #temp kaleidoscope_temp matches 0 run data modify entity @n[tag=dc_custom_display] item.components."minecraft:custom_model_data".flags[2] set value true

#down:y-1
scoreboard players set #temp kaleidoscope_temp -1
execute positioned ~ ~-1 ~ as @e[type=marker,distance=..0.1,tag=dc_pivot,tag=kaleidoscope_bar_blackboard_hang,tag=!kaleidoscope_bar_blackboard_bind] store result score #temp kaleidoscope_temp run data get entity @s data.Rotation[0]
execute if score #temp kaleidoscope_temp matches 0 run data modify entity @n[tag=dc_custom_display] item.components."minecraft:custom_model_data".flags[3] set value true