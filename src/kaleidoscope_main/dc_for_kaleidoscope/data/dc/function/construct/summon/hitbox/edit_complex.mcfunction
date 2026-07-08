#多碰撞箱
#as:hitbox
tp ~ ~ ~


data modify entity @s Rotation set from entity @n[type=item_display,tag=dc_display_temp] Rotation
execute unless data entity @s data.hitbox_data.offset run data modify entity @s data.hitbox_data.offset set value {x:0,y:0,z:0}
execute unless data entity @s data.hitbox_data.width run data modify entity @s data.hitbox_data.width set value 1f

scoreboard players operation @s dc_uid = $uid dc_uid

execute on passengers run tag @s add dc_hitbox_shulker_temp
data modify entity @n[tag=dc_hitbox_shulker_temp] attributes[{id:"minecraft:scale"}].base set from entity @s data.hitbox_data.width
execute at @s on passengers align xyz run tp @s ~ ~-1 ~
ride @n[tag=dc_hitbox_shulker_temp] mount @s
tag @e remove dc_hitbox_shulker_temp

function dc:construct/summon/hitbox/edit_complex_pos with entity @s data.hitbox_data.offset