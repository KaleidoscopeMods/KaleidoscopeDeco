tag @s remove k_stove_fry_fixed

#清除锅内物品
execute if data entity @s data.recipe run particle smoke ~ ~0.5 ~ 0.2 0 0.2 0 20

data remove entity @s data.recipe

#自动关火
execute if entity @s[tag=k_stove_fry_start] run function kaleidoscope:cookery/stove/fry/off_button

#按钮处理
item replace block ~ ~ ~ container.20 with air
item replace block ~ ~ ~ container.21 with air
item replace block ~ ~ ~ container.24 with air
item replace block ~ ~ ~ container.6 with air