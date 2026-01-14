#同步酒的显示
execute if data entity @s data.cabinet[0] run data modify entity @n[tag=dc_custom_display] item.components."minecraft:custom_model_data".strings[1] set from entity @s data.cabinet[0].components."minecraft:custom_data".type
execute if data entity @s data.cabinet[1] run data modify entity @n[tag=dc_custom_display] item.components."minecraft:custom_model_data".strings[2] set from entity @s data.cabinet[1].components."minecraft:custom_data".type

execute unless data entity @s data.cabinet[0] run data modify entity @n[tag=dc_custom_display] item.components."minecraft:custom_model_data".strings[1] set value "empty"
execute unless data entity @s data.cabinet[1] run data modify entity @n[tag=dc_custom_display] item.components."minecraft:custom_model_data".strings[2] set value "empty"