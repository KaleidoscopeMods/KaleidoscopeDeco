scoreboard players set @s kaleidoscope_doll_machine_timer 100
tag @s add kal_machine_shake

advancement grant @a[tag=dc_click_temp] only kaleidoscope:doll/roll
execute as @a[tag=dc_click_temp,gamemode=!creative] run clear @s emerald 1
playsound block.amethyst_block.place block @a ~ ~ ~

particle wax_on ~ ~1 ~ 0.5 0.5 0.5 0 5
particle wax_off ~ ~1 ~ 0.5 0.5 0.5 0 5
