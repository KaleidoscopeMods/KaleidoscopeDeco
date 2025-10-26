execute summon item_display run tag @s add dc_construct_loot
$execute as @e[limit=1,tag=dc_construct_loot,distance=..1] run loot replace entity @s contents loot $(loot_table)
data modify entity @s item merge from entity @e[limit=1,tag=dc_construct_loot,distance=..1] item
kill @e[tag=dc_construct_loot]
