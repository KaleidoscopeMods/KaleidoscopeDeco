#创建时，随机一幅画
data modify entity @n[tag=dc_custom_display] item.components."minecraft:custom_model_data".floats set value [0]
function kaleidoscope:bar/events/painting/random
execute store result entity @n[tag=dc_custom_display] item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players get @s kaleidoscope_temp