#放置一个屏障，后面和regular相同
setblock ~ ~ ~ barrier
summon marker ~ ~ ~ {Tags:["dc_pivot","dc_pivot_temp"]}
summon item_display ~ ~ ~ {Tags:["dc_display","dc_display_temp"]}
summon interaction ~ ~ ~ {Tags:["dc_interaction","dc_interaction_temp"],response:1b,attack:{player:[I;0,0,0,0],timestamp:0L},interaction:{player:[I;0,0,0,0],timestamp:0L}}

function dc:construct/summon/public

#交互箱大小强制设为1*1
data modify entity @n[type=interaction,tag=dc_interaction_temp] height set value 1.01f
data modify entity @n[type=interaction,tag=dc_interaction_temp] width set value 1.01f

#类型标记
tag @n[tag=dc_pivot_temp] add dc_type_fixed

tag @e remove dc_pivot_temp
tag @e remove dc_display_temp
tag @e remove dc_interaction_temp
scoreboard players add $uid dc_uid 1
