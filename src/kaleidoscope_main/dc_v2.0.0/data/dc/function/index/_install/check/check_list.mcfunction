$data modify storage dc:temp event set value $(value)
execute unless data storage dc:temp event.event run return 0
scoreboard players set #check dc_temp 0
function dc:index/_install/check/check_ with storage dc:temp event
execute if score #check dc_temp matches 0 run data modify storage dc:temp events append from storage dc:temp event
