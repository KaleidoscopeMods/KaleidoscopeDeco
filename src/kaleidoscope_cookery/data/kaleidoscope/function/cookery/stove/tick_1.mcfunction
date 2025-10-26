#放置与破坏处理
execute as @s[type=minecraft:item_display,tag=k_stove_temp] at @s align xyz run function kaleidoscope:cookery/stove/replace
execute as @s[type=minecraft:item_display,tag=k_stove,tag=k_stoveplay_enable] at @s if block ~ ~ ~ minecraft:barrel run function kaleidoscope:cookery/stove/facing
execute as @s[type=minecraft:item_display,tag=k_stove,tag=k_stoveplay_enable] at @s unless block ~ ~ ~ minecraft:barrel run function kaleidoscope:cookery/stove/clear
execute as @s[type=minecraft:item_display,tag=k_stove,tag=k_stoveplay_enable] run data modify entity @s brightness set value {block:15,sky:15}
