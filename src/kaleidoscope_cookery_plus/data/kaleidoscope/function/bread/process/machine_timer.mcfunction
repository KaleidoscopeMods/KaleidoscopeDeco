scoreboard players add @s kaleidoscope_bread_timer 1

execute store result entity @n[tag=k_bread_machine_display] item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players get @s kaleidoscope_bread_timer

execute if score @s kaleidoscope_bread_timer matches 1 run playsound block.beacon.ambient block @a ~ ~ ~ 0.5
execute if score @s kaleidoscope_bread_timer matches 1 run playsound entity.arrow.hit_player block @a

execute if score @s kaleidoscope_bread_timer matches 20 run playsound block.piston.extend block @a ~ ~ ~ 0.5

execute if score @s kaleidoscope_bread_timer matches 34 run function kaleidoscope:bread/process/sound
execute if score @s kaleidoscope_bread_timer matches 44 run function kaleidoscope:bread/process/sound
execute if score @s kaleidoscope_bread_timer matches 54 run function kaleidoscope:bread/process/sound
execute if score @s kaleidoscope_bread_timer matches 64 run function kaleidoscope:bread/process/sound
execute if score @s kaleidoscope_bread_timer matches 74 run function kaleidoscope:bread/process/sound
execute if score @s kaleidoscope_bread_timer matches 84 run function kaleidoscope:bread/process/sound
execute if score @s kaleidoscope_bread_timer matches 94 run function kaleidoscope:bread/process/sound
execute if score @s kaleidoscope_bread_timer matches 104 run function kaleidoscope:bread/process/sound

execute if score @s kaleidoscope_bread_timer matches 135 run playsound block.piston.contract block @a ~ ~ ~ 0.5

execute if score @s kaleidoscope_bread_timer matches 155 run function kaleidoscope:bread/process/finish