loot give @a[tag=dc_click_temp,gamemode=!creative] loot {pools:[{rolls:1,entries:[{type:"item",name:"apple"}]}]}

execute store result entity @s data.basket.count int 0.99 run data get entity @s data.basket.count

function kaleidoscope:cookery_plus/trans/basket/display
function kaleidoscope:cookery_plus/trans/basket/_sound_take