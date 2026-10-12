# 误放物品救援（通用整理防护）
# 背景格中出现了不该在那里的物品时，先尝试交给最近玩家（光标为空），否则在原位弹出为掉落物
# 防止旧写法在"没有点击者"时直接覆盖、导致物品被删除
$execute as @a[distance=..12,sort=nearest,limit=1] unless items entity @s player.cursor * run return run item replace entity @s player.cursor from block ~ ~ ~ container.$(var)
$summon minecraft:item ~ ~1 ~ {Tags:["k_stove_recover_$(var)"],Item:{id:"minecraft:stone",count:1}}
$data modify entity @e[type=item,tag=k_stove_recover_$(var),sort=nearest,limit=1] Item set from block ~ ~ ~ Items[{Slot:$(var)b}]
$tag @e[type=item,tag=k_stove_recover_$(var),sort=nearest,limit=1] remove k_stove_recover_$(var)
