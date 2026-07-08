execute rotated as @n[tag=dc_display] if predicate {"condition":"random_chance",chance:0.03} run particle poof ^-0.6 ^0.8 ^ 0.05 0.05 0.05 0 2

execute store result entity @n[tag=dc_display] item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s kaleidoscope_boil_timer 1

execute if score @s kaleidoscope_boil_timer matches 5.. run scoreboard players set @s kaleidoscope_boil_timer -1
