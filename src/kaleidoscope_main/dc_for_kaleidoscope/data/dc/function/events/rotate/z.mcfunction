#arg required: angle(-180.0f~180.0f)

execute store result score #temp dc_temp run data get entity @s data.Rotation[2] 100
execute store result score #temp2 dc_temp run data get storage dc events.temp.target.args.angle 100
scoreboard players operation #temp dc_temp += #temp2 dc_temp
execute store result entity @s data.Rotation[2] float 0.01 run scoreboard players get #temp dc_temp


function dc:events/rotate/sync