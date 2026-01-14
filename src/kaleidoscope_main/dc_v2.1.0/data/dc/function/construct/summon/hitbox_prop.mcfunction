$tp ~ ~$(offset) ~
execute on passengers run tag @s add dc_hitbox_shulker_temp
execute at @s on passengers align xyz run tp @s ~ ~-1 ~
ride @n[tag=dc_hitbox_shulker_temp] mount @s
tag @e remove dc_hitbox_shulker_temp
$execute on passengers run attribute @s scale base set $(width)