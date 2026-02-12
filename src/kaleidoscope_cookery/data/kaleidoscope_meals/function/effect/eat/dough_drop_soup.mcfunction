playsound entity.generic.drink player @a
execute as @a[tag=dc_click_temp] run effect give @s saturation 1 2 true

advancement grant @a[tag=dc_click_temp] only kaleidoscope:cookery/imperial_banquet dough_drop_soup