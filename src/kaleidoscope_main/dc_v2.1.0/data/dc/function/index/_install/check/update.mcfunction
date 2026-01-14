data modify storage dc:temp events set value []


function lay:macro/list/init {list:"storage dc:index temp.events.update",func:"dc:index/_install/check/check_list"}

data modify storage dc:index temp.events.update set from storage dc:temp events