data modify storage lay Inventory.Item set from storage lay Inventory.Items[0]
data modify storage lay Inventory.Slot set from storage lay Inventory.Item.Slot
execute store result score #slot lay_inventory run data get storage lay Inventory.Slot
$function $(func)
execute if score #slot lay_inventory matches 0..8 run scoreboard players set #return lay_inventory 0
execute if score #slot lay_inventory matches 9..35 run scoreboard players set #return lay_inventory 1
execute unless score #slot lay_inventory matches 0..35 run scoreboard players set #return lay_inventory 2
execute if score #return lay_inventory matches 1 run scoreboard players remove #slot lay_inventory 9
execute store result storage lay Inventory.Slot byte 1 run scoreboard players get #slot lay_inventory
function lay:macro/inventory/replace with storage lay Inventory