execute if score #temp lay_give matches 1 run return 0
scoreboard players set #temp lay_give 1
$item replace entity $(entity) $(slot) with $(id)$(tag) $(Count)