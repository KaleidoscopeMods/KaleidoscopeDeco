#增加一个骑方块展示实体的潜影贝实体，后面和regular相同
summon marker ~ ~ ~ {Tags:["dc_pivot","dc_pivot_temp"]}
summon item_display ~ ~ ~ {Tags:["dc_display","dc_display_temp"]}
summon interaction ~ ~ ~ {Tags:["dc_interaction","dc_interaction_temp"],response:1b,attack:{player:[I;0,0,0,0],timestamp:0L},interaction:{player:[I;0,0,0,0],timestamp:0L}}
summon block_display ~ 320 ~ {Tags:["dc_hitbox","dc_hitbox_temp"],Passengers:[{id:"shulker",NoAI:1b,AttachFace:0b,Peek:0b,Silent:1b,DeathLootTable:"dc:empty",Invulnerable:1b,active_effects:[{id:"invisibility",show_particles:false,duration:-1,amplifier:0}]}]}
#active_effects:[{id:"invisibility",show_particles:false,duration:-1,amplifier:0}]

function dc:construct/summon/public

#hitbox
execute unless data entity @s data.extra_data.offset run data modify entity @s data.extra_data.offset set value 0f
execute unless data entity @s data.extra_data.width run data modify entity @s data.extra_data.width set value 1f

scoreboard players operation @n[tag=dc_hitbox_temp] dc_uid = $uid dc_uid
execute as @n[type=block_display,tag=dc_hitbox_temp] run function dc:construct/summon/hitbox_prop with entity @n[tag=dc_place] data.extra_data

#类型标记
tag @n[tag=dc_pivot_temp] add dc_type_hitbox

tag @e remove dc_pivot_temp
tag @e remove dc_display_temp
tag @e remove dc_interaction_temp
tag @e remove dc_hitbox_temp
scoreboard players add $uid dc_uid 1
