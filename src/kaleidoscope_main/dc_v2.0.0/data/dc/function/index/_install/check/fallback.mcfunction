execute if data storage dc:index temp.events.left_click.fallback
data modify storage dc:temp event set from storage dc:index temp.events.left_click.fallback
scoreboard players set #check dc_temp 0
function dc:index/_install/check/check_ with storage dc:temp event
execute if score #check dc_temp matches 0 run data modify storage dc:index temp.events.left_click.fallback set from storage dc:temp event

execute if data storage dc:index temp.events.right_click.fallback
data modify storage dc:temp event set from storage dc:index temp.events.right_click.fallback
scoreboard players set #check dc_temp 0
function dc:index/_install/check/check_ with storage dc:temp event
execute if score #check dc_temp matches 0 run data modify storage dc:index temp.events.right_click.fallback set from storage dc:temp event