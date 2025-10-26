function lay:macro/inventory/function__ with storage lay Inventory
data remove storage lay Inventory.Items[0]
execute store result score #length lay_inventory run data get storage lay Inventory.Items
execute if score #length lay_inventory matches 1.. run function lay:macro/inventory/function_