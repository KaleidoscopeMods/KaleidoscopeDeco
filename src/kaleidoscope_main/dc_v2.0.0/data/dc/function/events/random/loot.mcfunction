$loot spawn ~ ~ ~ loot $(loot_table)
execute as @e[type=item,distance=..5,limit=1,nbt={Item:{components:{"minecraft:custom_data":{dc_random:1}}}}] run tag @s add dc_random_temp
execute as @e[tag=dc_random_temp,limit=1] run data modify storage dc events.temp.target set from entity @s Item.components."minecraft:custom_data".event
kill @e[tag=dc_random_temp,limit=1]

function dc:events/_detect/event_execute with storage dc events.temp.target
