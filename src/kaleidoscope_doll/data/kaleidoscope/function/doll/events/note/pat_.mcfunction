execute as @e[tag=kal_pat_temp] run data modify entity @s transformation.scale[1] set value 1f
execute as @e[tag=kal_pat_temp] run data modify entity @s teleport_duration set value 0
execute as @e[tag=kal_pat_temp] run tag @s remove kal_pat_temp
