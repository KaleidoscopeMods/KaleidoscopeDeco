#args requried:type(X|Y|Z|R|V),distance(-2f~2f)
#设置为“R”代表相对玩家水平移动，V为相对玩家垂直移动

#不是我喜欢的类型，直接拒绝
execute if entity @s[tag=dc_type_fixed] run return run function dc:exception/events/move/fixed
execute if entity @s[tag=dc_type_light] run return run function dc:exception/events/move/light

#init
data modify storage dc events.move set value {type:0,distance:0f}

execute if data storage dc {events:{temp:{target:{args:{type:"X"}}}}} run data modify storage dc events.move.type set value 0
execute if data storage dc {events:{temp:{target:{args:{type:"Y"}}}}} run data modify storage dc events.move.type set value 1
execute if data storage dc {events:{temp:{target:{args:{type:"Z"}}}}} run data modify storage dc events.move.type set value 2

execute unless data storage dc {events:{temp:{target:{args:{type:"R"}}}}} unless data storage dc {events:{temp:{target:{args:{type:"V"}}}}} run data modify storage dc events.move.distance set from storage dc events.temp.target.args.distance
execute if data storage dc {events:{temp:{target:{args:{type:"R"}}}}} run function dc:events/move/move_r


execute if data storage dc {events:{temp:{target:{args:{type:"V"}}}}} run function dc:events/move/move_v

function dc:events/move/move_a with storage dc events.move
