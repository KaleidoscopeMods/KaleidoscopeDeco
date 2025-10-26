playsound minecraft:entity.drowned.swim block @a ~ ~ ~
particle rain ~ ~.2 ~ 0.2 0.2 0.2 0 5

execute as @e[tag=dc_custom_display,distance=..3,limit=1] run function kaleidoscope:doll/events/note/pat