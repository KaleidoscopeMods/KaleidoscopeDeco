execute as @a[tag=k_cart_carrier] at @s run function kaleidoscope:cookery/cart/carrying

execute as @e[tag=k_cart_chest,type=donkey] unless predicate kaleidoscope:cookery/vehicle run function kaleidoscope:cookery/cart/chest_clear

execute as @e[tag=k_cookery_meal,type=item_frame] at @s run function kaleidoscope:cookery/meal/set

execute as @a if score @s k_meal_effect_timer matches 1.. at @s run function kaleidoscope_meals:effect/effect_timer

function kaleidoscope:cookery/stove/tick

advancement revoke @a only kaleidoscope:cookery/placetaker/1
advancement revoke @a only kaleidoscope:cookery/placetaker/2
advancement revoke @a only kaleidoscope:cookery/placetaker/3