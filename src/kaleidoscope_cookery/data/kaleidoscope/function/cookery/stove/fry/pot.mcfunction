scoreboard players operation #temp k_stove_pot_vision = @s k_stove_pot_vision

execute if score #temp k_stove_pot_vision matches 1 run scoreboard players set @s k_stove_pot_vision 0
execute if score #temp k_stove_pot_vision matches 0 run scoreboard players set @s k_stove_pot_vision 1