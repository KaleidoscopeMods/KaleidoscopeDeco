#arg required: angle(-180.0f~180.0f)

execute store result score #temp dc_temp run data get entity @s data.Rotation[1] 100
execute store result score #temp2 dc_temp run data get storage dc events.temp.target.args.angle 100
scoreboard players operation #temp dc_temp += #temp2 dc_temp

execute unless score #temp dc_temp matches -9000..9000 run tellraw @a[tag=dc_click_temp] "已到达旋转上限！"
execute if score #temp dc_temp matches 9000.. run scoreboard players set #temp dc_temp 9000
execute if score #temp dc_temp matches ..-9000 run scoreboard players set #temp dc_temp -9000

execute store result entity @s data.Rotation[1] float 0.01 run scoreboard players get #temp dc_temp

function dc:events/rotate/sync