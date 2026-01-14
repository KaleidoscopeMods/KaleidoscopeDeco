#检查是否满了
execute store result score @s kaleidoscope_temp run data get entity @s data.cabinet

execute if score @s kaleidoscope_temp matches 2.. run return run playsound entity.villager.no block @a ~ ~ ~ 0.5 0.9

data modify entity @s data.cabinet append from entity @n[tag=dc_click_temp] SelectedItem
execute as @n[type=player,tag=dc_click_temp,gamemode=!creative] run item modify entity @s weapon.mainhand kaleidoscope:clear

playsound block.lantern.place player @a ~ ~ ~ 0.3 1.2
playsound block.glass.place player @a ~ ~ ~ 0.5

function kaleidoscope:bar/events/cabinet/sync/execute