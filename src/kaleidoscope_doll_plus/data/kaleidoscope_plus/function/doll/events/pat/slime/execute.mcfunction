playsound minecraft:entity.slime.squish block @a ~ ~ ~
particle item_slime ~ ~ ~ 0.5 0.5 0.5 0 20

execute as @e[tag=dc_custom_display,distance=..3,limit=1] run function kaleidoscope:doll/events/note/pat