execute if score @s k_stove_fry_sound_timer matches 1.. run scoreboard players remove @s k_stove_fry_sound_timer 1

execute if score @s k_stove_fry_sound_timer matches 399 run playsound kaleidoscope_cookery:block.stove.fry block @a
execute unless score @s k_stove_fry_sound_timer matches 1.. run scoreboard players set @s k_stove_fry_sound_timer 400

