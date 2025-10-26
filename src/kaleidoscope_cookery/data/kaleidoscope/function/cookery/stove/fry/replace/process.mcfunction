scoreboard players set @s k_stove_fry_process 15
scoreboard players operation @s k_stove_fry_process *= @s k_stove_fry_timer
scoreboard players operation @s k_stove_fry_process /= @s k_stove_fry_time_set

scoreboard players set @s k_stove_fry_overburnt 15

scoreboard players operation #temp1 k_stove_fry_overburnt = @s k_stove_fry_timer
scoreboard players operation #temp1 k_stove_fry_overburnt -= @s k_stove_fry_time_set

scoreboard players operation #temp k_stove_fry_overburnt = @s k_stove_fry_overburnt_set
scoreboard players operation #temp k_stove_fry_overburnt -= @s k_stove_fry_time_set

scoreboard players operation @s k_stove_fry_overburnt *= #temp1 k_stove_fry_overburnt
scoreboard players operation @s k_stove_fry_overburnt /= #temp k_stove_fry_overburnt

execute store result block ~ ~ ~ Items[{Slot:26b}].components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players get @s k_stove_fry_process
execute store result block ~ ~ ~ Items[{Slot:26b}].components."minecraft:custom_model_data".floats[1] float 1 run scoreboard players get @s k_stove_fry_overburnt