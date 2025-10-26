#丢弃
data remove entity @s data.recipe

#重置计时器
data remove entity @s data.timer
scoreboard players set @s k_stove_fry_timer 0


#自动关火
execute if entity @s[tag=k_stove_fry_start] run function kaleidoscope:cookery/stove/fry/off_button