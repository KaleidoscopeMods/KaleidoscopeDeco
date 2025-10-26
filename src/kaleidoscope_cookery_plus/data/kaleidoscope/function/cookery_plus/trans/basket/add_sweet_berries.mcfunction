data modify entity @s data.basket.type set value "sweet_berries"
execute store result score @s kaleidoscope_temp run data get entity @s data.basket.count
scoreboard players add @s kaleidoscope_temp 1
execute store result entity @s data.basket.count int 1 run scoreboard players get @s kaleidoscope_temp

function kaleidoscope:cookery_plus/trans/basket/display
function kaleidoscope:cookery_plus/trans/clear_item
function kaleidoscope:cookery_plus/trans/basket/_sound_add