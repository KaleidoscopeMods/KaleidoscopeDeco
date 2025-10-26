playsound minecraft:entity.magma_cube.squish block @a ~ ~ ~
particle block{block_state:"magma_block"} ~ ~ ~ 0.5 0.5 0.5 0 20

execute as @e[tag=dc_custom_display,distance=..3,limit=1] run function kaleidoscope:doll/events/note/pat