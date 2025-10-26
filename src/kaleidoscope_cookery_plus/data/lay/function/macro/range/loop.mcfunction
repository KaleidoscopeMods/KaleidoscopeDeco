execute store result storage lay range.var int 1 run scoreboard players get #current lay_range
$data modify storage $(path) merge from storage minecraft:lay range 
$function $(func) with storage $(path)
scoreboard players operation #current lay_range += #step lay_range
$execute unless score #current lay_range >= #max lay_range run function lay:macro/range/loop {func:"$(func)",path:"$(path)"}

