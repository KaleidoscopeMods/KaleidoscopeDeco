playsound block.grass.place block @a

#清除手上物品
execute as @a[limit=1,sort=nearest,tag=dc_click_temp] store result score @s kaleidoscope_clear run data get entity @s SelectedItem.count
scoreboard players remove @a[limit=1,sort=nearest,tag=dc_click_temp] kaleidoscope_clear 1
execute as @a[limit=1,sort=nearest,tag=dc_click_temp,gamemode=!creative] run item modify entity @s weapon.mainhand kaleidoscope:clear

