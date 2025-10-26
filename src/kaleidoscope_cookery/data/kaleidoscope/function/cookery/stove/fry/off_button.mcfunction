# 关火按钮处理

tag @s remove k_stove_fry_start
scoreboard players set @a[scores={k_stove_start=1..}] k_stove_start 0

stopsound @a block kaleidoscope_cookery:block.stove.fry
scoreboard players set @s k_stove_fry_sound_timer 0