#检测是否能盛出
scoreboard players set #temp k_stove_fry_status 0

execute if score @s k_stove_fry_status matches 2.. if data entity @s {data:{need_bowl:1b}} if items block ~ ~ ~ container.15 bowl if entity @s[tag=!k_stove_fry_start] run scoreboard players set #temp k_stove_fry_status 1
execute if score @s k_stove_fry_status matches 2.. unless data entity @s {data:{need_bowl:1b}} if entity @s[tag=!k_stove_fry_start] run scoreboard players set #temp k_stove_fry_status 2

execute if score @s k_stove_fry_status matches 1.. if entity @s[tag=k_stove_fry_start] run scoreboard players set #temp k_stove_fry_status 3


execute if score #temp k_stove_fry_status matches 0 run function kaleidoscope:cookery/stove/fry/out/no

#判断是否需要碗
execute if score #temp k_stove_fry_status matches 1 run function kaleidoscope:cookery/stove/fry/out/yes_bowl
execute if score #temp k_stove_fry_status matches 2 run function kaleidoscope:cookery/stove/fry/out/yes


execute if score #temp k_stove_fry_status matches 3 run function kaleidoscope:cookery/stove/fry/out/burn