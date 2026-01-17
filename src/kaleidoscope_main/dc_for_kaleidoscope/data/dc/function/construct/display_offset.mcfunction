execute store result score #temp dc_temp run data get entity @s transformation.scale[1] 10000
scoreboard players operation #temp dc_temp /= #2 dc_temp
execute store result storage dc:temp display_offset float 0.0001 run scoreboard players get #temp dc_temp
function dc:construct/display_offset_ with storage dc:temp