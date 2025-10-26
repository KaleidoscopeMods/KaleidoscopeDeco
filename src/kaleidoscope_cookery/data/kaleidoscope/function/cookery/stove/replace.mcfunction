execute if score @s k_stove_rotation matches -44..45 run setblock ~ ~ ~ minecraft:barrel[facing=north]{CustomName:'{"translate":"item.cam.item_displayer"}'} destroy
execute if score @s k_stove_rotation matches -134..-45 run setblock ~ ~ ~ minecraft:barrel[facing=east]{CustomName:'{"translate":"item.cam.item_displayer"}'} destroy
execute if score @s k_stove_rotation matches -180..-135 run setblock ~ ~ ~ minecraft:barrel[facing=south]{CustomName:'{"translate":"item.cam.item_displayer"}'} destroy
execute if score @s k_stove_rotation matches 136..180 run setblock ~ ~ ~ minecraft:barrel[facing=south]{CustomName:'{"translate":"item.cam.item_displayer"}'} destroy
execute if score @s k_stove_rotation matches 46..135 run setblock ~ ~ ~ minecraft:barrel[facing=west]{CustomName:'{"translate":"item.cam.item_displayer"}'} destroy

tag @s add k_stoveplay_enable
tag @s remove k_stove_temp
item replace block ~ ~ ~ container.13 with air

data modify entity @s transformation.scale set value [1.001f,1.001f,1.001f]
function kaleidoscope:cookery/stove/encode