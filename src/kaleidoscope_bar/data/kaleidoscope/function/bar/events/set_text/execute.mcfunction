function kaleidoscope:bar/events/set_text/init

execute as @n[tag=dc_custom_interaction] at @s as @n[tag=k_board_extra_interaction] run function kaleidoscope:bar/events/set_text/modify

function kaleidoscope:bar/events/set_text/dialog with storage kaleidoscope:bar blackboard.dialog