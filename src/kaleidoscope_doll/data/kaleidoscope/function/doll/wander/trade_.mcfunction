data modify entity @s Offers.Recipes append value {maxUses:12,uses:0,buy:{id:"minecraft:emerald",count:1b},sell:{id:"minecraft:stone",count:1b}} 
loot spawn ~ ~ ~ loot kaleidoscope:gift_box_roll/boxes
tag @e[type=item,limit=1,sort=nearest,nbt={Item:{components:{"minecraft:custom_data":{K_wander:1b}}}}] add K_wan_item
data modify entity @e[limit=1,sort=nearest,tag=K_wan_item] PickupDelay set value 32767
data modify entity @e[limit=1,sort=nearest,tag=K_wan_item] Age set value -32768

execute store result score #temp K_wan_roll run random value 6..20

execute store result entity @s Offers.Recipes[-1].buy.count byte 1 run scoreboard players get #temp K_wan_roll

execute as @e[tag=K_wan_item] run data remove entity @s Item.components.minecraft:custom_data.K_wander


data modify entity @s Offers.Recipes[-1].sell set from entity @e[limit=1,sort=nearest,tag=K_wan_item] Item
kill @e[tag=K_wan_item]