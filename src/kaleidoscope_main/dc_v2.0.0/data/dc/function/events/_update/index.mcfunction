data remove storage dc events.update
$data modify storage dc events.update set from storage dc:index storage.$(index)
execute if data storage dc events.update run function dc:events/_update/edit
$execute if data storage dc events.update run data modify entity @s data.index set value $(index)