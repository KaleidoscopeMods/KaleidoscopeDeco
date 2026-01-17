#storage dc math.angle
summon item_display 0 0 0 {Tags:[dc_math_temp]}
execute as @e[tag=dc_math_temp] at @s run function dc:math/sin_ with storage dc math
kill @e[tag=dc_math_temp]