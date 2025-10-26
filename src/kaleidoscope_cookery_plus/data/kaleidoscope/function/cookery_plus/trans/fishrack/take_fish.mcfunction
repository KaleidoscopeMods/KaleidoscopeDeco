execute at @a[tag=dc_click_temp,gamemode=!creative] run summon item ~ ~ ~ {Item:{id:"stone"},Tags:[k_fishrack_fish_temp]}
data modify entity @n[type=item,tag=k_fishrack_fish_temp] Item merge from entity @s data.fishstack[-1]


data remove entity @s data.fishstack[-1] 

function kaleidoscope:cookery_plus/trans/fishrack/display

playsound entity.item.pickup block @a