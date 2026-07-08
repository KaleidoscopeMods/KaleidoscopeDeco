execute if score #temp lay_give matches 1 run return 0
scoreboard players set #temp lay_give 1
$loot replace entity $(entity) $(slot) loot {pools:[{rolls:1,entries:[{type:"item",name:"$(id)",functions:[{function:"set_components",components:$(components)},{function:"set_count",count:$(count)}]}]}]}