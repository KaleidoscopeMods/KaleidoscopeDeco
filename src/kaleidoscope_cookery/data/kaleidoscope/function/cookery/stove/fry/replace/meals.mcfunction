item replace block ~ ~ ~ container.15 with minecraft:firework_star[item_model="kaleidoscope_cookery:stove/empty",tooltip_display={"hide_tooltip":true},custom_data={kaleidoscope_stove_bg:1b}]

execute if score @s k_stove_fry_status matches 1.. run data modify block ~ ~ ~ Items[{Slot:15b}].components."minecraft:custom_data".kaleidoscope_stove_out set value 1b

execute if score @s k_stove_fry_status matches 1 if entity @s[tag=k_stove_fry_start] run return run data modify block ~ ~ ~ Items[{Slot:15b}].components."minecraft:item_model" set value "kaleidoscope_cookery:stove/gui/meals/semi"
execute if score @s k_stove_fry_status matches 1 if entity @s[tag=!k_stove_fry_start] run return run data modify block ~ ~ ~ Items[{Slot:15b}].components."minecraft:item_model" set value "kaleidoscope_cookery:stove/gui/meals/semi_s"

function kaleidoscope:cookery/stove/fry/replace/meals_ with entity @s data

execute if score @s k_stove_fry_status matches 3 run item replace block ~ ~ ~ container.15 with minecraft:firework_star[item_model="kaleidoscope_cookery:stove/gui/meals/dark",tooltip_display={"hide_tooltip":true},custom_data={kaleidoscope_stove_bg:1b,kaleidoscope_stove_out:1b}]