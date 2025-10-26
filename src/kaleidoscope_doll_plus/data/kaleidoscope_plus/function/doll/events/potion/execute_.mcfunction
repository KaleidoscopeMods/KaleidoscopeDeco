playsound entity.splash_potion.throw block @a
playsound entity.splash_potion.break block @a
playsound entity.witch.ambient block @a

tag @s add kplus_tick
tag @s add kplus_witch
scoreboard players set @s kplus_timer 25

particle item{item:{id:"glass_bottle"}} ~ ~ ~ 0.1 0 0.1 0 40

execute store result storage k:temp potion.color int 1 run random value -16777216..0

function kaleidoscope_plus:doll/events/potion/particle with storage k:temp potion

execute as @e[tag=dc_custom_display,distance=..3,limit=1] run function kaleidoscope:doll/events/note/pat