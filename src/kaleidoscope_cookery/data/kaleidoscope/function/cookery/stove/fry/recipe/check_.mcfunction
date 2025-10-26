#遍历匹配单个配方的原料

#截断
execute if score #temp k_stove_fry_recipe_flag matches 1 run return 0

$data modify storage kaleidoscope_temp cookery.fry.recipe_one set value $(value)

#匹配物品和数量
execute store result score #temp k_stove_fry_recipe_count run data get storage kaleidoscope_temp cookery.fry.recipe_one.count
execute unless data storage kaleidoscope_temp cookery.fry.recipe_one.item.predicate run data modify storage kaleidoscope_temp cookery.fry.recipe_one.item.predicate set value ""
execute store result score @s k_stove_fry_recipe_count run function kaleidoscope:cookery/stove/fry/recipe/check_item with storage kaleidoscope_temp cookery.fry.recipe_one.item

execute unless score #temp k_stove_fry_recipe_count = @s k_stove_fry_recipe_count run scoreboard players set #temp k_stove_fry_recipe_flag 1
