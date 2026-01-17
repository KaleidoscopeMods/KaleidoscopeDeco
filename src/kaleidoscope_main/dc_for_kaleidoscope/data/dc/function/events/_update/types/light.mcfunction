setblock ~ ~ ~ light[level=15]
function dc:construct/summon/light_level with storage dc events.update.extra_data

execute if data storage dc {events:{update:{extra_data:{hitbox:1b}}}} as @n[tag=dc_edit_hitbox] on passengers run attribute @s scale base set 0.99
execute unless data storage dc {events:{update:{extra_data:{hitbox:1b}}}} as @n[tag=dc_edit_hitbox] on passengers run attribute @s scale base set 0.01