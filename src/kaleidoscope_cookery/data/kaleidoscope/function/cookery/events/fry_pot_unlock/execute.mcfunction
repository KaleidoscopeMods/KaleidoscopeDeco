#解锁

tag @s add k_frypot_unlock_temp

execute as @e[distance=..2,tag=k_stove_fry_fixed] if score @s k_stove_number = @e[distance=..2,tag=k_frypot_unlock_temp,limit=1] k_stove_number at @s run function kaleidoscope:cookery/events/fry_pot_unlock/unlock

tag @s remove k_frypot_unlock_temp