#as_display
#面向玩家
execute at @s facing entity @a[limit=1,tag=dc_player] feet run rotate @s ~ 0

execute store result score #rotation dc_temp run data get entity @s Rotation[0]