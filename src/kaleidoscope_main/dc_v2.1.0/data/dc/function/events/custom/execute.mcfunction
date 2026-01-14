#arg required:func,<other args>
tag @s add dc_custom_pivot
scoreboard players operation $tempid dc_temp = @s dc_uid
execute as @e[distance=..5,tag=dc_display] if score @s dc_uid = $tempid dc_temp run tag @s add dc_custom_display
execute as @e[distance=..5,tag=dc_interaction] if score @s dc_uid = $tempid dc_temp run tag @s add dc_custom_interaction
$function $(func)/execute with storage dc events.temp.target.args

tag @e remove dc_custom_pivot
tag @e remove dc_custom_display
tag @e remove dc_custom_interaction