particle portal ~ ~ ~ 0 0 0 0.5 80
playsound entity.enderman.teleport block @a

spreadplayers ~ ~ 0 4 false @s
execute at @s align xz positioned ~.5 ~ ~.5 run tp @s ~ ~ ~

execute at @s run particle portal ~ ~ ~ 0 0 0 0.5 80