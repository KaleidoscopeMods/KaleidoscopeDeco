#涂蜡挂画的物品显示
data modify entity @n[tag=dc_custom_display] item.components."minecraft:entity_data".data.index set value "kaleidoscope_bar:painting_waxed"
data modify entity @n[tag=dc_custom_display] item.components."minecraft:item_name".translate set value "item.kaleidoscope_bar.painting_waxed"

execute unless data entity @n[tag=dc_custom_display] item.components."minecraft:lore"[0] run data modify entity @n[tag=dc_custom_display] item.components."minecraft:lore" append value {"translate":"",color:"gray",italic:false}

execute store result score @s kaleidoscope_temp run data get entity @n[tag=dc_custom_display] item.components."minecraft:custom_model_data".floats[0]

execute if score @s kaleidoscope_temp matches -4 run data modify entity @n[tag=dc_custom_display] item.components."minecraft:lore"[0].translate set value "lore.kaleidoscope_bar.painting.104"
execute if score @s kaleidoscope_temp matches -3 run data modify entity @n[tag=dc_custom_display] item.components."minecraft:lore"[0].translate set value "lore.kaleidoscope_bar.painting.103"
execute if score @s kaleidoscope_temp matches -2 run data modify entity @n[tag=dc_custom_display] item.components."minecraft:lore"[0].translate set value "lore.kaleidoscope_bar.painting.102"
execute if score @s kaleidoscope_temp matches -1 run data modify entity @n[tag=dc_custom_display] item.components."minecraft:lore"[0].translate set value "lore.kaleidoscope_bar.painting.101"

execute if score @s kaleidoscope_temp matches 1 run data modify entity @n[tag=dc_custom_display] item.components."minecraft:lore"[0].translate set value "lore.kaleidoscope_bar.painting.1"
execute if score @s kaleidoscope_temp matches 2 run data modify entity @n[tag=dc_custom_display] item.components."minecraft:lore"[0].translate set value "lore.kaleidoscope_bar.painting.2"
execute if score @s kaleidoscope_temp matches 3 run data modify entity @n[tag=dc_custom_display] item.components."minecraft:lore"[0].translate set value "lore.kaleidoscope_bar.painting.3"
execute if score @s kaleidoscope_temp matches 4 run data modify entity @n[tag=dc_custom_display] item.components."minecraft:lore"[0].translate set value "lore.kaleidoscope_bar.painting.4"
execute if score @s kaleidoscope_temp matches 5 run data modify entity @n[tag=dc_custom_display] item.components."minecraft:lore"[0].translate set value "lore.kaleidoscope_bar.painting.5"
execute if score @s kaleidoscope_temp matches 6 run data modify entity @n[tag=dc_custom_display] item.components."minecraft:lore"[0].translate set value "lore.kaleidoscope_bar.painting.6"
execute if score @s kaleidoscope_temp matches 7 run data modify entity @n[tag=dc_custom_display] item.components."minecraft:lore"[0].translate set value "lore.kaleidoscope_bar.painting.7"
execute if score @s kaleidoscope_temp matches 8 run data modify entity @n[tag=dc_custom_display] item.components."minecraft:lore"[0].translate set value "lore.kaleidoscope_bar.painting.8"
execute if score @s kaleidoscope_temp matches 9 run data modify entity @n[tag=dc_custom_display] item.components."minecraft:lore"[0].translate set value "lore.kaleidoscope_bar.painting.9"