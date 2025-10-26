# 模块：生成雪球
# 以玩家为执行者

execute anchored eyes positioned 0 0 0 align xz positioned ^ ^ ^1 run tp @e[type=marker,tag=snowball_marker,limit=1] ~ ~ ~
data modify storage minecraft:snowball motion set value [0.0,0.0,0.0]
execute positioned 0 0 0 run data modify storage snowball motion set from entity @e[type=marker,distance=..5,tag=snowball_marker,limit=1] Pos

execute anchored eyes positioned ^ ^ ^ run function utils:summon_ with storage minecraft:snowball