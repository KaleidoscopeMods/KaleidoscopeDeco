playsound entity.copper_golem.step block @a
playsound entity.copper_golem.step block @a
playsound entity.copper_golem.step block @a

data modify entity @n[tag=dc_trans_display] item.components."minecraft:custom_model_data".flags[0] set value false

execute if predicate {condition:"random_chance",chance:0.5} run return 0
playsound entity.copper_golem.spin block @a
playsound entity.copper_golem.spin block @a

