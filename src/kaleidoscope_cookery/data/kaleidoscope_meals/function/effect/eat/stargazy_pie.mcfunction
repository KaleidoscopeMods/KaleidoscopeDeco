playsound entity.generic.eat player @a
execute as @a[tag=dc_click_temp] run effect give @s saturation 1 1 true

execute if predicate {condition:"random_chance",chance:0.05} run playsound minecraft:entity.ghast.ambient block @a ~ ~ ~

advancement grant @a[tag=dc_click_temp] only kaleidoscope:cookery/solitary_gourmet stargazy_pie