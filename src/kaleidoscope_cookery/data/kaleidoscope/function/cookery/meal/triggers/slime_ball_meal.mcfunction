# 手持食用【粘液饭】（可食用物品）时的效果，与放置食用（effect/eat/slime_ball_meal）保持一致
# 由进度 kaleidoscope:cookery/tech/meals/slime_ball_meal 的 rewards.function 调用（@s = 食用者）
playsound entity.generic.eat player @s
playsound entity.slime.jump player @s
effect give @s minecraft:saturation 1 0 true

scoreboard players set @s k_meal_effect_type 1
scoreboard players set @s k_meal_effect_timer 200

advancement grant @s only kaleidoscope:cookery/solitary_gourmet slime_ball_meal
