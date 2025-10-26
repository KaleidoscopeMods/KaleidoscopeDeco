execute store result score #temp k_stove_recipebook if items entity @n[scores={k_stove_recipebook=1..}] player.cursor *[custom_data~{kaleidoscope_stove_bg:1b}]
scoreboard players set @a[scores={k_stove_recipebook=1..}] k_stove_recipebook 0

execute if score #temp k_stove_recipebook matches 1 run scoreboard players add @s k_stove_recipebook_page 1
execute unless score #temp k_stove_recipebook matches 1 run scoreboard players remove @s k_stove_recipebook_page 1

execute if score @s k_stove_recipebook_page matches 4.. run scoreboard players set @s k_stove_recipebook_page 1
execute if score @s k_stove_recipebook_page matches ..0 run scoreboard players set @s k_stove_recipebook_page 3