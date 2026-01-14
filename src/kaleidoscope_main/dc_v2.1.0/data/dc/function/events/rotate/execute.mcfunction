#arg required: type(H|V),angle(-180.0f~180.0f)
execute if data storage dc {events:{temp:{target:{args:{type:"H"}}}}} run function dc:events/rotate/h
execute if data storage dc {events:{temp:{target:{args:{type:"V"}}}}} run function dc:events/rotate/v
function dc:events/_update/execute