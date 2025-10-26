execute store result score @s kplus_temp run random value 1..100

execute if score @s kplus_temp matches 1..20 run particle smoke ~ ~0.3 ~ 0.2 0.2 0.2 0 2
execute if score @s kplus_temp matches 15..35 run particle flame ~ ~0.3 ~ 0.2 0.2 0.2 0 2
execute if score @s kplus_temp matches 50..55 run playsound block.fire.ambient block @a
