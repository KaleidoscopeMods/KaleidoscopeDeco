$data modify entity @s Rotation[0] set value $(angle)f
execute at @s positioned 0. 0. 0. rotated ~ 0.0 run tp @s ^1 ^ ^
execute store result score $cos dc_temp run data get entity @s Pos[0] 100000
execute store result score $sin dc_temp run data get entity @s Pos[2] 100000



scoreboard players set #t0 dc_temp 0
execute if score $cos dc_temp matches ..-1 run scoreboard players operation #t0 dc_temp -= $cos dc_temp
execute if score $cos dc_temp matches ..-1 run scoreboard players operation $cos dc_temp = #t0 dc_temp

scoreboard players set #t0 dc_temp 0
execute if score $sin dc_temp matches ..-1 run scoreboard players operation #t0 dc_temp -= $sin dc_temp
execute if score $sin dc_temp matches ..-1 run scoreboard players operation $sin dc_temp = #t0 dc_temp

