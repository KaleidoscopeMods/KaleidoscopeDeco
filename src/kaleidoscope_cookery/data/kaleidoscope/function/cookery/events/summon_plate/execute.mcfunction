#arg required:loot

execute if entity @a[tag=dc_click_temp,gamemode=!creative] if data storage dc events.temp.target.args.loot run function kaleidoscope:cookery/events/summon_plate/execute_loot with storage dc events.temp.target.args
execute if entity @a[tag=dc_click_temp,gamemode=!creative] unless data storage dc events.temp.target.args.loot run summon item ~ ~ ~ {Item:{id:"bowl",count:1}}