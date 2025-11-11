#事件和属性检测

execute unless data storage dc:index temp.events.left_click.fallback run data modify storage dc:index temp.events.left_click.fallback set value {event:"destruct"}
execute unless data storage dc:index temp.events.right_click.fallback run data modify storage dc:index temp.events.right_click.fallback set value {event:"__nothing__"}

function dc:index/_install/check/fallback
execute if data storage dc:index temp.events.left_click.criteria run function dc:index/_install/check/lc
execute if data storage dc:index temp.events.right_click.criteria run function dc:index/_install/check/rc
execute if data storage dc:index temp.events.construct run function dc:index/_install/check/construct
execute if data storage dc:index temp.events.update run function dc:index/_install/check/update

execute unless data storage dc:index temp.modsize run data modify storage dc:index temp.modsize set value [1f,1f,1f]
execute unless data storage dc:index temp.interactsize run data modify storage dc:index temp.interactsize set value {height:1f,width:1f}
execute unless data storage dc:index temp.type run data modify storage dc:index temp.type set value "regular"