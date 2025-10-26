$loot replace block ~ ~ ~ container.15 loot kaleidoscope_meals:$(recipe)
$data modify block ~ ~ ~ Items[{Slot:15b}].components."minecraft:item_model" set value "kaleidoscope_cookery:meals/gui/$(recipe)"

data modify block ~ ~ ~ Items[{Slot:15b}].id set value "firework_star"
data modify block ~ ~ ~ Items[{Slot:15b}].components."minecraft:custom_data" merge value {kaleidoscope_stove_bg:1b,kaleidoscope_stove_out:1b}