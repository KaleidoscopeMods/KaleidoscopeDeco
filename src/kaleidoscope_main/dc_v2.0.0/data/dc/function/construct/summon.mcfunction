#首先判断类型
execute if data entity @s {data:{type:"fixed"}} run return run function dc:construct/summon/fixed
execute if data entity @s {data:{type:"hitbox"}} run return run function dc:construct/summon/hitbox
execute if data entity @s {data:{type:"light"}} run return run function dc:construct/summon/light
function dc:construct/summon/regular
