#declare storage dc:index
#declare storage dc:template

#declare tag dc_custom_pivot
#declare tag dc_custom_display
#declare tag dc_custom_interaction
#declare tag dc_click_temp


scoreboard objectives add dc_uid dummy
execute unless score $uid dc_uid matches -2147483648..2147483647 run scoreboard players set $uid dc_uid -2147483648

scoreboard objectives add dc_temp dummy
#constants
scoreboard players set #100 dc_temp 100
scoreboard players set #2 dc_temp 2


scoreboard objectives add dc_click dummy
scoreboard objectives add dc_options dummy

function dc:template/_main
function dc:index/_main

#options
execute unless score $auto_install dc_options matches -2147483648..2147483647 run scoreboard players set $auto_install dc_options 0
execute unless score $silent_update dc_options matches -2147483648..2147483647 run scoreboard players set $silent_update dc_options 0
execute unless score $silent_register dc_options matches -2147483648..2147483647 run scoreboard players set $silent_register dc_options 0
execute unless score $silent_exception dc_options matches -2147483648..2147483647 run scoreboard players set $silent_exception dc_options 0

#version
scoreboard objectives add dc_version dummy
scoreboard players set $version dc_version 25

#exception
scoreboard objectives add dc_exception dummy

#math
forceload add 0 0

#schedules
schedule clear dc:schedule_1s
schedule function dc:schedule_1s 1s

#auto_install
execute if score $auto_install dc_options matches 1 run function dc:api/install


