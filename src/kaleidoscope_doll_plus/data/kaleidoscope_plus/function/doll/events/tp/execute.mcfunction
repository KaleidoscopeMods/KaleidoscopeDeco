
particle portal ~ ~ ~ 0 0 0 0.5 80
playsound entity.enderman.teleport block @a

spreadplayers ~ ~ 0 4 false @s
execute at @s align xz positioned ~.5 ~ ~.5 run tp @s ~ ~ ~

data modify entity @e[tag=dc_custom_display,limit=1] Pos set from entity @s Pos
execute as @e[tag=dc_custom_display,limit=1] at @s run function dc:construct/display_offset
data modify entity @e[tag=dc_custom_interaction,limit=1] Pos set from entity @s Pos

execute at @s run particle portal ~ ~ ~ 0 0 0 0.5 80
