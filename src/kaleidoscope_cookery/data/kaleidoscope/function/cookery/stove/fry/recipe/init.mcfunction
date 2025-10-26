#保存当前原料

summon villager ~ ~ ~ {Invulnerable:1b,Silent:1b,attributes:[{id:"scale",base:0.1}],Tags:["k_stove_recipe_temp"],NoAI:1b}
item replace entity @n[type=villager,tag=k_stove_recipe_temp] villager.0 from block ~ ~ ~ container.1
item replace entity @n[type=villager,tag=k_stove_recipe_temp] villager.1 from block ~ ~ ~ container.2
item replace entity @n[type=villager,tag=k_stove_recipe_temp] villager.2 from block ~ ~ ~ container.3
item replace entity @n[type=villager,tag=k_stove_recipe_temp] villager.3 from block ~ ~ ~ container.10
item replace entity @n[type=villager,tag=k_stove_recipe_temp] villager.4 from block ~ ~ ~ container.11
item replace entity @n[type=villager,tag=k_stove_recipe_temp] villager.5 from block ~ ~ ~ container.12

data modify entity @n[type=villager,tag=k_stove_recipe_temp] Inventory[0].count set value 1
data modify entity @n[type=villager,tag=k_stove_recipe_temp] Inventory[1].count set value 1
data modify entity @n[type=villager,tag=k_stove_recipe_temp] Inventory[2].count set value 1
data modify entity @n[type=villager,tag=k_stove_recipe_temp] Inventory[3].count set value 1
data modify entity @n[type=villager,tag=k_stove_recipe_temp] Inventory[4].count set value 1
data modify entity @n[type=villager,tag=k_stove_recipe_temp] Inventory[5].count set value 1

data modify storage kaleidoscope_temp cookery.fry.material set value []
data modify storage kaleidoscope_temp cookery.fry.material append from block ~ ~ ~ Items[{Slot:1b}]
data modify storage kaleidoscope_temp cookery.fry.material append from block ~ ~ ~ Items[{Slot:2b}]
data modify storage kaleidoscope_temp cookery.fry.material append from block ~ ~ ~ Items[{Slot:3b}]
data modify storage kaleidoscope_temp cookery.fry.material append from block ~ ~ ~ Items[{Slot:10b}]
data modify storage kaleidoscope_temp cookery.fry.material append from block ~ ~ ~ Items[{Slot:11b}]
data modify storage kaleidoscope_temp cookery.fry.material append from block ~ ~ ~ Items[{Slot:12b}]

execute store result score @s k_stove_fry_recipe_count_overall run data get storage kaleidoscope_temp cookery.fry.material

scoreboard players set @s k_stove_fry_recipe_flag 0

#遍历列表检测
function lay:macro/list/init {list:"storage kaleidoscope cookery.recipes",func:"kaleidoscope:cookery/stove/fry/recipe/check"}
#未匹配，默认迷之炒菜
execute if score @s k_stove_fry_recipe_flag matches 0 run data modify entity @s data.recipe set value "mysterious"
execute if score @s k_stove_fry_recipe_flag matches 0 run data modify entity @s data.time set value 300
execute if score @s k_stove_fry_recipe_flag matches 0 run data modify entity @s data.need_bowl set value 1b

#清理原料
function kaleidoscope:cookery/stove/fry/recipe/clear
kill @e[distance=..0.5,type=villager,tag=k_stove_recipe_temp]