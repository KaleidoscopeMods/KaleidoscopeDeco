#预制事件：水平移动+1像素（推）
data modify storage dc events.temp.target.args set value {type:"R",distance:0.0625f}
function dc:events/move/execute with storage dc events.temp.target.args
#清除临时设定的arg，防止因为修改了arg导致被判定两次
data remove storage dc events.temp.target.args