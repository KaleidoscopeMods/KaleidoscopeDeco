data modify entity @e[tag=k_cart_temp,sort=nearest,limit=1] item set from entity @s item
execute on passengers run tag @s add k_cart_chest_transfer
execute as @e[tag=k_cart_temp,sort=nearest,limit=1] on passengers run data modify entity @s Items set from entity @e[tag=k_cart_chest_transfer,sort=nearest,limit=1] Items
execute on passengers on passengers if entity @s[type=player] run ride @s dismount
execute on passengers run tp ~ -200 ~

kill @s