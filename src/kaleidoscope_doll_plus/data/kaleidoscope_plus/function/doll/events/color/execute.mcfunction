#arg:color

$particle dust{scale:1,color:$(color)} ~ ~0.3 ~ 0.3 0.3 0.3 0 100
playsound minecraft:entity.sheep.ambient block @a
execute as @e[tag=dc_custom_display,distance=..3,limit=1] run function kaleidoscope:doll/events/note/pat

$execute as @e[tag=dc_custom_display,distance=..3,limit=1] run data modify entity @s item.components."minecraft:custom_model_data".colors set value [$(color)]