tag @s add dc_edit_pivot
scoreboard players operation $tempid dc_temp = @s dc_uid
execute as @e[distance=..5,tag=dc_display] if score @s dc_uid = $tempid dc_temp run tag @s add dc_edit_display
execute as @e[distance=..5,tag=dc_interaction] if score @s dc_uid = $tempid dc_temp run tag @s add dc_edit_interaction
execute as @e[distance=..5,tag=dc_hitbox] if score @s dc_uid = $tempid dc_temp run tag @s add dc_edit_hitbox
#更新数据
execute if data storage dc events.update.loot_table run data modify storage dc:temp construct.loot_table set from storage dc events.update.loot_table
execute if data storage dc events.update.loot_table as @n[type=item_display,tag=dc_edit_display] run function dc:construct/loot_table with storage dc:temp construct
execute if data storage dc events.update.item run data modify entity @n[type=item_display,tag=dc_edit_display] item merge from storage dc events.update.item
execute unless data storage dc events.update.item as @n[type=item_display,tag=dc_edit_display] run function dc:construct/loot_table with storage dc events.update
data modify entity @n[type=item_display,tag=dc_edit_display] item_display set from storage dc events.update.display
data modify entity @n[type=item_display,tag=dc_edit_display] transformation.scale set from storage dc events.update.modsize
execute as @n[type=item_display,tag=dc_edit_display] run tp @s @n[type=marker,tag=dc_edit_pivot]
execute as @n[type=item_display,tag=dc_edit_display] at @s run function dc:construct/display_offset
data modify entity @n[type=item_display,tag=dc_edit_display] Rotation set from entity @n[type=marker,tag=dc_edit_pivot] data.Rotation

data modify entity @n[type=interaction,tag=dc_edit_interaction] height set from storage dc events.update.interactsize.height
data modify entity @n[type=interaction,tag=dc_edit_interaction] width set from storage dc events.update.interactsize.width

execute if entity @s[tag=dc_type_hitbox] run function dc:events/_update/types/hitbox
execute if entity @s[tag=dc_type_light] run function dc:events/_update/types/light

data modify entity @n[type=marker,tag=dc_edit_pivot] data.events set from storage dc events.update.events
data modify entity @n[type=marker,tag=dc_edit_pivot] data.item set from storage dc events.update.item
data modify entity @n[type=marker,tag=dc_edit_pivot] data.loot_table set from storage dc events.update.loot_table
execute if data storage dc events.update.extra_data run data modify entity @n[type=marker,tag=dc_edit_pivot] data.extra_data set from storage dc events.update.extra_data

data modify entity @n[type=marker,tag=dc_edit_pivot] data.prop merge from storage dc events.update.prop
data modify entity @n[type=marker,tag=dc_edit_pivot] data.prop.modsize merge from storage dc events.update.modsize
data modify entity @n[type=marker,tag=dc_edit_pivot] data.prop.interactsize merge from storage dc events.update.interactsize
data modify entity @n[type=marker,tag=dc_edit_pivot] data.prop.extra_data set from storage dc events.update.extra_data



#缩放
execute unless data storage dc {events:{update:{type:"fixed"}}} unless data storage dc {events:{update:{type:"light"}}} run function dc:events/_general/zoom

#高度适应
execute if data entity @s {data:{prop:{height_adaption:1b}}} run function dc:events/_general/adaption

#事件执行
execute as @n[type=marker,tag=dc_edit_pivot] if data entity @s data.events.update run function lay:macro/list/init {list:"entity @s data.events.update",func:"dc:events/_update/update_event"}



tag @e remove dc_edit_pivot
tag @e remove dc_edit_display
tag @e remove dc_edit_interaction
