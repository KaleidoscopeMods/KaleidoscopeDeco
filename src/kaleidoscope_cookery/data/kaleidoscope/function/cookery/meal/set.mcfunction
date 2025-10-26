summon marker ~ ~ ~ {Tags:["dc_place","k_cookery_meal_temp"]}
data modify entity @e[limit=1,tag=k_cookery_meal_temp,distance=..0.5] data.index set from entity @s data.index

kill @s