execute if score @s k_stove_stir_timer matches 1.. run scoreboard players remove @s k_stove_stir_timer 1

execute if entity @s[tag=!k_stove_fry_start] unless score @s k_stove_stir_timer matches 1.. run item replace block ~ ~ ~ container.24 with minecraft:firework_star[item_model="kaleidoscope_cookery:stove/gui/pot_lower",tooltip_display={"hide_tooltip":true},custom_data={kaleidoscope_stove_bg:1b},custom_model_data={flags:[false,false],floats:[0]}]
execute if entity @s[tag=!k_stove_fry_start] if score @s k_stove_stir_timer matches 1.. run item replace block ~ ~ ~ container.24 with minecraft:firework_star[item_model="kaleidoscope_cookery:stove/gui/pot_lower",tooltip_display={"hide_tooltip":true},custom_data={kaleidoscope_stove_bg:1b},custom_model_data={flags:[false,true],floats:[0]}]

execute if entity @s[tag=k_stove_fry_start] unless score @s k_stove_stir_timer matches 1.. run item replace block ~ ~ ~ container.24 with minecraft:firework_star[item_model="kaleidoscope_cookery:stove/gui/pot_lower",tooltip_display={"hide_tooltip":true},custom_data={kaleidoscope_stove_bg:1b},custom_model_data={flags:[true,false],floats:[0]}]
execute if entity @s[tag=k_stove_fry_start] if score @s k_stove_stir_timer matches 1.. run item replace block ~ ~ ~ container.24 with minecraft:firework_star[item_model="kaleidoscope_cookery:stove/gui/pot_lower",tooltip_display={"hide_tooltip":true},custom_data={kaleidoscope_stove_bg:1b},custom_model_data={flags:[true,true],floats:[0]}]


execute store result block ~ ~ ~ Items[{Slot:24b}].components."minecraft:custom_model_data".floats[0] float 1 run data get entity @s data.pot_type
