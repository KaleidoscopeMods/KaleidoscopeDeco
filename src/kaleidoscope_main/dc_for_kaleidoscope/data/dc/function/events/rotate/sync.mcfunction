#sync
tag @s add dc_rot_temp
execute as @e[distance=..5,tag=dc_display] if score @s dc_uid = @e[distance=..5,limit=1,tag=dc_rot_temp] dc_uid run tag @s add dc_rot_display_temp
execute as @e[distance=..5,tag=dc_interaction] if score @s dc_uid = @e[distance=..5,limit=1,tag=dc_rot_temp] dc_uid run tag @s add dc_rot_interaction_temp

execute as @n[tag=dc_rot_display_temp] run data modify entity @s Rotation[0] set from entity @e[distance=..5,limit=1,tag=dc_rot_temp] data.Rotation[0]
execute as @n[tag=dc_rot_display_temp] run data modify entity @s Rotation[1] set from entity @e[distance=..5,limit=1,tag=dc_rot_temp] data.Rotation[1]
execute as @n[tag=dc_rot_display_temp] run data modify entity @s data.rotz set value {axis:[0,0,1],angle:0f}
execute as @n[tag=dc_rot_display_temp] store result entity @s data.rotz.angle float 0.0175 run data get entity @n[tag=dc_rot_temp] data.Rotation[2]
execute as @n[tag=dc_rot_display_temp] run function dc:events/rotate/syncz with entity @s data

execute as @n[tag=dc_rot_interaction_temp] run data modify entity @s Rotation[0] set from entity @e[distance=..5,limit=1,tag=dc_rot_temp] data.Rotation[0]
execute as @n[tag=dc_rot_interaction_temp] run data modify entity @s Rotation[1] set from entity @e[distance=..5,limit=1,tag=dc_rot_temp] data.Rotation[1]

tag @e[distance=..5] remove dc_rot_temp
tag @e[distance=..5] remove dc_rot_display_temp
tag @e[distance=..5] remove dc_rot_interaction_temp