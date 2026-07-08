#生成单个的交互实体

summon interaction ~ ~ ~ {Tags:["dc_interaction","dc_interaction_temp","dc_interaction_complex_temp"],response:1b,attack:{player:[I;0,0,0,0],timestamp:0L},interaction:{player:[I;0,0,0,0],timestamp:0L}}

$data modify entity @n[tag=dc_interaction_complex_temp] data.interact_data set value $(value)

scoreboard players operation @n[tag=dc_interaction_complex_temp] dc_order = #current lay_range

tag @n[tag=dc_interaction_complex_temp] remove dc_interaction_complex_temp