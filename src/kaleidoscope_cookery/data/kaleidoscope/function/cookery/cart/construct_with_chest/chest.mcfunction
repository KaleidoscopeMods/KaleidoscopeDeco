tag @s add k_cart_chest
data modify entity @s PersistenceRequired set value 1b
data modify entity @s Silent set value 1b
data modify entity @s Tame set value 1b
data modify entity @s ChestedHorse set value 1b
data modify entity @s Invulnerable set value 1b
data modify entity @s DeathLootTable set value "kaleidoscope:cookery/empty"
data modify entity @s CustomName set value "手推车"

attribute @s scale base set 0.5

effect give @s invisibility infinite 0 true

ride @s mount @e[limit=1,sort=nearest,tag=k_cart_temp]

tag @s remove k_cart_chest_temp