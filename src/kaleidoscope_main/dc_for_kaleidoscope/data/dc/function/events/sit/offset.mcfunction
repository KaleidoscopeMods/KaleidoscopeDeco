#find assistant
execute as @e[distance=..10,type=item_display,tag=dc_sit_assistant] if score @s dc_uid = @n[distance=..5,tag=dc_sit_temp] dc_uid run tag @s add dc_sit_assistant_selected
execute if entity @n[tag=dc_sit_assistant_selected] run tp @n[tag=dc_sit_assistant_selected] @s
execute unless entity @n[tag=dc_sit_assistant_selected] run function dc:events/sit/summon_assistant

#offset
data modify storage dc:temp sit.offset set value {x:0f,y:0f,z:0f}
data modify storage dc:temp sit.offset merge from storage dc events.temp.target.args.offset
execute as @n[tag=dc_sit_assistant_selected] at @s run function dc:events/sit/tp with storage dc:temp sit.offset

ride @a[tag=dc_click_temp,limit=1] mount @n[tag=dc_sit_assistant_selected]

tag @n[tag=dc_sit_assistant_selected] remove dc_sit_assistant_selected