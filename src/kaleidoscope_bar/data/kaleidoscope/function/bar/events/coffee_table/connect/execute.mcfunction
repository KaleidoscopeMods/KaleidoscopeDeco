execute store result score @s kaleidoscope_temp run data get entity @s data.Rotation[0]

execute if score @s kaleidoscope_temp matches 0 run return run function kaleidoscope:bar/events/coffee_table/connect/south
execute if score @s kaleidoscope_temp matches 90 run return run function kaleidoscope:bar/events/coffee_table/connect/west
execute if score @s kaleidoscope_temp matches -90 run return run function kaleidoscope:bar/events/coffee_table/connect/east
execute if score @s kaleidoscope_temp matches 180 run return run function kaleidoscope:bar/events/coffee_table/connect/north