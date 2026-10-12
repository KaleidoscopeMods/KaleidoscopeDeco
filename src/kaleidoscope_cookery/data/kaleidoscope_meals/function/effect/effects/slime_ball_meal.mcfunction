# 【粘液饭】胀气 —— 潜行键按下瞬间向上弹射
# 复原依据：《森罗物语：烹饪》FlatulenceEffect（黏液饭给 35 秒胀气，按潜行键 addDeltaMovement 0.75）
# 本函数由 kaleidoscope_meals:effect/effect_timer 在 200 tick 窗口内每刻调用（@s = 玩家）
# 每刻记录潜行状态，检测"未潜行 → 潜行"的上升沿，即按下瞬间
scoreboard players set @s k_meal_sneak 0
execute if predicate kaleidoscope:shift run scoreboard players set @s k_meal_sneak 1

execute if score @s k_meal_sneak matches 1 if score @s k_meal_sneak_last matches 0 run function kaleidoscope_meals:effect/effects/slime_ball_meal/bounce

scoreboard players operation @s k_meal_sneak_last = @s k_meal_sneak
