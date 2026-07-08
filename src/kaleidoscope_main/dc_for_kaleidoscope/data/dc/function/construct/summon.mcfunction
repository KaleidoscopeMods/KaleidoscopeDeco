scoreboard players set #complex_interaction dc_temp 0
scoreboard players set #complex_hitbox dc_temp 0

#首先判断类型
execute if data entity @s {data:{type:"fixed"}} run return run function dc:construct/summon/fixed
execute if data entity @s {data:{type:"hitbox"}} run return run function dc:construct/summon/hitbox
execute if data entity @s {data:{type:"light"}} run return run function dc:construct/summon/light
execute if data entity @s {data:{type:"complex"}} run return run function dc:construct/summon/complex
function dc:construct/summon/regular
