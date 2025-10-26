execute as @e[tag=kplus_explode] at @s run particle gust_emitter_small ~ ~.2 ~ 0 0 0 0 0 normal
execute as @e[tag=kplus_explode] at @s run playsound entity.generic.explode block @a ~ ~ ~
execute as @e[tag=kplus_explode] run tag @s remove kplus_explode