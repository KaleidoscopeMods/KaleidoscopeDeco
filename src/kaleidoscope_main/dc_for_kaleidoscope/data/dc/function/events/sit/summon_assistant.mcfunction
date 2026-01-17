summon item_display ~ ~ ~ {Tags:["dc_sit_assistant","dc_sit_assistant_temp","dc_sit_assistant_selected"],teleport_duration:3}
data modify entity @n[tag=dc_sit_assistant_temp] Rotation[0] set from entity @s data.Rotation[0]
data modify entity @n[tag=dc_sit_assistant_temp] Rotation[0] set from entity @s data.Rotation[0]
scoreboard players operation @n[tag=dc_sit_assistant_temp] dc_uid = @s dc_uid
tag @n[tag=dc_sit_assistant_temp] remove dc_sit_assistant_temp