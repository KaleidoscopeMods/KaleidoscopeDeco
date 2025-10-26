scoreboard objectives add k_stoveerror dummy
scoreboard objectives add k_stoveerror2 dummy

scoreboard objectives add k_stove_start dummy "监测开始按钮点击"
scoreboard objectives add k_stove_start_excp dummy "开始按钮状态"

scoreboard objectives add k_stove_fry_status dummy "炒菜状态"
scoreboard objectives add k_stove_out dummy "监测盛出"

scoreboard objectives add k_stove_discard dummy "监测丢弃"

scoreboard objectives add k_stove_fry_recipe_count dummy
scoreboard objectives add k_stove_fry_recipe_count_overall dummy
scoreboard objectives add k_stove_fry_recipe_flag dummy

scoreboard objectives add k_stove_fry_timer dummy "计时器"
scoreboard objectives add k_stove_fry_time_set dummy "从配方获取的时间"
scoreboard objectives add k_stove_fry_overburnt_set dummy "过熟时间"
scoreboard objectives add k_stove_fry_process dummy "烹饪状态"
scoreboard objectives add k_stove_fry_overburnt dummy "过熟状态"

scoreboard objectives add k_stove_fry_sound_timer dummy "循环音效"

scoreboard objectives add k_stove_stir dummy "翻炒触发"
scoreboard objectives add k_stove_stir_timer dummy

scoreboard objectives add k_stove_recipebook dummy "配方书触发"
scoreboard objectives add k_stove_recipebook_page dummy "配方书"

scoreboard objectives add k_stove_pot_vision dummy "炒锅模型显示"
scoreboard objectives add k_stove_pot_vision_trigger dummy "炒锅模型显示"

scoreboard objectives add k_stove_rotation dummy
scoreboard objectives add k_stove_facing dummy

scoreboard objectives add k_stove_number dummy
execute unless score # k_stove_number matches -2147483648..2147483647 run scoreboard players set # k_stove_number -2147483648

function kaleidoscope:cookery/stove/fry/_recipe