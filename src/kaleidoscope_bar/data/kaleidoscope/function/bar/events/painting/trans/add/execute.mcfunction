execute store result score @s kaleidoscope_temp run data get entity @n[tag=dc_custom_display] item.components."minecraft:custom_model_data".floats[0]

scoreboard players add @s kaleidoscope_temp 1
execute if score @s kaleidoscope_temp matches 0 run scoreboard players add @s kaleidoscope_temp 1
execute if score @s kaleidoscope_temp matches 10.. run scoreboard players set @s kaleidoscope_temp -4

execute store result entity @n[tag=dc_custom_display] item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players get @s kaleidoscope_temp