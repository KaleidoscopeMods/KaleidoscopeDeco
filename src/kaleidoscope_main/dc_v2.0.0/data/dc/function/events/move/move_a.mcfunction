#绝对路径移动
#args requried:type(0|1|2),distance(-2f~2f)

$execute store result score #temp dc_temp run data get entity @s Pos[$(type)] 1000
execute store result score #temp2 dc_temp run data get storage dc events.move.distance 1000
scoreboard players operation #temp dc_temp += #temp2 dc_temp
execute if score #temp2 dc_temp matches ..-1 run scoreboard players add #temp dc_temp 1
$execute store result entity @s Pos[$(type)] double 0.001 run scoreboard players get #temp dc_temp

#sync
tag @s add dc_move_temp

execute as @e[distance=..5,tag=dc_display] if score @s dc_uid = @e[distance=..5,limit=1,tag=dc_move_temp] dc_uid run data modify entity @s Pos set from entity @e[distance=..5,limit=1,tag=dc_move_temp] Pos
execute as @e[distance=..5,tag=dc_display] if score @s dc_uid = @e[distance=..5,limit=1,tag=dc_move_temp] dc_uid at @s run function dc:construct/display_offset
#execute as @e[distance=..5,tag=dc_display] if score @s dc_uid = @e[distance=..5,limit=1,tag=dc_move_temp] dc_uid run tag @s add dc_move_tempd

execute as @e[distance=..5,tag=dc_interaction] if score @s dc_uid = @e[distance=..5,limit=1,tag=dc_move_temp] dc_uid run data modify entity @s Pos set from entity @e[distance=..5,limit=1,tag=dc_move_temp] Pos

#data modify entity @s data.Rotation set from entity @e[distance=..5,limit=1,tag=dc_move_tempd] Rotation

execute as @e[distance=..5,tag=dc_hitbox] if score @s dc_uid = @e[distance=..5,limit=1,tag=dc_move_temp] dc_uid run data modify entity @s Pos set from entity @e[distance=..5,limit=1,tag=dc_move_temp] Pos
execute as @e[distance=..5,tag=dc_hitbox] if score @s dc_uid = @e[distance=..5,limit=1,tag=dc_move_temp] dc_uid at @s run function dc:construct/summon/hitbox_prop with entity @e[distance=..5,limit=1,tag=dc_move_temp] data.extra_data


tag @e[distance=..5] remove dc_move_temp
tag @e[distance=..5] remove dc_move_tempd

