execute store result score @s kaleidoscope_temp run random value -4..9

execute if score @s kaleidoscope_temp matches 0 run function kaleidoscope:bar/events/painting/random