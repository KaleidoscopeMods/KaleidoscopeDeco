ride @s dismount
ride @s mount @e[tag=k_cart_carried_temp,limit=1,sort=nearest]
execute summon marker run tag @s add k_cart_chest_marker
ride @e[type=marker,tag=k_cart_chest_marker,sort=nearest,limit=1] mount @s

tag @s remove k_cart_carrier_chest_temp