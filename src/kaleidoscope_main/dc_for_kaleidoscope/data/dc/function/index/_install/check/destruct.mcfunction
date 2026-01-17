data modify storage dc:temp events set value []

#execute store result score 1 1 run data get storage dc:index temp.events.destruct

function lay:macro/list/init {list:"storage dc:index temp.events.destruct",func:"dc:index/_install/check/check_list"}

data modify storage dc:index temp.events.destruct set from storage dc:temp events