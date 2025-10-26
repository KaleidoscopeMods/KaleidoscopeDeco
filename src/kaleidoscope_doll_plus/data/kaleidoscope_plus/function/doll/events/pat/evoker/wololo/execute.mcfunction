playsound minecraft:entity.evoker.prepare_wololo block @a ~ ~ ~
particle entity_effect{color:-14736} ~ ~.5 ~ 0.1 0.1 0.1 0 5

execute as @e[tag=dc_custom_display,distance=..3,limit=1] run function kaleidoscope:doll/events/note/pat

execute as @a[tag=dc_click_temp] run clear @s blue_wool 1
give @a[tag=dc_click_temp] red_wool 1