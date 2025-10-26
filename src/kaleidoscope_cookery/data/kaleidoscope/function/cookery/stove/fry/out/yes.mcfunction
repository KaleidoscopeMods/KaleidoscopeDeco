#返还物品

execute if items block ~ ~ ~ container.15 * at @a[sort=nearest,limit=1,scores={k_stoveerror=1..}] run summon item ~ ~ ~ {Tags:[k_stove_item],Item:{id:"stone",count:1}}
data modify entity @e[type=item,tag=k_stove_item,limit=1] Item set from block ~ ~ ~ Items[{Slot:15b}]
tag @e[type=item,tag=k_stove_item,limit=1] remove k_stove_item
item replace block ~ ~ ~ container.15 with firework_star[item_model="kaleidoscope_cookery:stove/empty",tooltip_display={"hide_tooltip":true},custom_data={kaleidoscope_stove_bg:1b}]

#出锅
execute if score @s k_stove_fry_status matches 1..2 run function kaleidoscope:cookery/stove/fry/out/meal with entity @s data
execute if score @s k_stove_fry_status matches 3 run loot replace entity @a[scores={k_stove_out=1..},distance=..5,limit=1] player.cursor loot kaleidoscope_meals:overburnt

data remove entity @s data.recipe

#重置计时器
data remove entity @s data.timer
scoreboard players set @s k_stove_fry_timer 0


#自动关火
execute if entity @s[tag=k_stove_fry_start] run function kaleidoscope:cookery/stove/fry/off_button

