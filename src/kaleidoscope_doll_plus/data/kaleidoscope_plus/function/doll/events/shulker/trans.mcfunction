tag @s remove kplus_shulker
tag @s remove kplus_tick
playsound entity.shulker.open block @a ~ ~ ~

particle end_rod ~ ~ ~ 0.5 0.5 0.5 0 5

data modify storage dc events.temp.target.args set value {index:"doll_11"}
function dc:events/trans/execute with storage dc events.temp.target.args
#清除临时设定的arg，防止因为修改了arg导致被判定两次
data remove storage dc events.temp.target.args