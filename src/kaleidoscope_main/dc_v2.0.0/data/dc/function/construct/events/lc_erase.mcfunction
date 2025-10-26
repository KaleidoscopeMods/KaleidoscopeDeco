#init
data modify storage dc:temp event set value []
data modify storage dc:temp event_keylist set value []
function lay:macro/list/init {list:"storage dc:temp template.events.left_click.criteria",func:"dc:construct/events/erase_"}
data modify storage dc:temp template.events.left_click.criteria set from storage dc:temp event