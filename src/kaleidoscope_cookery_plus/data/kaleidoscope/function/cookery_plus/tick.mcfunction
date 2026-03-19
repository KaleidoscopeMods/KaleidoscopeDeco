execute as @e[tag=kplusc_tick] at @s if entity @a[distance=..20] run function kaleidoscope:cookery_plus/entity_tick

execute as @e[tag=k_bread_machine_process] at @s run function kaleidoscope:bread/process/machine_timer