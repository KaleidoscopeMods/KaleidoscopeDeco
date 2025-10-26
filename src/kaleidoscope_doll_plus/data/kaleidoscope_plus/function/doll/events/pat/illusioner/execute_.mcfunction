execute as @e[tag=kplus_illusioner] run data modify entity @s item.components."minecraft:custom_model_data".flags set value [false]

execute at @e[tag=kplus_illusioner] run playsound entity.illusioner.ambient block @a ~ ~ ~

execute as @e[tag=kplus_illusioner] run tag @s remove kplus_illusioner