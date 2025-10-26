#args(optional): particle,sound,item

#粒子和音效
function dc:events/_general/particle with storage dc events.temp.target.args
function dc:events/_general/sound with storage dc events.temp.target.args

tag @s add dc_destruct
#特殊类型
execute if entity @s[tag=dc_type_fixed] run function dc:events/destruct/extra/fixed
execute if entity @s[tag=dc_type_hitbox] run function dc:events/destruct/extra/hitbox
execute if entity @s[tag=dc_type_light] run function dc:events/destruct/extra/light

#展示实体清除
execute as @e[distance=..5,tag=dc_display] if score @s dc_uid = @e[limit=1,tag=dc_destruct,sort=nearest] dc_uid run tag @s add dc_display_clear

execute if data storage dc events.temp.target.args.item if entity @a[tag=dc_click_temp,gamemode=!creative] run function dc:events/destruct/item
kill @e[tag=dc_display_clear]

#交互实体：延迟4t清除
execute as @e[distance=..5,tag=dc_interaction] if score @s dc_uid = @e[limit=1,tag=dc_destruct,sort=nearest] dc_uid run tag @s add dc_interaction_clear

schedule function dc:events/destruct/delay 4t

#清除自身
kill @s