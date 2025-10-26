execute if score @s k_stove_fry_status matches 1 run return run loot replace entity @a[scores={k_stove_out=1..},distance=..5,limit=1] player.cursor loot kaleidoscope_meals:semi

$loot replace entity @a[scores={k_stove_out=1..},distance=..5,limit=1] player.cursor loot kaleidoscope_meals:$(recipe)

