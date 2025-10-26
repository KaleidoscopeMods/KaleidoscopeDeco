$data modify storage lay Inventory.Items append from entity @s Inventory[$(target)]
execute store result score #length lay_inventory run data get storage lay Inventory.Items
execute if score #length lay_inventory matches 1.. run function lay:macro/inventory/function_