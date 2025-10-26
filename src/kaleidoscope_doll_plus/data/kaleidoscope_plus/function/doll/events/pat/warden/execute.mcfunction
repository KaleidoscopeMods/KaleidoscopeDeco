playsound minecraft:entity.warden.tendril_clicks block @a ~ ~ ~
particle smoke ~ ~ ~ 0.2 0 0.2 0 10

data modify storage kplus vibration set value {x:0,y:0,z:0}
execute store result storage kplus vibration.x int 1 run data get entity @s Pos[0]
execute store result score @s kplus_temp run data get entity @s Pos[1]
execute store result storage kplus vibration.y int 1 run scoreboard players add @s kplus_temp 1
execute store result storage kplus vibration.z int 1 run data get entity @s Pos[2]
execute at @a[tag=dc_click_temp] run function kaleidoscope_plus:doll/events/pat/warden/vibration with storage kplus vibration

execute as @e[tag=dc_custom_display,distance=..3,limit=1] run function kaleidoscope:doll/events/note/pat