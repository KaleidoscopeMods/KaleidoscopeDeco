#寻找指定的实体
data modify storage dc events.rc.uuid set from entity @a[limit=1,tag=dc_click_temp] UUID

execute store result score @s dc_temp run data modify storage dc events.rc.uuid set from entity @s interaction.player

execute if score @s dc_temp matches 0 run tag @s add dc_rc_hit

execute if entity @s[tag=dc_rc_hit] run data modify entity @s interaction.player set value [I;0,0,0,0]

#传参
execute if entity @s[tag=dc_rc_hit] run data modify storage dc events.execute set value {"type":"right_click","item":{id:"minecraft:air"}}
execute if entity @s[tag=dc_rc_hit] if data entity @a[tag=dc_click_temp,limit=1] SelectedItem run data modify storage dc events.execute.item set from entity @a[tag=dc_click_temp,limit=1] SelectedItem


execute if entity @s[tag=dc_rc_hit] at @s as @e[distance=..1,tag=dc_pivot] if score @s dc_uid = @e[limit=1,tag=dc_rc_hit] dc_uid at @s run function dc:events/_detect/event_trigger

tag @s remove dc_rc_hit