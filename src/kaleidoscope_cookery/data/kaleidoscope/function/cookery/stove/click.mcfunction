#按钮处理
execute store result score @s k_stove_start run clear @s minecraft:firework_star[custom_data~{kaleidoscope_stove_start:1b}] 0
execute store result score @s k_stove_out run clear @s minecraft:firework_star[custom_data~{kaleidoscope_stove_out:1b}] 0
execute store result score @s k_stove_discard run clear @s minecraft:firework_star[custom_data~{kaleidoscope_stove_discard:1b}] 0
execute store result score @s k_stove_stir run clear @s minecraft:firework_star[custom_data~{kaleidoscope_stove_stir:1b}] 0
execute store result score @s k_stove_recipebook run clear @s minecraft:firework_star[custom_data~{kaleidoscope_stove_recipe:1b}] 0
execute store result score @s k_stove_pot_vision_trigger run clear @s minecraft:firework_star[custom_data~{kaleidoscope_stove_vision:1b}] 0

execute if score @s k_stove_start matches 1.. run playsound block.wooden_button.click_on player @s
execute if score @s k_stove_out matches 1.. run playsound block.wooden_button.click_on player @s
execute if score @s k_stove_discard matches 1.. run playsound item.bucket.fill_powder_snow player @s
execute if score @s k_stove_stir matches 1.. run playsound block.vault.close_shutter player @s ~ ~ ~ 1 1.1
execute if score @s k_stove_recipebook matches 1.. run playsound item.book.page_turn player @s
execute if score @s k_stove_pot_vision_trigger matches 1.. run playsound block.wooden_button.click_on player @s