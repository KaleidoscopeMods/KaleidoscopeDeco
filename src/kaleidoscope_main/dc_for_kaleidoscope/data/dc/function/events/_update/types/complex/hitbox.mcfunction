#寻找对应实体

execute as @e[tag=dc_edit_hitbox] if score @s dc_order = #current lay_range run tag @s add dc_comp_hitbox_temp

$data modify entity @n[tag=dc_comp_hitbox_temp] data.hitbox_data set value $(value)

execute as @n[tag=dc_comp_hitbox_temp] run function dc:events/_update/types/complex/hitbox_



tag @n[tag=dc_comp_hitbox_temp] remove dc_comp_hitbox_temp

