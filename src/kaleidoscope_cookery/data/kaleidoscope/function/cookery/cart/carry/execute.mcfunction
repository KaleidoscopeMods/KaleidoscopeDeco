execute as @e[tag=dc_custom_display] at @s rotated ~ 0 positioned ^ ^-0.5 ^-1.5 run tp @a[tag=dc_click_temp] ~ ~ ~ ~ ~

tag @a[tag=dc_click_temp] add k_cart_carrier

summon item_display ~ ~ ~ {Tags:["k_cart_carried","k_cart_carried_temp"],teleport_duration:1}
execute as @e[tag=k_cart_carried_temp] run function kaleidoscope:cookery/cart/carry/transfer