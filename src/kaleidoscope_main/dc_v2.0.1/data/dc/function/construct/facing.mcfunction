#获取坐标
execute store result score #x dc_temp run data get entity @s Pos[0] 100
execute store result score #z dc_temp run data get entity @s Pos[2] 100
execute store result score #px dc_temp run data get entity @a[limit=1,tag=dc_player] Pos[0] 100
execute store result score #pz dc_temp run data get entity @a[limit=1,tag=dc_player] Pos[2] 100
#计算绝对值
execute if score #x dc_temp > #px dc_temp run scoreboard players operation #absx dc_temp = #x dc_temp
execute if score #x dc_temp > #px dc_temp run scoreboard players operation #absx dc_temp -= #px dc_temp
execute unless score #x dc_temp > #px dc_temp run scoreboard players operation #absx dc_temp = #px dc_temp
execute unless score #x dc_temp > #px dc_temp run scoreboard players operation #absx dc_temp -= #x dc_temp

execute if score #z dc_temp > #pz dc_temp run scoreboard players operation #absz dc_temp = #z dc_temp
execute if score #z dc_temp > #pz dc_temp run scoreboard players operation #absz dc_temp -= #pz dc_temp
execute unless score #z dc_temp > #pz dc_temp run scoreboard players operation #absz dc_temp = #pz dc_temp
execute unless score #z dc_temp > #pz dc_temp run scoreboard players operation #absz dc_temp -= #z dc_temp
#面向玩家
#x<px -90
#x>px 90
#z<pz 0
#z>pz 180
execute if score #absz dc_temp > #absx dc_temp if score #z dc_temp > #pz dc_temp run data modify entity @s Rotation[0] set value 180f
execute if score #absz dc_temp > #absx dc_temp unless score #z dc_temp > #pz dc_temp run data modify entity @s Rotation[0] set value 0f

execute unless score #absz dc_temp > #absx dc_temp if score #x dc_temp > #px dc_temp run data modify entity @s Rotation[0] set value 90f
execute unless score #absz dc_temp > #absx dc_temp unless score #x dc_temp > #px dc_temp run data modify entity @s Rotation[0] set value -90f


