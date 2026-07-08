#生成单个的潜影贝实体

summon block_display ~ 320 ~ {Tags:["dc_hitbox","dc_hitbox_temp",dc_hitbox_complex_temp],Passengers:[{id:"shulker",NoAI:1b,AttachFace:0b,Peek:0b,Silent:1b,DeathLootTable:"dc:empty",Invulnerable:1b,active_effects:[{id:"invisibility",show_particles:false,duration:-1,amplifier:0}]}]}

$data modify entity @n[tag=dc_hitbox_complex_temp] data.hitbox_data set value $(value)

scoreboard players operation @n[tag=dc_hitbox_complex_temp] dc_order = #current lay_range

tag @n[tag=dc_hitbox_complex_temp] remove dc_hitbox_complex_temp