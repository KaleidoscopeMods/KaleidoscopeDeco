data modify storage kaleidoscope:temp carpet.new set string entity @a[limit=1,sort=nearest,tag=dc_click_temp] SelectedItem.id 10 -7

#判断是否重复
data modify storage kaleidoscope:temp table.carpet set from entity @n[tag=dc_custom_display] item.components."minecraft:custom_model_data".strings[1]

data modify storage kaleidoscope:temp carpet.old set from storage kaleidoscope:temp table.carpet
execute store result score @s kaleidoscope_temp run data modify storage kaleidoscope:temp carpet.old set from storage kaleidoscope:temp carpet.new

execute if score @s kaleidoscope_temp matches 0 run return 0

#弹出原地毯
execute unless data storage kaleidoscope:temp {table:{carpet:"empty"}} unless entity @a[limit=1,sort=nearest,tag=dc_click_temp,gamemode=creative] positioned ~ ~1 ~ run function kaleidoscope:cookery_plus/events/carpets/loot_carpet with storage kaleidoscope:temp table

#清除玩家手上地毯
execute as @a[limit=1,sort=nearest,tag=dc_click_temp] store result score @s kaleidoscope_clear run data get entity @s SelectedItem.count
scoreboard players remove @a[limit=1,sort=nearest,tag=dc_click_temp] kaleidoscope_clear 1
execute as @a[limit=1,sort=nearest,tag=dc_click_temp,gamemode=!creative] run item modify entity @s weapon.mainhand kaleidoscope:clear

#替换地毯颜色

data modify entity @n[tag=dc_custom_display] item.components."minecraft:custom_model_data".strings[1] set from storage kaleidoscope:temp carpet.new

playsound minecraft:entity.llama.swag block @a