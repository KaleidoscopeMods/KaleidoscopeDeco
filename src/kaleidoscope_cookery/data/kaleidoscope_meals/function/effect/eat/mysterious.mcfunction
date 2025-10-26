playsound entity.generic.eat player @a
execute as @a[tag=dc_click_temp] run effect give @s saturation 1 0 true

execute if predicate {"condition":"random_chance",chance:0.8} run playsound ambient.cave ambient @a ~ ~ ~ 0.5
execute if predicate {"condition":"random_chance",chance:0.2} run effect give @a[tag=dc_click_temp] hunger 30 0
execute if predicate {"condition":"random_chance",chance:0.2} run effect give @a[tag=dc_click_temp] nausea 30 0
execute if predicate {"condition":"random_chance",chance:0.2} run effect give @a[tag=dc_click_temp] weakness 30 0


execute as @a[tag=dc_click_temp] if predicate {"condition":"entity_properties",entity:"this",predicate:{effects:{hunger:{duration:600},nausea:{duration:600},weakness:{duration:600}}}} run advancement grant @s only kaleidoscope:cookery/unlucky
