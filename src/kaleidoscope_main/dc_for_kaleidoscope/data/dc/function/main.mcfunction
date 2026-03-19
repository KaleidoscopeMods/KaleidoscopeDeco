#tick
execute as @e[type=#dc:place,tag=dc_place] at @s run function dc:construct/main

execute if score #installing dc_options matches 1 run function dc:index/_install/continue


tag @a remove dc_player