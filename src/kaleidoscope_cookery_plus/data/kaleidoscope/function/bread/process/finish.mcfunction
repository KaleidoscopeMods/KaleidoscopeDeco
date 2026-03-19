tag @s remove k_bread_machine_process
tag @n[tag=k_bread_machine_display] remove k_bread_machine_display

stopsound @a[distance=..20] block block.beacon.ambient
scoreboard players set @s kaleidoscope_bread_timer 0

playsound entity.arrow.hit_player block @a

data modify storage dc events.temp.target set value {event:"trans",args:{index:"kaleidoscope_bread:machine_finish"}}
function dc:events/_detect/event_execute with storage dc events.temp.target