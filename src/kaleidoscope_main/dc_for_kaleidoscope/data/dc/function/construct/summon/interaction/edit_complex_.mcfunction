#多交互框
#as:temp pivot

scoreboard players operation @s dc_uid = $uid dc_uid
data modify entity @s height set from entity @s data.interact_data.height
data modify entity @s width set from entity @s data.interact_data.width
data modify entity @s Rotation set from entity @n[type=item_display,tag=dc_display_temp] Rotation

#pos
function dc:construct/summon/interaction/edit_complex_pos with entity @s data.interact_data.offset