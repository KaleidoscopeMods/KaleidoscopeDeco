execute if score #rotation dc_temp matches -45..44 run data modify entity @s Rotation[0] set value 0f
execute if score #rotation dc_temp matches 45..134 run data modify entity @s Rotation[0] set value 90f
execute if score #rotation dc_temp matches 135..180 run data modify entity @s Rotation[0] set value 180f
execute if score #rotation dc_temp matches -179..-135 run data modify entity @s Rotation[0] set value 180f
execute if score #rotation dc_temp matches -134..-44 run data modify entity @s Rotation[0] set value -90f