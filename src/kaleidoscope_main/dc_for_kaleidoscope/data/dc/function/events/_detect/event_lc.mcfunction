scoreboard players set @s dc_click 0
execute if data storage dc {events:{execute:{item:{id:"minecraft:debug_stick"}}}} run data modify storage dc events.temp.target set value {event:"update"}
execute unless data storage dc {events:{execute:{item:{id:"minecraft:debug_stick"}}}} if data entity @s data.events.left_click.criteria run function lay:macro/list/init {list:"entity @s data.events.left_click.criteria",func:"dc:events/_detect/event_"}


execute unless data storage dc {events:{execute:{item:{id:"minecraft:debug_stick"}}}} if score @s dc_click matches 0 run data modify storage dc events.temp.target set from entity @s data.events.left_click.fallback
execute if score @s dc_click matches 0 run function dc:events/_detect/event_execute with storage dc events.temp.target