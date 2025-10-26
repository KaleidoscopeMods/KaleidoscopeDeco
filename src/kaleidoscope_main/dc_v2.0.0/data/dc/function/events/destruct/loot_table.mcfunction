#战利品表模式
summon item_display ~ ~ ~ {Tags:["dc_item_loot_temp"]}
$loot replace entity @e[type=item_display,distance=..5,sort=nearest,limit=1,tag=dc_item_loot_temp] contents loot $(loot_table)

data modify entity @e[type=item,distance=..5,sort=nearest,limit=1,tag=dc_item_temp] Item.id set from entity @e[type=item_display,distance=..5,sort=nearest,limit=1,tag=dc_item_loot_temp] item.id
data modify entity @e[type=item,distance=..5,sort=nearest,limit=1,tag=dc_item_temp] Item.count set from entity @e[type=item_display,distance=..5,sort=nearest,limit=1,tag=dc_item_loot_temp] item.count
data modify entity @e[type=item,distance=..5,sort=nearest,limit=1,tag=dc_item_temp] Item.components merge from entity @e[type=item_display,distance=..5,sort=nearest,limit=1,tag=dc_item_loot_temp] item.components

kill @e[tag=dc_item_loot_temp]