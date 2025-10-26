#遍历匹配配方

#截断
execute if score @s k_stove_fry_recipe_flag matches 1 run return 0

$data modify storage kaleidoscope_temp cookery.fry.recipe set value $(value)

#首先匹配数量
execute store result score #temp k_stove_fry_recipe_count_overall run data get storage kaleidoscope_temp cookery.fry.recipe.count
execute unless score #temp k_stove_fry_recipe_count_overall = @s k_stove_fry_recipe_count_overall run return 0

#匹配当前配方原料
scoreboard players set #temp k_stove_fry_recipe_flag 0
function lay:macro/list/init {list:"storage kaleidoscope_temp cookery.fry.recipe.recipe",func:"kaleidoscope:cookery/stove/fry/recipe/check_"}

#成功匹配，设置配方id和时间
execute if score #temp k_stove_fry_recipe_flag matches 0 run data modify entity @s data.recipe set from storage kaleidoscope_temp cookery.fry.recipe.id

execute if score #temp k_stove_fry_recipe_flag matches 0 if data storage kaleidoscope_temp cookery.fry.recipe.time run data modify entity @s data.time set from storage kaleidoscope_temp cookery.fry.recipe.time
execute if score #temp k_stove_fry_recipe_flag matches 0 unless data storage kaleidoscope_temp cookery.fry.recipe.time run data modify entity @s data.time set value 300

execute if score #temp k_stove_fry_recipe_flag matches 0 if data storage kaleidoscope_temp cookery.fry.recipe.need_bowl run data modify entity @s data.need_bowl set from storage kaleidoscope_temp cookery.fry.recipe.need_bowl
execute if score #temp k_stove_fry_recipe_flag matches 0 unless data storage kaleidoscope_temp cookery.fry.recipe.need_bowl run data modify entity @s data.need_bowl set value 1b

execute if score #temp k_stove_fry_recipe_flag matches 0 run scoreboard players set @s k_stove_fry_recipe_flag 1