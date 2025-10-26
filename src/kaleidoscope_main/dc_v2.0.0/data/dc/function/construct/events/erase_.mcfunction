$data modify storage dc:temp event_temp set value $(value)
#复制条件字段
data remove storage dc:temp event_cond.condition
data modify storage dc:temp event_cond.condition.item set from storage dc:temp event_temp.item
execute if data storage dc:temp event_temp.predicate run data modify storage dc:temp event_cond.condition.predicate set from storage dc:temp event_temp.predicate

function dc:construct/events/erase__ with storage dc:temp event_cond