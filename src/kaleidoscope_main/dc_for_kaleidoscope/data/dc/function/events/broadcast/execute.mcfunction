#args:none
#仅fixed或light可用
execute unless data entity @s {data:{type:"fixed"}} unless data entity @s {data:{type:"light"}} run return fail

#向周围6格的自定义模型广播更新模型信号
#用于连接状态的同步
execute positioned ~1 ~ ~ as @e[type=marker,distance=..0.1,tag=dc_pivot] at @s run function dc:events/broadcast/update
execute positioned ~-1 ~ ~ as @e[type=marker,distance=..0.1,tag=dc_pivot] at @s run function dc:events/broadcast/update
execute positioned ~ ~ ~1 as @e[type=marker,distance=..0.1,tag=dc_pivot] at @s run function dc:events/broadcast/update
execute positioned ~ ~ ~-1 as @e[type=marker,distance=..0.1,tag=dc_pivot] at @s run function dc:events/broadcast/update
execute positioned ~ ~1 ~ as @e[type=marker,distance=..0.1,tag=dc_pivot] at @s run function dc:events/broadcast/update
execute positioned ~ ~-1 ~ as @e[type=marker,distance=..0.1,tag=dc_pivot] at @s run function dc:events/broadcast/update