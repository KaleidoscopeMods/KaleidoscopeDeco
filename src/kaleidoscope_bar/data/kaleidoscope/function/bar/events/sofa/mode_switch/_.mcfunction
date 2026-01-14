data modify storage kaleidoscope:bar cabinet.mode set from entity @s item.components."minecraft:custom_model_data".strings[1]

execute if data storage kaleidoscope:bar {cabinet:{mode:"left"}} run return run data modify entity @s item.components."minecraft:custom_model_data".strings[1] set value "right"
execute if data storage kaleidoscope:bar {cabinet:{mode:"right"}} run return run data modify entity @s item.components."minecraft:custom_model_data".strings[1] set value "middle"
execute if data storage kaleidoscope:bar {cabinet:{mode:"middle"}} run return run data modify entity @s item.components."minecraft:custom_model_data".strings[1] set value "single"
data modify entity @s item.components."minecraft:custom_model_data".strings[1] set value "left"