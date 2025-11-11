#预制事件：水平旋转22.5度（顺时针）
data modify storage dc events.temp.target.args set value {type:"H",angle:22.5f}
function dc:events/rotate/execute with storage dc events.temp.target.args
#清除临时设定的arg，防止因为修改了arg导致被判定两次
data remove storage dc events.temp.target.args