execute if score @s dc_click matches 1 run return 0

data modify storage dc events.temp.item set from storage dc events.execute.item
$data modify storage dc events.temp.target set value $(value)

#item
scoreboard players set #temp2 dc_click 0
execute as @a[tag=dc_click_temp] if data storage dc events.temp.target.item.id run function dc:events/_detect/event__ with storage dc events.temp.target.item
execute as @a[tag=dc_click_temp] unless data storage dc events.temp.target.item.id run scoreboard players set #temp2 dc_click 1
#components
scoreboard players set #temp dc_click 0
execute if data storage dc events.temp.target.item.components store result score #temp dc_click run data modify storage dc events.temp.item.components merge from storage dc events.temp.target.item.components
#predicate
scoreboard players set #temp3 dc_click 1
execute as @a[tag=dc_click_temp] if data storage dc events.temp.target.predicate run function dc:events/_detect/event_predicate with storage dc events.temp.target


execute if score #temp2 dc_click matches 1 if score #temp dc_click matches 0 if score #temp3 dc_click matches 1 run scoreboard players set @s dc_click 1
scoreboard players set @s dc_exception 0
execute if score @s dc_click matches 1 run function dc:events/_detect/event_execute with storage dc events.temp.target