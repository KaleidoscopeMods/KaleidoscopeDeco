#as_display
#跟随锚点
execute at @s at @n[tag=dc_place_temp] run rotate @s ~ 0

execute store result score #rotation dc_temp run data get entity @s Rotation[0]