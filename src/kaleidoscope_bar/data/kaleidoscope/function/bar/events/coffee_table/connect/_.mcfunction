#switch
execute if score #left kaleidoscope_temp matches 0 if score #right kaleidoscope_temp matches 0 run data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "single"
execute if score #left kaleidoscope_temp matches 1 if score #right kaleidoscope_temp matches 0 run data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "left"
execute if score #left kaleidoscope_temp matches 0 if score #right kaleidoscope_temp matches 1 run data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "right"
execute if score #left kaleidoscope_temp matches 1 if score #right kaleidoscope_temp matches 1 run data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "middle"