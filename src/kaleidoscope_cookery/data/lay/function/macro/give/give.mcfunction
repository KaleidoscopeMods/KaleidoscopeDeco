scoreboard players set #temp lay_give 0
execute unless data storage lay Item.entity run data modify storage lay Item.entity set value "@s"
function lay:macro/give/give_item with storage lay Item
