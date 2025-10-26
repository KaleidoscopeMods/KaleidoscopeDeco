data modify storage kaleidoscope:temp table.carpet set from entity @n[tag=dc_custom_display] item.components."minecraft:custom_model_data".strings[1]

execute if data storage kaleidoscope:temp {table:{carpet:"empty"}} run return 0

#弹出原地毯
execute unless entity @a[limit=1,sort=nearest,tag=dc_click_temp,gamemode=creative] positioned ~ ~1 ~ run function kaleidoscope:cookery_plus/events/shear/loot_carpet with storage kaleidoscope:temp table


#替换地毯颜色

data modify entity @n[tag=dc_custom_display] item.components."minecraft:custom_model_data".strings[1] set value "empty"

playsound minecraft:entity.llama.swag block @a