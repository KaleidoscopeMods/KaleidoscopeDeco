execute as @e[type=text_display,tag=k_board_text] if score @s dc_uid = @n[tag=dc_custom_pivot] dc_uid run tag @s add dc_custom_text

tp @n[tag=dc_custom_interaction] @s
execute at @n[tag=dc_custom_display] run rotate @n[tag=dc_custom_interaction] ~ ~
execute as @n[tag=dc_custom_interaction] at @s run tp ^ ^ ^-0.8
tp @n[tag=dc_custom_text] @n[tag=dc_custom_interaction]
data modify entity @n[tag=dc_custom_text] Rotation set from entity @n[tag=dc_custom_interaction] Rotation
execute as @n[tag=dc_custom_text] at @s run tp ^ ^-0.1 ^0.37



tag @n[tag=dc_custom_text] remove dc_custom_text