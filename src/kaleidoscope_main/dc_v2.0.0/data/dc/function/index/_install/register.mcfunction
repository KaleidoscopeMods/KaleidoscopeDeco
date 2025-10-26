$data modify storage dc:index temp set from storage dc:index input.$(value)
data modify storage dc:temp template_stack set value []
data modify storage dc:temp outer_stack set value []
execute unless data storage dc:index temp.template run data modify storage dc:index temp.template set value "basic"
function dc:construct/template with storage dc:index temp
function dc:index/_install/check/main
$data modify storage dc:index storage.$(value) set from storage dc:index temp
$data modify storage dc:index storage.$(value).index set value "$(value)"
data remove storage dc:index keylist[0]