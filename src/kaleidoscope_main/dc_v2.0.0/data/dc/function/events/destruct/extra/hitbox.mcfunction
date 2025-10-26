#hitbox类型：额外清理碰撞箱实体
execute as @e[distance=..5,tag=dc_hitbox] if score @s dc_uid = @e[limit=1,tag=dc_destruct,sort=nearest] dc_uid run tag @s add dc_hitbox_clear

execute as @n[tag=dc_hitbox_clear] run tp @s ~ -66 ~
execute as @n[tag=dc_hitbox_clear] on passengers run kill @s
execute as @n[tag=dc_hitbox_clear] run kill @s