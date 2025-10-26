data modify entity @s item set from entity @e[tag=dc_custom_display,limit=1,sort=nearest] item

scoreboard players operation @s kaleidoscope_cart_uid = @a[tag=dc_click_temp] kaleidoscope_cart_uid

tag @s remove k_cart_carried_temp