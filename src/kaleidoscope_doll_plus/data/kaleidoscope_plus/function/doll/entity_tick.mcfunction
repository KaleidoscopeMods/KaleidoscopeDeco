execute as @s[tag=kplus_flame] run function kaleidoscope_plus:doll/events/flame/tick

execute as @s[tag=kplus_shulker] run function kaleidoscope_plus:doll/events/shulker/timer

execute as @s[tag=kplus_witch] if score @s kplus_timer matches 1.. run scoreboard players remove @s kplus_timer 1

execute as @s[tag=kplus_pufferfish] run function kaleidoscope_plus:doll/events/pufferfish/tick
