execute as @e[tag=kplus_guaidian] run data modify entity @s item.components."minecraft:custom_model_data".flags set value [false]

execute at @e[tag=kplus_guaidian] run particle rain ~ ~0.5 ~ 0.5 0.5 0.5 0 20
execute at @e[tag=kplus_guaidian] run playsound entity.guardian.hurt block @a ~ ~ ~

execute as @e[tag=kplus_guaidian] run tag @s remove kplus_guaidian