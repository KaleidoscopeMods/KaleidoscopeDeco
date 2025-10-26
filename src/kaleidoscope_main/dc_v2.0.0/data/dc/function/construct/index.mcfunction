#索引数据加载和继承
data remove storage dc:temp inheritance
execute if data entity @s data.inheritance run data modify storage dc:temp inheritance set from entity @s data.inheritance

$data modify entity @s data set from storage dc:index storage.$(index)

execute if data storage dc:temp inheritance run data modify entity @s data merge from storage dc:temp inheritance