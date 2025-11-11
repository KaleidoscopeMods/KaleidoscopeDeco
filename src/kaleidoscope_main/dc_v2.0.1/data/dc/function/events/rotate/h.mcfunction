#arg required: angle(-180.0f~180.0f)

execute store result score #temp dc_temp run data get entity @s data.Rotation[0] 100
execute store result score #temp2 dc_temp run data get storage dc events.temp.target.args.angle 100
scoreboard players operation #temp dc_temp += #temp2 dc_temp
execute store result entity @s data.Rotation[0] float 0.01 run scoreboard players get #temp dc_temp

#sync
tag @s add dc_rot_temp

execute as @e[distance=..5,tag=dc_display] if score @s dc_uid = @e[distance=..5,limit=1,tag=dc_rot_temp] dc_uid run data modify entity @s Rotation set from entity @e[distance=..5,limit=1,tag=dc_rot_temp] data.Rotation
execute as @e[distance=..5,tag=dc_display] if score @s dc_uid = @e[distance=..5,limit=1,tag=dc_rot_temp] dc_uid run tag @s add dc_rot_tempd

execute as @e[distance=..5,tag=dc_interaction] if score @s dc_uid = @e[distance=..5,limit=1,tag=dc_rot_temp] dc_uid run data modify entity @s Rotation set from entity @e[distance=..5,limit=1,tag=dc_rot_temp] data.Rotation

data modify entity @s data.Rotation set from entity @e[distance=..5,limit=1,tag=dc_rot_tempd] Rotation

tag @e[distance=..5] remove dc_rot_temp
tag @e[distance=..5] remove dc_rot_tempd