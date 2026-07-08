#普通交互框
#as:temp pivot

scoreboard players operation @n[tag=dc_interaction_temp] dc_uid = $uid dc_uid
data modify entity @n[type=interaction,tag=dc_interaction_temp] height set from entity @s data.interactsize.height
data modify entity @n[type=interaction,tag=dc_interaction_temp] width set from entity @s data.interactsize.width
data modify entity @n[type=interaction,tag=dc_interaction_temp] Rotation set from entity @n[type=item_display,tag=dc_display_temp] Rotation