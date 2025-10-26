execute if entity @a[distance=..5] unless score @s kplus_temp matches 1 run function kaleidoscope_plus:doll/events/pufferfish/blow_up

execute unless entity @a[distance=..5] if score @s kplus_temp matches 1 run function kaleidoscope_plus:doll/events/pufferfish/blow_out