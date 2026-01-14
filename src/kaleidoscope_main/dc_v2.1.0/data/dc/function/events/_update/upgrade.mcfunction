execute unless score @s dc_version matches 19.. run function dc:events/_update/versions/19
execute unless score @s dc_version matches 20.. run function dc:events/_update/versions/20
execute unless score @s dc_version matches 25.. run scoreboard players set @s dc_version 25
execute unless score @s dc_version matches 27.. run function dc:events/_update/versions/27

execute store result entity @s data.prop.version int 1 run scoreboard players get @s dc_version
