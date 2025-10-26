execute store result storage k:temp note.color float 0.01 run random value 0..100
execute store result storage k:temp note.posx float 0.01 run random value -30..30
execute store result storage k:temp note.posz float 0.01 run random value -30..30
function kaleidoscope:doll/events/note/random with storage k:temp note

execute as @e[tag=dc_custom_display,distance=..3,limit=1] run function kaleidoscope:doll/events/note/pat