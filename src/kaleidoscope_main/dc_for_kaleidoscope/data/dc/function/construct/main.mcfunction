data modify entity @s data.test set value 1
execute if data entity @s data.index run function dc:construct/index with entity @s data

execute unless entity @s[tag=dc_place_rotated] if entity @a[limit=1,tag=dc_player] at @s facing entity @a[limit=1,tag=dc_player] feet run rotate @s ~ 0
tag @s add dc_place_rotated

#生成模型

tag @s add dc_place_temp
execute unless data entity @s[type=marker] data.test run function dc:construct/summon_marker
execute unless data entity @s[type=item_frame] data.test align xyz positioned ~.5 ~ ~.5 run function dc:construct/summon
tag @s remove dc_place_temp
kill @s