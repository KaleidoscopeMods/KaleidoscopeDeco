execute unless data storage dc:temp {event:{args:{type:"H"}}} unless data storage dc:temp {event:{args:{type:"V"}}} run data modify storage dc:temp event.args.type set value "H"
execute store result score #temp dc_temp run data get storage dc:temp event.args.angle 100
execute if score #temp dc_temp matches 18001.. run scoreboard players set #temp dc_temp 18000
execute if score #temp dc_temp matches ..-18001 run scoreboard players set #temp dc_temp -18000
execute store result storage dc:temp event.args.angle float 0.01 run scoreboard players get #temp dc_temp