execute if data entity @s {item:{components:{"minecraft:custom_model_data":{flags:[B;1B]}}}} run scoreboard players set @s kplus_temp 1
execute unless data entity @s {item:{components:{"minecraft:custom_model_data":{flags:[B;1B]}}}} run scoreboard players set @s kplus_temp 0

execute if score @s kplus_temp matches 0 run data modify entity @s item.components."minecraft:custom_model_data".flags set value [true]
execute if score @s kplus_temp matches 1 run data modify entity @s item.components."minecraft:custom_model_data".flags set value [false]