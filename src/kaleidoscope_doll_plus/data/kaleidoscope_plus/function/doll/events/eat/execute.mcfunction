#arg:sound

particle heart ~ ~.5 ~ 0.3 0.3 0.3 0 3

$playsound $(sound) block @a ~ ~ ~

execute as @e[tag=dc_custom_display,distance=..3,limit=1] run function kaleidoscope:doll/events/note/pat