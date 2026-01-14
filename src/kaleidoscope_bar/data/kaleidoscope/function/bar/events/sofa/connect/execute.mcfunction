execute store result score @s kaleidoscope_temp run data get entity @s data.Rotation[0]

execute if score @s kaleidoscope_temp matches 0 run return run function kaleidoscope:bar/events/sofa/connect/south
execute if score @s kaleidoscope_temp matches 90 run return run function kaleidoscope:bar/events/sofa/connect/west
execute if score @s kaleidoscope_temp matches -90 run return run function kaleidoscope:bar/events/sofa/connect/east
execute if score @s kaleidoscope_temp matches 180 run return run function kaleidoscope:bar/events/sofa/connect/north