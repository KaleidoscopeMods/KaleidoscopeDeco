#放置一个光源方块，按需放置潜影贝碰撞箱
stopsound @a * entity.item_frame.place

setblock ~ ~ ~ light[level=15] destroy
function dc:construct/summon/light_level with entity @s data.extra_data

summon marker ~ ~ ~ {Tags:["dc_pivot","dc_pivot_temp"]}
summon item_display ~ ~ ~ {Tags:["dc_display","dc_display_temp"]}
summon interaction ~ ~ ~ {Tags:["dc_interaction","dc_interaction_temp"],response:1b,attack:{player:[I;0,0,0,0],timestamp:0L},interaction:{player:[I;0,0,0,0],timestamp:0L}}
summon block_display ~ ~ ~ {Tags:["dc_hitbox","dc_hitbox_temp"],Passengers:[{id:"shulker",NoAI:1b,AttachFace:0b,Peek:0b,Silent:1b,DeathLootTable:"dc:empty",Invulnerable:1b,active_effects:[{id:"invisibility",show_particles:false,duration:-1,amplifier:0}]}]}

function dc:construct/summon/public

#交互箱大小强制设为1*1
data modify entity @n[type=interaction,tag=dc_interaction_temp] height set value 1.01f
data modify entity @n[type=interaction,tag=dc_interaction_temp] width set value 1.01f

#hitbox
scoreboard players operation @n[tag=dc_hitbox_temp] dc_uid = $uid dc_uid
execute if data entity @s {data:{extra_data:{hitbox:1b}}} as @n[tag=dc_hitbox_temp] on passengers run attribute @s scale base set 0.99
execute unless data entity @s {data:{extra_data:{hitbox:1b}}} as @n[tag=dc_hitbox_temp] on passengers run attribute @s scale base set 0.01


#类型标记
tag @n[tag=dc_pivot_temp] add dc_type_light

tag @e remove dc_pivot_temp
tag @e remove dc_display_temp
tag @e remove dc_interaction_temp
scoreboard players add $uid dc_uid 1