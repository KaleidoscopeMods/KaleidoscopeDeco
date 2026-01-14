#up-to-date
#版本号以模型数据内的值为准
execute store result score @s dc_version run data get entity @s data.prop.version
execute unless score @s dc_version >= $version dc_version run function dc:events/_update/upgrade
#timestamp
execute store result entity @s data.prop.timestamp int 1 run time query gametime
#index
function dc:events/_update/index with entity @s data

