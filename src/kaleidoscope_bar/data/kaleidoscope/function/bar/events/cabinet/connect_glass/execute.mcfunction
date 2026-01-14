execute store result score @s kaleidoscope_temp run data get entity @s data.Rotation[0]

execute if score @s kaleidoscope_temp matches 0 run return run function kaleidoscope:bar/events/cabinet/connect_glass/south
execute if score @s kaleidoscope_temp matches 90 run return run function kaleidoscope:bar/events/cabinet/connect_glass/west
execute if score @s kaleidoscope_temp matches -90 run return run function kaleidoscope:bar/events/cabinet/connect_glass/east
execute if score @s kaleidoscope_temp matches 180 run return run function kaleidoscope:bar/events/cabinet/connect_glass/north