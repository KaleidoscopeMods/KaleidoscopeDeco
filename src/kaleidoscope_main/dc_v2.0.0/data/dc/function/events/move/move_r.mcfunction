
execute store result score #x dc_temp run data get entity @s Pos[0] 100
execute store result score #z dc_temp run data get entity @s Pos[2] 100

execute store result score #px dc_temp run data get entity @a[limit=1,tag=dc_click_temp] Pos[0] 100
execute store result score #pz dc_temp run data get entity @a[limit=1,tag=dc_click_temp] Pos[2] 100

execute if score #x dc_temp > #px dc_temp run scoreboard players operation #absx dc_temp = #x dc_temp
execute if score #x dc_temp > #px dc_temp run scoreboard players operation #absx dc_temp -= #px dc_temp
execute unless score #x dc_temp > #px dc_temp run scoreboard players operation #absx dc_temp = #px dc_temp
execute unless score #x dc_temp > #px dc_temp run scoreboard players operation #absx dc_temp -= #x dc_temp

execute if score #z dc_temp > #pz dc_temp run scoreboard players operation #absz dc_temp = #z dc_temp
execute if score #z dc_temp > #pz dc_temp run scoreboard players operation #absz dc_temp -= #pz dc_temp
execute unless score #z dc_temp > #pz dc_temp run scoreboard players operation #absz dc_temp = #pz dc_temp
execute unless score #z dc_temp > #pz dc_temp run scoreboard players operation #absz dc_temp -= #z dc_temp

execute if score #absz dc_temp > #absx dc_temp run data modify storage dc events.move.type set value 2


execute if score #absz dc_temp > #absx dc_temp if score #z dc_temp > #pz dc_temp run data modify storage dc events.move.distance set from storage dc events.temp.target.args.distance
execute if score #absz dc_temp > #absx dc_temp unless score #z dc_temp > #pz dc_temp store result storage dc events.move.distance float -0.00001 run data get storage dc events.temp.target.args.distance 100000


execute unless score #absz dc_temp > #absx dc_temp if score #x dc_temp > #px dc_temp run data modify storage dc events.move.distance set from storage dc events.temp.target.args.distance
execute unless score #absz dc_temp > #absx dc_temp unless score #x dc_temp > #px dc_temp store result storage dc events.move.distance float -0.00001 run data get storage dc events.temp.target.args.distance 100000


