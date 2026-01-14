#面朝西（90）
scoreboard players set #left kaleidoscope_temp 0
scoreboard players set #right kaleidoscope_temp 0
#left:z+1
scoreboard players set #temp kaleidoscope_temp -1
execute positioned ~ ~ ~1 as @e[type=marker,distance=..0.1,tag=dc_pivot,tag=kaleidoscope_bar_cabinet_glass] store result score #temp kaleidoscope_temp run data get entity @s data.Rotation[0]
execute if score #temp kaleidoscope_temp matches 90 run scoreboard players set #left kaleidoscope_temp 1
#right:z-1
scoreboard players set #temp kaleidoscope_temp -1
execute positioned ~ ~ ~-1 as @e[type=marker,distance=..0.1,tag=dc_pivot,tag=kaleidoscope_bar_cabinet_glass] store result score #temp kaleidoscope_temp run data get entity @s data.Rotation[0]
execute if score #temp kaleidoscope_temp matches 90 run scoreboard players set #right kaleidoscope_temp 1

#switch
execute as @n[tag=dc_custom_display] run function kaleidoscope:bar/events/cabinet/connect_glass/_