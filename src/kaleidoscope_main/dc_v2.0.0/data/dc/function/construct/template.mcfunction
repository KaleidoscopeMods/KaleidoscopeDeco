data modify storage dc:temp template set value {}
$data modify storage dc:temp template set from storage dc:template $(template)
#嵌套处理
$data modify storage dc:temp template_name set value $(template)
execute if data storage dc:temp template.template run function dc:construct/template_

execute if data storage dc:index temp.item run data modify storage dc:temp template.item set from storage dc:index temp.item 
execute if data storage dc:index temp.loot_table run data modify storage dc:temp template.loot_table set from storage dc:index temp.loot_table 
execute if data storage dc:index temp.display run data modify storage dc:temp template.display set from storage dc:index temp.display
execute if data storage dc:index temp.modsize run data modify storage dc:temp template.modsize set from storage dc:index temp.modsize
execute if data storage dc:index temp.interactsize run data modify storage dc:temp template.interactsize set from storage dc:index temp.interactsize
execute if data storage dc:index temp.prop run data modify storage dc:temp template.prop merge from storage dc:index temp.prop 
execute if data storage dc:index temp.type run data modify storage dc:temp template.type set from storage dc:index temp.type 
execute if data storage dc:index temp.extra_data run data modify storage dc:temp template.extra_data merge from storage dc:index temp.extra_data 

execute if data storage dc:index temp.events.left_click.criteria run data modify storage dc:temp template.events.left_click.criteria prepend from storage dc:index temp.events.left_click.criteria[]
execute if data storage dc:index temp.events.left_click.fallback run data modify storage dc:temp template.events.left_click.fallback set from storage dc:index temp.events.left_click.fallback

execute if data storage dc:index temp.events.right_click.criteria run data modify storage dc:temp template.events.right_click.criteria prepend from storage dc:index temp.events.right_click.criteria[]
execute if data storage dc:index temp.events.right_click.fallback run data modify storage dc:temp template.events.right_click.fallback set from storage dc:index temp.events.right_click.fallback

execute if data storage dc:index temp.events.construct run data modify storage dc:temp template.events.construct prepend from storage dc:index temp.events.construct[]

execute if data storage dc:index temp.events.update run data modify storage dc:temp template.events.update prepend from storage dc:index temp.events.update[]

#erase
execute store result score #template_stack dc_temp run data get storage dc:temp template_stack
execute if score #template_stack dc_temp matches 0 run function dc:construct/events/lc_erase
execute if score #template_stack dc_temp matches 0 run function dc:construct/events/rc_erase

data modify storage dc:index temp set from storage dc:temp template
data remove storage dc:index temp.template