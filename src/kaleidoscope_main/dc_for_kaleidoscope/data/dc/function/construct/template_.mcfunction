#检查自指
data modify storage dc:temp template_check set from storage dc:temp template_name
execute store result score #template dc_temp run data modify storage dc:temp template_check set from storage dc:temp template.template
execute if score #template dc_temp matches 0 run return 0
#堆栈处理
data modify storage dc:temp template_stack prepend from storage dc:index temp
#data remove storage dc:temp template_stack[0].template
data modify storage dc:index temp set from storage dc:temp template
function dc:construct/template with storage dc:index temp
#还原上下文
data modify storage dc:temp template set from storage dc:index temp
data modify storage dc:index temp set from storage dc:temp template_stack[0]
data remove storage dc:temp template_stack[0]