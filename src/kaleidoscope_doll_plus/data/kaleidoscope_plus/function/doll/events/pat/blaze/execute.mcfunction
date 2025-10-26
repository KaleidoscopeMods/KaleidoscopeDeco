playsound entity.blaze.shoot block @a ~ ~ ~
particle smoke ~ ~ ~ 0.5 0.5 0.5 0 20
particle flame ~ ~ ~ 0.5 0.5 0.5 0 20

execute as @e[tag=dc_custom_display,distance=..3,limit=1] run function kaleidoscope:doll/events/note/pat