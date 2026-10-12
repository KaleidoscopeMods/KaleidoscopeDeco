# 分批预算：预算耗尽时把本次链的范围收缩到当前项，range 循环在本项后自然停止（剩余由下一 tick 的 continue 继续）
scoreboard players remove #install_budget lay_range 1
execute if score #install_budget lay_range matches ..0 run scoreboard players operation #max lay_range = #current lay_range
$data modify storage dc:index temp set from storage dc:index input.$(value)
data modify storage dc:temp template_stack set value []
data modify storage dc:temp outer_stack set value []
execute unless data storage dc:index temp.template run data modify storage dc:index temp.template set value "basic"
function dc:construct/template with storage dc:index temp
function dc:index/_install/check/main
$data modify storage dc:index storage.$(value) set from storage dc:index temp
$data modify storage dc:index storage.$(value).index set value "$(value)"
data remove storage dc:index keylist[0]
