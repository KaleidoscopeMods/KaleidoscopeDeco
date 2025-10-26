execute store result score @s kplus_temp run random value 1..3
execute if score @s kplus_temp matches 1 run playsound minecraft:entity.villager.trade block @a ~ ~ ~
execute if score @s kplus_temp matches 2 run playsound minecraft:entity.villager.yes block @a ~ ~ ~
execute if score @s kplus_temp matches 3 run playsound minecraft:entity.villager.no block @a ~ ~ ~

execute if score @s kplus_temp matches 2 run particle heart ~ ~.5 ~ 0.3 0.3 0.3 0 1
execute if score @s kplus_temp matches 1 run particle happy_villager ~ ~.5 ~ 0.3 0.3 0.3 0 5
execute if score @s kplus_temp matches 3 run particle angry_villager ~ ~.5 ~ 0.3 0.3 0.3 0 1

execute as @e[tag=dc_custom_display,distance=..3,limit=1] run function kaleidoscope:doll/events/note/pat