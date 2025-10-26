data modify storage dc:temp info set value {version:"N/A",timestamp:"N/A",index:"N/A",scale:"N/A"}
data modify storage dc:temp info merge from entity @s data.prop
data modify storage dc:temp info.index set from entity @s data.index
execute store result storage dc:temp info.current int 1 run time query gametime
execute store result storage dc:temp info.uid int 1 run scoreboard players get @s dc_uid
scoreboard players set #info_v dc_temp 0
execute store result score #info_v dc_temp run data get storage dc:temp info.version


execute as @a[tag=dc_click_temp] run function dc:events/info/output with storage dc:temp info