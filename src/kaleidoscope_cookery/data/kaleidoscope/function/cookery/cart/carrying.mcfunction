tag @s add k_cart_carrier_temp

execute rotated ~ 0 positioned ^ ^0.5 ^1.5 as @e[tag=k_cart_carried] if score @s kaleidoscope_cart_uid = @a[tag=k_cart_carrier_temp,limit=1] kaleidoscope_cart_uid run function kaleidoscope:cookery/cart/tp

execute if predicate kaleidoscope:shift unless entity @s[tag=k_cart_carrier_chest] run function kaleidoscope:cookery/cart/unload
execute if predicate kaleidoscope:shift if entity @s[tag=k_cart_carrier_chest] run function kaleidoscope:cookery/cart/unload_with_chest
tag @s remove k_cart_carrier_temp