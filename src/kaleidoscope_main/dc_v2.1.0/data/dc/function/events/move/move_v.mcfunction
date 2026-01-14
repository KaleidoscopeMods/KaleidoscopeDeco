execute store result score #y dc_temp run data get entity @s Pos[1] 100

execute store result score #py dc_temp run data get entity @a[limit=1,tag=dc_click_temp] Pos[1] 100

data modify storage dc events.move.type set value 1
scoreboard players set #temp2 dc_temp 0

execute if score #y dc_temp > #py dc_temp run data modify storage dc events.move.distance set from storage dc events.temp.target.args.distance
execute unless score #y dc_temp > #py dc_temp store result score #temp dc_temp run data get storage dc events.temp.target.args.distance 1000
execute unless score #y dc_temp > #py dc_temp run scoreboard players operation #temp2 dc_temp -= #temp dc_temp
execute unless score #y dc_temp > #py dc_temp if score #temp2 dc_temp matches 1.. run scoreboard players remove #temp2 dc_temp 1
execute unless score #y dc_temp > #py dc_temp store result storage dc events.move.distance float 0.001 run scoreboard players get #temp2 dc_temp




