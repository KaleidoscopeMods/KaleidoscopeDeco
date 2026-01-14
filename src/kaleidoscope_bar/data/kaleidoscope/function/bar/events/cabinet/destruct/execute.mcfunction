execute unless data entity @s data.cabinet[0] run return fail
execute at @s run summon item ~ ~ ~ {Tags:["kaleidoscope_cabinet_item"],Item:{id:"stone",count:1}}
data modify entity @n[tag=kaleidoscope_cabinet_item] Item set from entity @s data.cabinet[0]
tag @n[tag=kaleidoscope_cabinet_item] remove kaleidoscope_cabinet_item
data remove entity @s data.cabinet[0]

execute unless data entity @s data.cabinet[0] run return fail
execute at @s run summon item ~ ~ ~ {Tags:["kaleidoscope_cabinet_item"],Item:{id:"stone",count:1}}
data modify entity @n[tag=kaleidoscope_cabinet_item] Item set from entity @s data.cabinet[0]
tag @n[tag=kaleidoscope_cabinet_item] remove kaleidoscope_cabinet_item
data remove entity @s data.cabinet[0]