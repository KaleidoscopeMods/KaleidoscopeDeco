playsound minecraft:entity.evoker.cast_spell block @a ~ ~ ~
particle entity_effect{color:-5131777} ~ ~.5 ~ 0.1 0.1 0.1 0 5

execute as @e[tag=dc_custom_display,distance=..3,limit=1] run function kaleidoscope:doll/events/note/pat