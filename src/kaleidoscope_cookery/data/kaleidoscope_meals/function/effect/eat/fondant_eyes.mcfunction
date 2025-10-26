playsound entity.generic.eat player @a
execute as @a[tag=dc_click_temp] run effect give @s saturation 1 2 true
execute as @a[tag=dc_click_temp] run effect give @s weakness 4 0

advancement grant @a[tag=dc_click_temp] only kaleidoscope:cookery/solitary_gourmet fondant_eyes