scoreboard players set #temp lay_give 0
function lay:macro/give/replace_block with storage lay Item
function lay:macro/give/replace_entity with storage lay Item

execute if score #temp lay_give matches 0 run tellraw @s {"text": "ERROR","color": "red"}