data modify storage dc:temp events set value []


function lay:macro/list/init {list:"storage dc:index temp.events.left_click.criteria",func:"dc:index/_install/check/check"}

data modify storage dc:index temp.events.left_click.criteria set from storage dc:temp events