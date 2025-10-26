#以缩放完成后的交互实体数据为参照，仅用于更新完成后
execute as @e[distance=..5,tag=dc_interaction] if score @s dc_uid = $tempid dc_temp run tag @s add dc_adt_interaction
data modify storage dc:temp adt.angle set from entity @s data.Rotation[1]
data modify storage dc:temp adt.width set from entity @e[distance=..5,tag=dc_adt_interaction,limit=1] width
data modify storage dc:temp adt.height set from entity @e[distance=..5,tag=dc_adt_interaction,limit=1] height

data modify storage dc math.angle set from storage dc:temp adt.angle
function dc:math/sin

execute store result storage dc:temp adt.sin float 1 run scoreboard players get $sin dc_temp
execute store result storage dc:temp adt.cos float 1 run scoreboard players get $cos dc_temp


execute as @e[distance=..5,tag=dc_adt_interaction,limit=1] run function dc:events/_general/adaption_ with storage dc:temp adt

tag @e[distance=..5] remove dc_adt_interaction

