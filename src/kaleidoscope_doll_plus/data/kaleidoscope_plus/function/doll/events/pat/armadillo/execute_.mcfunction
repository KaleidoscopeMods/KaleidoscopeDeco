execute as @e[tag=kplus_armadillo] run data modify entity @s item.components."minecraft:custom_model_data".flags set value [false]

execute at @e[tag=kplus_armadillo] run playsound minecraft:entity.armadillo.unroll_finish block @a ~ ~ ~

execute as @e[tag=kplus_armadillo] run tag @s remove kplus_armadillo