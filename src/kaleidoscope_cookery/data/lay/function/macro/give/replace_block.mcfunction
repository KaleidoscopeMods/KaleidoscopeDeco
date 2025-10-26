execute if score #temp lay_give matches 1 run return 0
scoreboard players set #temp lay_give 1
summon item_display ~ ~ ~ {Tags:["lay_give_temp"]}
execute as @e[distance=..1,tag=lay_give_temp,limit=1,type=item_display] run data modify entity @s item set from storage minecraft:lay Inventory.Item
$item replace block $(pos) $(slot) from entity @e[distance=..1,tag=lay_give_temp,limit=1,type=item_display] contents
kill @e[distance=..1,tag=lay_give_temp,type=item_display]