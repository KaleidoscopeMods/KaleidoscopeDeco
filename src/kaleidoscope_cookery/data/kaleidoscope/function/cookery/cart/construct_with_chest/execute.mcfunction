tag @e[tag=dc_custom_display] add k_cart_temp

execute summon donkey run tag @s add k_cart_chest_temp
execute as @e[tag=k_cart_chest_temp] at @s run function kaleidoscope:cookery/cart/construct_with_chest/chest


schedule function kaleidoscope:cookery/cart/construct/remove 1t