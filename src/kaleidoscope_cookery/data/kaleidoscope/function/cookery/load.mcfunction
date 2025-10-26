scoreboard players set $auto_install dc_options 1

scoreboard objectives add kaleidoscope_cart_uid dummy
execute unless score $ kaleidoscope_cart_uid matches -2147483648..2147483647 run scoreboard players set $ kaleidoscope_cart_uid 0

execute as @a unless score @s kaleidoscope_cart_uid matches -2147483648..2147483647 run function kaleidoscope:cookery/cart/encode

function kaleidoscope:cookery/stove/load

scoreboard objectives add k_meal_effect_type dummy
scoreboard objectives add k_meal_effect_timer dummy