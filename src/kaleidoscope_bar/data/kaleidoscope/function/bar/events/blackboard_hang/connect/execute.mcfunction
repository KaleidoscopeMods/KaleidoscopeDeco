execute if entity @s[tag=kaleidoscope_bar_blackboard_bind] run return 0
execute store result score @s kaleidoscope_temp run data get entity @s data.Rotation[0]

data modify entity @n[tag=dc_custom_display] item.components."minecraft:custom_model_data".flags set value [false,false,false,false]

execute if score @s kaleidoscope_temp matches 0 run return run function kaleidoscope:bar/events/blackboard_hang/connect/south
execute if score @s kaleidoscope_temp matches 90 run return run function kaleidoscope:bar/events/blackboard_hang/connect/west
execute if score @s kaleidoscope_temp matches -90 run return run function kaleidoscope:bar/events/blackboard_hang/connect/east
execute if score @s kaleidoscope_temp matches 180 run return run function kaleidoscope:bar/events/blackboard_hang/connect/north