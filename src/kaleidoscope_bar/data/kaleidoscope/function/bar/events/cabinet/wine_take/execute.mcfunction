#检查是否空了
execute store result score @s kaleidoscope_temp run data get entity @s data.cabinet

execute if score @s kaleidoscope_temp matches ..0 run return run playsound minecraft:block.copper_bulb.hit block @a ~ ~ ~ 0.5

execute at @n[tag=dc_click_temp] run summon item ~ ~ ~ {Tags:["kaleidoscope_cabinet_item"],Item:{id:"stone",count:1}}
data modify entity @n[tag=kaleidoscope_cabinet_item] Item set from entity @s data.cabinet[-1]
tag @n[tag=kaleidoscope_cabinet_item] remove kaleidoscope_cabinet_item
data remove entity @s data.cabinet[-1]

function kaleidoscope:bar/events/cabinet/sync/execute