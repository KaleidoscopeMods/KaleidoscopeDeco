$data modify storage dc events.temp.target set value $(value)
function dc:events/_detect/event_execute with storage dc events.temp.target
