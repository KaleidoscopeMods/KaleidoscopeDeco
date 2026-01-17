#arg required:(string) index
#arg optional:(string) func
#检查是否存在

$execute unless data storage dc:index storage."$(index)" run scoreboard players set @s dc_exception 1

execute if score @s dc_exception matches 1 run return run function dc:exception/events/trans/not_exist with storage dc events.temp.target.args

#检查类型是否相同
data modify storage dc:temp trans_check set value {type0:"regular",type1:"regular",compare:"regular"}
data modify storage dc:temp trans_check.type0 set from entity @s data.type
data modify storage dc:temp trans_check.compare set from entity @s data.type
$data modify storage dc:temp trans_check.type1 set from storage dc:index storage."$(index)".type
execute store result score #temp dc_temp run data modify storage dc:temp trans_check.compare set from storage dc:temp trans_check.type1
execute if score #temp dc_temp matches 1 run scoreboard players set @s dc_exception 2

execute if score @s dc_exception matches 2 run data modify storage dc:temp trans_check.index set from storage dc events.temp.target.args.index
execute if score @s dc_exception matches 2 run return run function dc:exception/events/trans/type_dismatch with storage dc:temp trans_check


#执行
tag @s add dc_trans_pivot
scoreboard players operation $tempid dc_temp = @s dc_uid
execute as @e[distance=..5,tag=dc_display] if score @s dc_uid = $tempid dc_temp run tag @s add dc_trans_display
execute as @e[distance=..5,tag=dc_interaction] if score @s dc_uid = $tempid dc_temp run tag @s add dc_trans_interaction

## 保护原有参数
data modify storage dc:temp trans.args set value {}
data modify storage dc:temp trans.args set from storage dc events.temp.target.args


## 调用更新模块执行转换操作
$execute if score @s dc_exception matches 0 run data modify entity @s data.index set value "$(index)"
execute if score @s dc_exception matches 0 run function dc:events/_update/execute

## 还原参数
data modify storage dc events.temp.target.args set from storage dc:temp trans.args

execute if score @s dc_exception matches 0 if data storage dc events.temp.target.args.func run function dc:events/trans/func with storage dc events.temp.target.args
tag @e remove dc_trans_pivot
tag @e remove dc_trans_display
tag @e remove dc_trans_interaction

