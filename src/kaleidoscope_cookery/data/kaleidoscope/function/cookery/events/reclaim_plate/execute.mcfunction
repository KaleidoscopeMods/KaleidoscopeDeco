#arg required:loot


execute if data entity @s {data:{index:"semi_meal"}} run return run loot give @a[tag=dc_click_temp,gamemode=!creative] loot kaleidoscope_meals:semi
execute if data entity @s {data:{index:"dark_meal"}} run return run loot give @a[tag=dc_click_temp,gamemode=!creative] loot kaleidoscope_meals:overburnt


execute if data storage dc events.temp.target.args.loot run function kaleidoscope:cookery/events/reclaim_plate/execute_loot with storage dc events.temp.target.args
execute unless data storage dc events.temp.target.args.loot run give @a[tag=dc_click_temp] bowl