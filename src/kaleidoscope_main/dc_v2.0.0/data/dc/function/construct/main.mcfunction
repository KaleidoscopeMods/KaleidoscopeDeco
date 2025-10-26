data modify entity @s data.test set value 1
execute if data entity @s data.index run function dc:construct/index with entity @s data

#生成模型

execute unless data entity @s[type=marker] data.test run function dc:construct/summon_marker
execute unless data entity @s[type=item_frame] data.test align xyz positioned ~.5 ~ ~.5 run function dc:construct/summon

tag @a remove dc_player
kill @s