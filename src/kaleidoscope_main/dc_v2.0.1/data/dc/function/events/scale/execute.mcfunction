#args requried:scale(缩放后倍数0.1~10)

#不是我喜欢的类型，直接拒绝
execute if entity @s[tag=dc_type_fixed] run return run function dc:exception/events/scale/fixed
execute if entity @s[tag=dc_type_light] run return run function dc:exception/events/scale/light

execute store result score #scale_prev dc_temp run data get entity @s data.prop.scale 10000
execute store result score #scale_var dc_temp run data get storage dc events.temp.target.args.scale 10000

scoreboard players operation #scale_prev dc_temp += #scale_var dc_temp
#范围超限处理
execute unless score #scale_prev dc_temp matches 1000..100000 run return 0

#计算交互实体宽度

execute store result score #scale_width dc_temp run data get entity @s data.prop.interactsize.width 1000
execute store result score #scale_height dc_temp run data get entity @s data.prop.interactsize.height 1000

execute store result score #scale_y dc_temp run data get entity @s data.prop.modsize[1] 1000


scoreboard players operation #scale_width dc_temp *= #scale_prev dc_temp
scoreboard players operation #scale_height dc_temp *= #scale_prev dc_temp
scoreboard players operation #scale_y dc_temp *= #scale_prev dc_temp

execute if score #scale_width dc_temp matches ..1000000 run return 0
execute if score #scale_height dc_temp matches ..1000000 run return 0
execute unless score #scale_y dc_temp matches ..100000000 run return 0

execute store result entity @s data.prop.scale float 0.0001 run scoreboard players get #scale_prev dc_temp

function dc:events/_update/execute