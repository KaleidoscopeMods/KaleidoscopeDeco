execute unless data entity @s data.recipe run item replace block ~ ~ ~ container.15 with minecraft:firework_star[item_model="kaleidoscope_cookery:stove/empty",tooltip_display={"hide_tooltip":true},custom_data={kaleidoscope_stove_bg:1b}]
execute if data entity @s data.recipe run function kaleidoscope:cookery/stove/fry/replace/meals

