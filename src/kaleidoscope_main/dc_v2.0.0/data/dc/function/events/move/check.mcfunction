execute unless data storage dc:temp {event:{args:{type:"X"}}} unless data storage dc:temp {event:{args:{type:"Y"}}} unless data storage dc:temp {event:{args:{type:"Z"}}} unless data storage dc:temp {event:{args:{type:"R"}}} unless data storage dc:temp {event:{args:{type:"V"}}} run data modify storage dc:temp event.args.type set value "R"
execute store result score #temp dc_temp run data get storage dc:temp event.args.distance 10000
execute if score #temp dc_temp matches 20001.. run scoreboard players set #temp dc_temp 20000
execute if score #temp dc_temp matches ..-20001 run scoreboard players set #temp dc_temp -20000
execute store result storage dc:temp event.args.distance float 0.0001 run scoreboard players get #temp dc_temp