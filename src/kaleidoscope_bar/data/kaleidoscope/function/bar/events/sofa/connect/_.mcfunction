#switch
execute if score #left kaleidoscope_temp matches 0 if score #right kaleidoscope_temp matches 0 run data modify entity @s item.components."minecraft:custom_model_data".strings[1] set value "single"

execute if score #left kaleidoscope_temp matches 1 if score #right kaleidoscope_temp matches 0 run data modify entity @s item.components."minecraft:custom_model_data".strings[1] set value "right"
execute if score #left kaleidoscope_temp matches 0 if score #right kaleidoscope_temp matches 1 run data modify entity @s item.components."minecraft:custom_model_data".strings[1] set value "left"

execute if score #left kaleidoscope_temp matches 0 if score #front kaleidoscope_temp matches 1 run data modify entity @s item.components."minecraft:custom_model_data".strings[1] set value "corner_left"
execute if score #right kaleidoscope_temp matches 0 if score #front kaleidoscope_temp matches 2 run data modify entity @s item.components."minecraft:custom_model_data".strings[1] set value "corner_right"

execute if score #left kaleidoscope_temp matches 1 if score #right kaleidoscope_temp matches 1 run data modify entity @s item.components."minecraft:custom_model_data".strings[1] set value "middle"