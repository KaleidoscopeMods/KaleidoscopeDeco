data modify entity @s item set from entity @e[tag=dc_custom_display,limit=1,sort=nearest] item
execute as @e[tag=dc_custom_display,limit=1,sort=nearest] on passengers run tag @s add k_cart_carrier_chest_temp
execute as @e[tag=k_cart_carrier_chest_temp] run function kaleidoscope:cookery/cart/carry_with_chest/transfer_

scoreboard players operation @s kaleidoscope_cart_uid = @a[tag=dc_click_temp] kaleidoscope_cart_uid

tag @s remove k_cart_carried_temp