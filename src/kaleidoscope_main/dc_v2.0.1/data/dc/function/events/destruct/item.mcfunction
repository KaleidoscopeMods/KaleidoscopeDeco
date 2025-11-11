loot spawn ~ ~ ~ loot dc:summon
execute as @e[type=item,distance=..5,sort=nearest,limit=1,nbt={Item:{components:{"minecraft:entity_data":{data:{test:1b}}}}}] run tag @s add dc_item_temp
data remove entity @e[type=item,distance=..5,sort=nearest,limit=1,tag=dc_item_temp] Item.components."minecraft:entity_data".data.test

data modify entity @e[type=item,distance=..5,sort=nearest,limit=1,tag=dc_item_temp] Item.components."minecraft:entity_data".data.index set from entity @s data.index

#继承item属性
execute if data entity @s data.loot_table unless data storage dc {events:{temp:{target:{args:{item:{mode:"replace"}}}}}} unless data storage dc {events:{temp:{target:{args:{item:{mode:"inherit"}}}}}} run function dc:events/destruct/loot_table with entity @s data
execute if data entity @s data.item unless data storage dc {events:{temp:{target:{args:{item:{mode:"replace"}}}}}} unless data storage dc {events:{temp:{target:{args:{item:{mode:"inherit"}}}}}} run data modify entity @e[type=item,distance=..5,sort=nearest,limit=1,tag=dc_item_temp] Item merge from entity @s data.item

#继承展示实体属性
execute if data storage dc {events:{temp:{target:{args:{item:{mode:"inherit"}}}}}} run data modify entity @e[type=item,distance=..5,sort=nearest,limit=1,tag=dc_item_temp] Item merge from entity @e[tag=dc_display_clear,limit=1] item
execute if data storage dc {events:{temp:{target:{args:{item:{mode:"inherit"}}}}}} run data modify entity @e[type=item,distance=..5,sort=nearest,limit=1,tag=dc_item_temp] Item.components."minecraft:entity_data".data.inheritance.item merge from entity @e[tag=dc_display_clear,limit=1] item

#追加属性
execute if data storage dc events.temp.target.args.item.loot_table run function dc:events/destruct/loot_table with storage dc events.temp.target.args.item
execute if data storage dc events.temp.target.args.item.item run function dc:events/destruct/item_item

