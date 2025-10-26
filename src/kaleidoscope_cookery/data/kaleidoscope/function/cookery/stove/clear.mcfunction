execute positioned ~ ~1 ~ as @e[type=item,tag=!k_stove_item,distance=..0.5] run data modify entity @s PortalCooldown set value 1
execute at @s if entity @e[type=item,nbt={Item:{id:"minecraft:barrel"}},distance=..2] run loot spawn ~ ~ ~ loot kaleidoscope:cookery/stove
kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}},distance=..2,sort=nearest,limit=1]

tag @s add k_stove_clear


kill @s