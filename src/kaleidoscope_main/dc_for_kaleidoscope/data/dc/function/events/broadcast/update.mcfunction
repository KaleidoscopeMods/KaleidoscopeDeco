#检测自身是否属于方块类型
execute unless data entity @s {data:{type:"fixed"}} unless data entity @s {data:{type:"light"}} run return fail

#调用更新模块（下一刻执行）
tag @s add dc_broadcast_update
schedule function dc:events/broadcast/schedule 1t