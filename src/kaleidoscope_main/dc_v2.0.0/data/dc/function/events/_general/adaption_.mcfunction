$execute store result score #h1 dc_temp run data get storage dc:temp adt.width $(sin)
$execute store result score #h2 dc_temp run data get storage dc:temp adt.height $(cos)
scoreboard players set #h dc_temp 0
scoreboard players operation #h dc_temp += #h1 dc_temp
scoreboard players operation #h dc_temp += #h2 dc_temp
execute store result entity @s height float 0.00001 run scoreboard players get #h dc_temp