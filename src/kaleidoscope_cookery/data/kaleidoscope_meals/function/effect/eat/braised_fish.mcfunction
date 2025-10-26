playsound entity.generic.eat player @a
execute as @a[tag=dc_click_temp] run effect give @s saturation 1 2 true

advancement grant @a[tag=dc_click_temp] only kaleidoscope:cookery/solitary_gourmet braised_fish
