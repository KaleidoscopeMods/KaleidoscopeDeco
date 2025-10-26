# 开始按钮处理

tag @s add k_stove_fry_start
advancement grant @a[scores={k_stove_start=1..}] only kaleidoscope:cookery/novice_chef
scoreboard players set @a[scores={k_stove_start=1..}] k_stove_start 0

#配方检测
function kaleidoscope:cookery/stove/fry/recipe/init