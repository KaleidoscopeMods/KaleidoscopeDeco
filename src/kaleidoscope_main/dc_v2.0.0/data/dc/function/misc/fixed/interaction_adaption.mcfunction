tag @s add dc_fixed_adp_temp
execute if entity @a[predicate=dc:sneak,distance=..6] as @e[distance=..1,tag=dc_interaction] if score @s dc_uid = @e[distance=..1,limit=1,tag=dc_fixed_adp_temp] dc_uid run function dc:misc/fixed/hide
execute unless entity @a[predicate=dc:sneak,distance=..6] as @e[distance=..1,tag=dc_interaction] if score @s dc_uid = @e[distance=..1,limit=1,tag=dc_fixed_adp_temp] dc_uid run function dc:misc/fixed/show

execute unless block ~ ~ ~ barrier run setblock ~ ~ ~ barrier

tag @s remove dc_fixed_adp_temp