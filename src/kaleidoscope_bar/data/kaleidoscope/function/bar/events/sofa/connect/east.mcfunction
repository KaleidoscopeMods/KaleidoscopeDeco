#面朝东（-90）
scoreboard players set #left kaleidoscope_temp 0
scoreboard players set #right kaleidoscope_temp 0
scoreboard players set #front kaleidoscope_temp 0
#left:z-1
scoreboard players set #temp kaleidoscope_temp -1
execute positioned ~ ~ ~-1 as @e[type=marker,distance=..0.1,tag=dc_pivot,tag=kaleidoscope_bar_sofa] store result score #temp kaleidoscope_temp run data get entity @s data.Rotation[0]
execute if score #temp kaleidoscope_temp matches -90 run scoreboard players set #left kaleidoscope_temp 1
execute if score #temp kaleidoscope_temp matches 0 run scoreboard players set #left kaleidoscope_temp 1
execute if score #temp kaleidoscope_temp matches 180 run scoreboard players set #left kaleidoscope_temp 1
#right:z+1
scoreboard players set #temp kaleidoscope_temp -1
execute positioned ~ ~ ~1 as @e[type=marker,distance=..0.1,tag=dc_pivot,tag=kaleidoscope_bar_sofa] store result score #temp kaleidoscope_temp run data get entity @s data.Rotation[0]
execute if score #temp kaleidoscope_temp matches -90 run scoreboard players set #right kaleidoscope_temp 1
execute if score #temp kaleidoscope_temp matches 180 run scoreboard players set #right kaleidoscope_temp 1
execute if score #temp kaleidoscope_temp matches 0 run scoreboard players set #right kaleidoscope_temp 1
#front:x+1
##1=left,2=right
scoreboard players set #temp kaleidoscope_temp -1
execute positioned ~1 ~ ~ as @e[type=marker,distance=..0.1,tag=dc_pivot,tag=kaleidoscope_bar_sofa] store result score #temp kaleidoscope_temp run data get entity @s data.Rotation[0]
execute if score #temp kaleidoscope_temp matches 0 run scoreboard players set #front kaleidoscope_temp 1
execute if score #temp kaleidoscope_temp matches 180 run scoreboard players set #front kaleidoscope_temp 2

#switch
execute as @n[tag=dc_custom_display] run function kaleidoscope:bar/events/sofa/connect/_