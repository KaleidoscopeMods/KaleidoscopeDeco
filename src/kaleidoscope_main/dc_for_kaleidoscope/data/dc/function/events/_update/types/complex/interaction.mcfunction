#寻找对应实体

execute as @e[tag=dc_edit_interaction] if score @s dc_order = #current lay_range run tag @s add dc_comp_interaction_temp

$data modify entity @n[tag=dc_comp_interaction_temp] data.interact_data set value $(value)

execute as @n[tag=dc_comp_interaction_temp] run function dc:events/_update/types/complex/interaction_



tag @n[tag=dc_comp_interaction_temp] remove dc_comp_interaction_temp

