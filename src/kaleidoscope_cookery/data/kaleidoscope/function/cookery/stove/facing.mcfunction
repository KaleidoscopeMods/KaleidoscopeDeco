execute if block ~ ~ ~ barrel[facing=north] unless score @s k_stove_facing matches 0 run function kaleidoscope:cookery/stove/facing/north
execute if block ~ ~ ~ barrel[facing=south] unless score @s k_stove_facing matches 1 run function kaleidoscope:cookery/stove/facing/south
execute if block ~ ~ ~ barrel[facing=west] unless score @s k_stove_facing matches 2 run function kaleidoscope:cookery/stove/facing/west
execute if block ~ ~ ~ barrel[facing=east] unless score @s k_stove_facing matches 3 run function kaleidoscope:cookery/stove/facing/east