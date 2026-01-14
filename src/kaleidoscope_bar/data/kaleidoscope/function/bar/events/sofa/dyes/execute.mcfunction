data modify storage kaleidoscope:temp sofa.new set string entity @a[limit=1,sort=nearest,tag=dc_click_temp] SelectedItem.id 10 -4

#判断是否重复
data modify storage kaleidoscope:temp sofa.color set from entity @n[tag=dc_custom_display] item.components."minecraft:custom_model_data".strings[1]

data modify storage kaleidoscope:temp sofa.old set from storage kaleidoscope:temp sofa.color
execute store result score @s kaleidoscope_temp run data modify storage kaleidoscope:temp sofa.old set from storage kaleidoscope:temp sofa.new

execute if score @s kaleidoscope_temp matches 0 run return 0

#清除玩家手上染料
execute as @a[limit=1,sort=nearest,tag=dc_click_temp] store result score @s kaleidoscope_clear run data get entity @s SelectedItem.count
scoreboard players remove @a[limit=1,sort=nearest,tag=dc_click_temp] kaleidoscope_clear 1
execute as @a[limit=1,sort=nearest,tag=dc_click_temp,gamemode=!creative] run item modify entity @s weapon.mainhand kaleidoscope:clear

#替换沙发颜色

data modify entity @n[tag=dc_custom_display] item.components."minecraft:custom_model_data".strings[0] set from storage kaleidoscope:temp sofa.new
data modify entity @n[tag=dc_custom_display] item.components."minecraft:item_name".with[0].translate set from storage kaleidoscope:temp sofa.new

playsound minecraft:entity.llama.swag block @a

