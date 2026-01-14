#生成程序的公用部分
function dc:construct/summon/_stopsound
schedule function dc:construct/summon/_stopsound 1t
schedule function dc:construct/summon/_stopsound 0t

execute as @n[type=marker,tag=dc_pivot_temp] at @s run function dc:events/_update/upgrade

#display
scoreboard players operation @n[tag=dc_display_temp] dc_uid = $uid dc_uid
execute if data entity @s data.loot_table run data modify storage dc:temp construct.loot_table set from entity @s data.loot_table
execute if data entity @s data.loot_table as @n[type=item_display,tag=dc_display_temp] run function dc:construct/loot_table with storage dc:temp construct
execute if data entity @s data.item run data modify entity @n[type=item_display,tag=dc_display_temp] item merge from entity @s data.item

data modify entity @n[type=item_display,tag=dc_display_temp] item_display set from entity @s data.display
data modify entity @n[type=item_display,tag=dc_display_temp] transformation.scale set from entity @s data.modsize
execute as @n[type=item_display,tag=dc_display_temp] at @s run function dc:construct/display_offset
function dc:construct/facing

#interaction
scoreboard players operation @n[tag=dc_interaction_temp] dc_uid = $uid dc_uid
data modify entity @n[type=interaction,tag=dc_interaction_temp] height set from entity @s data.interactsize.height
data modify entity @n[type=interaction,tag=dc_interaction_temp] width set from entity @s data.interactsize.width
data modify entity @n[type=interaction,tag=dc_interaction_temp] Rotation set from entity @n[type=item_display,tag=dc_display_temp] Rotation

#pivot
scoreboard players operation @n[tag=dc_pivot_temp] dc_uid = $uid dc_uid
data modify entity @n[type=marker,tag=dc_pivot_temp] data.events merge from entity @s data.events
data modify entity @n[type=marker,tag=dc_pivot_temp] data.item set from entity @s data.item
data modify entity @n[type=marker,tag=dc_pivot_temp] data.loot_table set from entity @s data.loot_table
data modify entity @n[type=marker,tag=dc_pivot_temp] data.index set from entity @s data.index
data modify entity @n[type=marker,tag=dc_pivot_temp] data.Rotation set from entity @n[type=item_display,tag=dc_display_temp] Rotation
data modify entity @n[type=marker,tag=dc_pivot_temp] data.prop.modsize set from entity @s data.modsize
data modify entity @n[type=marker,tag=dc_pivot_temp] data.prop.interactsize set from entity @s data.interactsize
data modify entity @n[type=marker,tag=dc_pivot_temp] data.prop merge from entity @s data.prop
execute if data entity @s data.type run data modify entity @n[type=marker,tag=dc_pivot_temp] data.type set from entity @s data.type
execute unless data entity @s data.type run data modify entity @n[type=marker,tag=dc_pivot_temp] data.type set value "regular"
execute if data entity @s data.extra_data run data modify entity @n[type=marker,tag=dc_pivot_temp] data.extra_data set from entity @s data.extra_data



#prop
execute as @n[type=marker,tag=dc_pivot_temp] at @s store result entity @s data.prop.timestamp int 1 run time query gametime

#construct
execute as @n[type=marker,tag=dc_pivot_temp] if data entity @s data.events.construct run function lay:macro/list/init {list:"entity @s data.events.construct",func:"dc:construct/construct_event"}