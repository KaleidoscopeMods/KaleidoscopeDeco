#args required:events(带有weight属性作为权重，缺省默认为1)

execute if data storage dc events.temp.target.args.events run function dc:events/random/loot_table

execute if data storage dc events.temp.target.args.events run function dc:events/random/loot with storage dc:temp random