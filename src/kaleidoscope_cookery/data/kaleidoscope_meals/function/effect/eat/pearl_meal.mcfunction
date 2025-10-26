playsound entity.generic.eat player @a
execute as @a[tag=dc_click_temp] run effect give @s saturation 1 1 true

execute as @a[tag=dc_click_temp] at @s run function kaleidoscope_meals:effect/eat/pearl_meal/tp

advancement grant @a[tag=dc_click_temp] only kaleidoscope:cookery/solitary_gourmet pearl_meal