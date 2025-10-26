playsound entity.illusioner.mirror_move block @a ~ ~ ~


execute as @e[tag=dc_custom_display,distance=..3,limit=1] run function kaleidoscope:doll/events/note/pat

execute as @e[tag=dc_custom_display,distance=..3,limit=1] run tag @s add kplus_illusioner
execute as @e[tag=dc_custom_display,distance=..3,limit=1] run data modify entity @s item.components."minecraft:custom_model_data".flags set value [true]

schedule function kaleidoscope_plus:doll/events/pat/illusioner/execute_ 1.5s