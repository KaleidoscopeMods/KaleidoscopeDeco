#通用处理_前

#配方书
#页码处理
execute unless score @s k_stove_recipebook_page matches -2147483648..2147483647 run scoreboard players set @s k_stove_recipebook_page 1
#按钮按下处理
execute if entity @a[scores={k_stove_recipebook=1..},distance=..5] unless items block ~ ~ ~ container.19 *[custom_data~{kaleidoscope_stove_bg:1b},count=2] run function kaleidoscope:cookery/stove/generic/recipebook