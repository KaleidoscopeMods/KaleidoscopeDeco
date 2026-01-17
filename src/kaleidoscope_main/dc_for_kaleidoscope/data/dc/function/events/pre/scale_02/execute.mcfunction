#预制事件：缩放0.2倍（放大）
data modify storage dc events.temp.target.args set value {scale:0.2f}
function dc:events/scale/execute with storage dc events.temp.target.args
#清除临时设定的arg，防止因为修改了arg导致被判定两次
data remove storage dc events.temp.target.args