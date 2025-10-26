#开头基础处理：物品处理 初始化变量
kill @e[predicate=kaleidoscope:cookery/bg,type=item]
execute store result score @a k_stoveerror run clear @a minecraft:firework_star[custom_data~{kaleidoscope_stove_bg:1b}] 0
execute as @a run scoreboard players operation @s k_stoveerror += @s k_stoveerror2

#按钮按下获取；音效处理
execute as @a at @s run function kaleidoscope:cookery/stove/click

#放置与破坏处理
execute as @e[type=item_frame,tag=k_stove_pos] at @s align xyz run function kaleidoscope:cookery/stove/put
execute as @e[type=minecraft:item_display,tag=k_stove] at @s run function kaleidoscope:cookery/stove/tick_1

#功能
execute as @e[type=minecraft:item_display,tag=k_stove,tag=k_stoveplay_enable] at @s if entity @a[distance=..20] run function kaleidoscope:cookery/stove/function


#结尾基础处理：物品处理 初始化变量
clear @a firework_star[custom_data~{kaleidoscope_stove_bg:1b}]
scoreboard players reset #2 k_stove_number
scoreboard players reset #3 k_stove_number
scoreboard players reset #4 k_stove_number
scoreboard players reset #5 k_stove_number
scoreboard players reset #6 k_stove_number
