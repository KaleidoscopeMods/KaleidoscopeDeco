#将计分板数据存入cmd

#穷举前五项
execute if score @s sh_frame_index matches 0 store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run return run scoreboard players get @s sh_frame
execute if score @s sh_frame_index matches 1 store result entity @s item.components."minecraft:custom_model_data".floats[1] float 1 run return run scoreboard players get @s sh_frame
execute if score @s sh_frame_index matches 2 store result entity @s item.components."minecraft:custom_model_data".floats[2] float 1 run return run scoreboard players get @s sh_frame
execute if score @s sh_frame_index matches 3 store result entity @s item.components."minecraft:custom_model_data".floats[3] float 1 run return run scoreboard players get @s sh_frame
execute if score @s sh_frame_index matches 4 store result entity @s item.components."minecraft:custom_model_data".floats[4] float 1 run return run scoreboard players get @s sh_frame

#不属于这五项，使用宏
data modify storage sh:temp floats set from entity @s item.components."minecraft:custom_model_data".floats
execute store result storage sh:temp frame float 1 run scoreboard players get @s sh_frame
function sh:_/store_ with entity @s data.sh_animation
data modify entity @s item.components."minecraft:custom_model_data".floats merge from storage sh:temp floats