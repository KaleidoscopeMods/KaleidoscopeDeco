#开始/关火按钮ui
execute if score @s[tag=!k_stove_fry_start] k_stove_start_excp matches 0 unless data entity @s data.recipe run item replace block ~ ~ ~ container.20 with minecraft:firework_star[item_model="kaleidoscope_cookery:stove/button/start",item_name={"text":"开始烹饪"},custom_data={kaleidoscope_stove_bg:1b,kaleidoscope_stove_start:1b}]

execute if score @s[tag=!k_stove_fry_start] k_stove_start_excp matches 1 unless data entity @s data.recipe run item replace block ~ ~ ~ container.20 with minecraft:firework_star[item_model="kaleidoscope_cookery:stove/button/start_disable",item_name={"text":"开始烹饪"},lore=[{"text":"请加入原料",italic:false,color:"gray"}],custom_data={kaleidoscope_stove_bg:1b}]
execute if score @s[tag=!k_stove_fry_start] k_stove_start_excp matches 2 unless data entity @s data.recipe run item replace block ~ ~ ~ container.20 with minecraft:firework_star[item_model="kaleidoscope_cookery:stove/button/start_disable",item_name={"text":"开始烹饪"},lore=[{"text":"原料不可烹饪",italic:false,color:"gray"}],custom_data={kaleidoscope_stove_bg:1b}]

execute if score @s[tag=!k_stove_fry_start] k_stove_start_excp matches 0 if data entity @s data.recipe run item replace block ~ ~ ~ container.20 with minecraft:firework_star[item_model="kaleidoscope_cookery:stove/button/start_disable",item_name={"text":"开始烹饪"},lore=[{"text":"成品未盛出",italic:false,color:"gray"}],custom_data={kaleidoscope_stove_bg:1b}]
execute if score @s[tag=!k_stove_fry_start] k_stove_start_excp matches 1 if data entity @s data.recipe run item replace block ~ ~ ~ container.20 with minecraft:firework_star[item_model="kaleidoscope_cookery:stove/button/start",item_name={"text":"重新点火"},custom_data={kaleidoscope_stove_bg:1b,kaleidoscope_stove_start:1b}]


execute if entity @s[tag=k_stove_fry_start] run item replace block ~ ~ ~ container.20 with minecraft:firework_star[item_model="kaleidoscope_cookery:stove/button/off",item_name={"text":"关火"},custom_data={kaleidoscope_stove_bg:1b,kaleidoscope_stove_start:1b}]

