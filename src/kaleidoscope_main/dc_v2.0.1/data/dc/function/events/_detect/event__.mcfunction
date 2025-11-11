$execute if items entity @s weapon.mainhand $(id) run scoreboard players set #temp2 dc_click 1

execute if data storage dc {events:{temp:{target:{item:{id:"minecraft:air"}}}}} unless items entity @s weapon.mainhand * run scoreboard players set #temp2 dc_click 1
execute if data storage dc {events:{temp:{target:{item:{id:"air"}}}}} unless items entity @s weapon.mainhand * run scoreboard players set #temp2 dc_click 1


