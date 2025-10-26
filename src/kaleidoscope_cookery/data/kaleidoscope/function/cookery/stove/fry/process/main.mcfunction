#设置状态
scoreboard players set @s k_stove_fry_status 1

#计时器
scoreboard players add @s k_stove_fry_timer 1
execute store result score @s k_stove_fry_time_set run data get entity @s data.time
execute store result score @s k_stove_fry_overburnt_set run data get entity @s data.time 1.5

#熟的状态
execute if score @s k_stove_fry_timer >= @s k_stove_fry_time_set run scoreboard players set @s k_stove_fry_status 2
execute if score @s k_stove_fry_timer >= @s k_stove_fry_overburnt_set run scoreboard players set @s k_stove_fry_status 3

#音效
function kaleidoscope:cookery/stove/fry/sound/main