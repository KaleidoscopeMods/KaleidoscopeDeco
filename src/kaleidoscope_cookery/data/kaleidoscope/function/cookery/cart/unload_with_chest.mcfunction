#summon
execute rotated ~ 0 positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags: ["dc_place"],data: {index:"cart_with_chest"}}
tag @s add dc_player
execute as @e[type=marker,tag=dc_place] at @s positioned ~ ~0.5 ~ align xyz positioned ~.5 ~ ~.5 run function dc:construct/main

#transfer
execute as @e[tag=k_cart_carried] if score @s kaleidoscope_cart_uid = @a[tag=k_cart_carrier_temp,limit=1] kaleidoscope_cart_uid run function kaleidoscope:cookery/cart/unload_with_chest_

tag @s remove k_cart_carrier

playsound minecraft:block.scaffolding.place block @a ~ ~ ~ 1 0.8