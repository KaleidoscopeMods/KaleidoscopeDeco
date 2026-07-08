#多交互箱/碰撞箱类型

#复杂碰撞箱支持
scoreboard players set #complex_interaction dc_temp 1
scoreboard players set #complex_hitbox dc_temp 1

#拒绝1.21.5以下的该类模型生成
execute if score $game_version dc_version matches ..4189 run return fail


summon marker ~ ~ ~ {Tags:["dc_pivot","dc_pivot_temp"]}
summon item_display ~ ~ ~ {Tags:["dc_display","dc_display_temp"]}
function dc:construct/summon/interaction/summon_complex
execute if data entity @s data.extra_data.hitbox run function dc:construct/summon/hitbox/summon_complex

function dc:construct/summon/public

#hitbox
execute if data entity @s data.extra_data.hitbox as @e[type=block_display,tag=dc_hitbox_temp] run function dc:construct/summon/hitbox/edit_complex



#类型标记
tag @n[tag=dc_pivot_temp] add dc_type_complex

tag @e remove dc_pivot_temp
tag @e remove dc_display_temp
tag @e remove dc_interaction_temp
tag @e remove dc_hitbox_temp
scoreboard players add $uid dc_uid 1
