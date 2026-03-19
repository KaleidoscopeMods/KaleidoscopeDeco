#直接套用trans事件代码
#从sh回调，as:display
data modify storage dc events.temp.target.args set value {index:"kaleidoscope_lab:leave_me_alone_box"}

scoreboard players operation #temp dc_uid = @s dc_uid

execute as @e[type=marker,distance=..10,tag=dc_pivot] if score @s dc_uid = #temp dc_uid run function dc:events/trans/execute with storage dc events.temp.target.args
#清除临时设定的arg，防止因为修改了arg导致被判定两次
data remove storage dc events.temp.target.args
tag @s remove k_lmabox_tick
