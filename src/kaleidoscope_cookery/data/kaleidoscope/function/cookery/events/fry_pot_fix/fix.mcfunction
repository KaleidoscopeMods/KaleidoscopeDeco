execute positioned ~ ~-1 ~ as @e[distance=..0.5,tag=k_stove] run tag @s add k_stove_fry_fix_temp
execute as @e[distance=..2,tag=k_stove_fry_fix_temp] at @s run function kaleidoscope:cookery/events/fry_pot_fix/stove
execute as @e[tag=dc_custom_display] run function kaleidoscope:cookery/events/fry_pot_fix/display
tag @s add k_frypot_fixed
scoreboard players operation @s k_stove_number = @e[distance=..2,tag=k_stove_fry_fix_temp,limit=1] k_stove_number
execute as @e[distance=..2,tag=k_stove_fry_fix_temp] run tag @s remove k_stove_fry_fix_temp



data modify storage dc events.temp.target.args set value {index:"fry_pot_fixed"}
function dc:events/trans/execute with storage dc events.temp.target.args
#清除临时设定的arg，防止因为修改了arg导致被判定两次
data remove storage dc events.temp.target.args

