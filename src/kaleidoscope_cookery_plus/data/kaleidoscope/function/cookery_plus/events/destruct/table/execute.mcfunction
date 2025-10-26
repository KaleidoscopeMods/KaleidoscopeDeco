execute if entity @n[type=player,tag=dc_click_temp,gamemode=creative] run return 0

data modify storage kaleidoscope:temp table.wood set from entity @n[tag=dc_custom_display] item.components."minecraft:custom_model_data".strings[0]
data modify storage kaleidoscope:temp table.carpet set from entity @n[tag=dc_custom_display] item.components."minecraft:custom_model_data".strings[1]

function kaleidoscope:cookery_plus/events/destruct/table/loot with storage kaleidoscope:temp table
execute unless data storage kaleidoscope:temp {table:{carpet:"empty"}} run function kaleidoscope:cookery_plus/events/carpets/loot_carpet with storage kaleidoscope:temp table