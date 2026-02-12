execute as @e[type=text_display,tag=k_board_text] if score @s dc_uid = @n[tag=dc_custom_pivot] dc_uid run tag @s add dc_custom_text

function kaleidoscope:bar/events/blackboard_hang/set_text/init

execute as @n[tag=dc_custom_interaction] at @s as @n[tag=dc_custom_text] run function kaleidoscope:bar/events/blackboard_hang/set_text/modify_text
function kaleidoscope:bar/events/blackboard_hang/set_text/modify_pivot


function kaleidoscope:bar/events/blackboard_hang/set_text/dialog with storage kaleidoscope:bar blackboard.dialog

tag @n[tag=dc_custom_text] remove dc_custom_text