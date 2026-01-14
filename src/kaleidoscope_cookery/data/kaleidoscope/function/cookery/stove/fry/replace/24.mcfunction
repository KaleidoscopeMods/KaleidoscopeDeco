execute if score @s k_stove_stir_timer matches 1.. run scoreboard players remove @s k_stove_stir_timer 1

execute if entity @s[tag=!k_stove_fry_start] unless score @s k_stove_stir_timer matches 1.. run item replace block ~ ~ ~ container.24 with minecraft:firework_star[item_model="kaleidoscope_cookery:stove/gui/pot_lower",tooltip_display={"hide_tooltip":true},custom_data={kaleidoscope_stove_bg:1b},custom_model_data={flags:[false,false]}]
execute if entity @s[tag=!k_stove_fry_start] if score @s k_stove_stir_timer matches 1.. run item replace block ~ ~ ~ container.24 with minecraft:firework_star[item_model="kaleidoscope_cookery:stove/gui/pot_lower",tooltip_display={"hide_tooltip":true},custom_data={kaleidoscope_stove_bg:1b},custom_model_data={flags:[false,true]}]

execute if entity @s[tag=k_stove_fry_start] unless score @s k_stove_stir_timer matches 1.. run item replace block ~ ~ ~ container.24 with minecraft:firework_star[item_model="kaleidoscope_cookery:stove/gui/pot_lower",tooltip_display={"hide_tooltip":true},custom_data={kaleidoscope_stove_bg:1b},custom_model_data={flags:[true,false]}]
execute if entity @s[tag=k_stove_fry_start] if score @s k_stove_stir_timer matches 1.. run item replace block ~ ~ ~ container.24 with minecraft:firework_star[item_model="kaleidoscope_cookery:stove/gui/pot_lower",tooltip_display={"hide_tooltip":true},custom_data={kaleidoscope_stove_bg:1b},custom_model_data={flags:[true,true]}]

