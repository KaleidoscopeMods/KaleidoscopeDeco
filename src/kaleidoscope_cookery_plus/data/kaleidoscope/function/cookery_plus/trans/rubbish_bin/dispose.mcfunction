function kaleidoscope:cookery_plus/trans/rubbish_bin/close

particle smoke ~ ~0.9 ~ 0.1 0.1 0.1 0 20
playsound block.lava.extinguish block @a ~ ~ ~ 0.5
data modify entity @s data.rubbish_bin prepend from entity @n[tag=dc_click_temp] SelectedItem
execute store result score @s kaleidoscope_temp run data get entity @s data.rubbish_bin
execute if score @s kaleidoscope_temp matches 4.. run data remove entity @s data.rubbish_bin[-1]
item replace entity @a[tag=dc_click_temp] weapon.mainhand with air