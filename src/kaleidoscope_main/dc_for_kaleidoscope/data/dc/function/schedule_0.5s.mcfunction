#0.5s loop

execute as @e[type=marker,tag=dc_pivot,tag=dc_type_fixed] at @s if entity @a[distance=..6] run function dc:misc/fixed/interaction_adaption

schedule function dc:schedule_0.5s 0.5s