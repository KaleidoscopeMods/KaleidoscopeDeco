function lay:macro/give/init
data modify storage lay Item merge from storage lay Inventory.Item
data modify storage lay Item.entity set value "@s"
$execute if score #return lay_inventory matches 0 run data modify storage lay Item.slot set value "hotbar.$(Slot)"
$execute if score #return lay_inventory matches 1 run data modify storage lay Item.slot set value "inventory.$(Slot)"
execute if score #return lay_inventory matches 2 if score #slot lay_inventory matches -106 run data modify storage lay Item.slot set value "weapon.offhand"
execute if score #return lay_inventory matches 2 if score #slot lay_inventory matches 100 run data modify storage lay Item.slot set value "armor.feet"
execute if score #return lay_inventory matches 2 if score #slot lay_inventory matches 101 run data modify storage lay Item.slot set value "armor.legs"
execute if score #return lay_inventory matches 2 if score #slot lay_inventory matches 102 run data modify storage lay Item.slot set value "armor.chest"
execute if score #return lay_inventory matches 2 if score #slot lay_inventory matches 103 run data modify storage lay Item.slot set value "armor.head"
function lay:macro/give/replace