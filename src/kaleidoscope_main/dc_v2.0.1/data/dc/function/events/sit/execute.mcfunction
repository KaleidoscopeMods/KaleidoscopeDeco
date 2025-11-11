tag @s add dc_sit_temp
execute if data storage dc events.temp.target.args.orient as @e[distance=..5,tag=dc_display] if score @s dc_uid = @e[distance=..5,limit=1,tag=dc_sit_temp] dc_uid run tp @a[tag=dc_click_temp,limit=1] @s
execute as @e[distance=..5,tag=dc_display] if score @s dc_uid = @e[distance=..5,limit=1,tag=dc_sit_temp] dc_uid run ride @a[tag=dc_click_temp,limit=1] mount @s
tag @s remove dc_sit_temp