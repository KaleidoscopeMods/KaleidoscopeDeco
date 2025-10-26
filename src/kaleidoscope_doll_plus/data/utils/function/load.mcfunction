forceload add 0 0
scoreboard objectives add snowball dummy
execute store result score *count snowball if entity @e[type=marker,tag=snowball_marker]
execute if score *count snowball matches 2.. run kill @e[type=marker,tag=snowball_marker]
execute unless entity @e[type=marker,tag=snowball_marker] run summon marker 0 0 0 {Tags:["snowball_marker"]}