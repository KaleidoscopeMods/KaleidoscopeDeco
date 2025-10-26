playsound entity.generic.eat player @a
playsound entity.slime.jump player @a
execute as @a[tag=dc_click_temp] run effect give @s saturation 1 0 true

execute as @a[tag=dc_click_temp] run scoreboard players set @s k_meal_effect_type 1
execute as @a[tag=dc_click_temp] run scoreboard players set @s k_meal_effect_timer 200


advancement grant @a[tag=dc_click_temp] only kaleidoscope:cookery/solitary_gourmet slime_ball_meal