playsound entity.generic.eat player @a
execute as @a[tag=dc_click_temp] run effect give @s saturation 1 1 true

advancement grant @a[tag=dc_click_temp] only kaleidoscope:cookery/solitary_gourmet sashimi_end
advancement grant @a[tag=dc_click_temp] only kaleidoscope:cookery/difference sashimi_end