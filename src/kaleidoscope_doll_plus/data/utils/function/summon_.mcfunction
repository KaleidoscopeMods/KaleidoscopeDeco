$summon snowball ~ ~ ~ {Motion:$(motion),Tags:["snowball_temp"]}
data modify entity @e[tag=snowball_temp,limit=1] Owner set from entity @s UUID
execute if data storage minecraft:snowball item run data modify entity @e[tag=snowball_temp,limit=1] Item set from storage minecraft:snowball item
tag @e remove snowball_temp