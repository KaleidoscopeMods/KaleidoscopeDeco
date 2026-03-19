#as:entity
#平时不读取data，只做计分板计算

function sh:_/store

scoreboard players add @s sh_frame 1
#若播放完成，根据type决定行为

execute unless score @s sh_frame >= @s sh_max_frame run return 0

#type代表的结束类型：0或其他数值-返回到回落映射，1-循环，2-停在最后一帧
execute if score @s sh_type matches 1 run scoreboard players set @s sh_frame 0
execute if score @s sh_type matches 2 run tag @s remove sh_animation
execute unless score @s sh_type matches 1..2 run function sh:end

#回调函数
function sh:_/function with entity @s data.sh_animation