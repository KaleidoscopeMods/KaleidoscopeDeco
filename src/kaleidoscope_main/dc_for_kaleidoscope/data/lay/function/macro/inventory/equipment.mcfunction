$execute if data entity @s equipment.body$(target) run data modify storage lay Inventory.Items append from entity @s equipment.body
$execute if data entity @s equipment.body$(target) run data modify storage lay Inventory.Items[-1].Slot set value 104

$execute if data entity @s equipment.saddle$(target) run data modify storage lay Inventory.Items append from entity @s equipment.saddle
$execute if data entity @s equipment.saddle$(target) run data modify storage lay Inventory.Items[-1].Slot set value 105


$execute if data entity @s equipment.head$(target) run data modify storage lay Inventory.Items append from entity @s equipment.head
$execute if data entity @s equipment.head$(target) run data modify storage lay Inventory.Items[-1].Slot set value 103

$execute if data entity @s equipment.chest$(target) run data modify storage lay Inventory.Items append from entity @s equipment.chest
$execute if data entity @s equipment.chest$(target) run data modify storage lay Inventory.Items[-1].Slot set value 102

$execute if data entity @s equipment.legs$(target) run data modify storage lay Inventory.Items append from entity @s equipment.legs
$execute if data entity @s equipment.legs$(target) run data modify storage lay Inventory.Items[-1].Slot set value 101

$execute if data entity @s equipment.feet$(target) run data modify storage lay Inventory.Items append from entity @s equipment.feet
$execute if data entity @s equipment.feet$(target) run data modify storage lay Inventory.Items[-1].Slot set value 100


$execute if data entity @s equipment.offhand$(target) run data modify storage lay Inventory.Items append from entity @s equipment.offhand
$execute if data entity @s equipment.offhand$(target) run data modify storage lay Inventory.Items[-1].Slot set value -106