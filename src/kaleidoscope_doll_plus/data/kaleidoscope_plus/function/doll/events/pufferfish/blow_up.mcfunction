playsound minecraft:entity.puffer_fish.blow_up block @a ~ ~ ~

execute as @e[tag=kplus_pufferfish_display,sort=nearest,distance=..3,limit=1] run function kaleidoscope:doll/events/note/pat

particle rain ~ ~0.5 ~ 0.5 0.5 0.5 0 20

execute as @e[tag=kplus_pufferfish_display,sort=nearest,distance=..3,limit=1] run data modify entity @s item.components."minecraft:custom_model_data".flags set value [false]

scoreboard players set @s kplus_temp 1