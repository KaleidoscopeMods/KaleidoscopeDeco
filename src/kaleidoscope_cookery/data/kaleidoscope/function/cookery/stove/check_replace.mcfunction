#$execute if items block ~ ~ ~ container.$(var) * at @a[sort=nearest,limit=1,scores={k_stoveerror=1..}] run summon item ~ ~ ~ {Tags:[k_stove_item],Item:{id:"stone",count:1}}
#$data modify entity @e[type=item,tag=k_stove_item,limit=1] Item set from block ~ ~ ~ Items[{Slot:$(var)b}]
#tag @e[type=item,tag=k_stove_item,limit=1] remove k_stove_item

$execute if items block ~ ~ ~ container.$(var) * run item replace entity @a[sort=nearest,limit=1,scores={k_stoveerror=1..}] player.cursor from block ~ ~ ~ container.$(var)


$item replace block ~ ~ ~ container.$(var) with firework_star[item_model="kaleidoscope_cookery:stove/empty",tooltip_display={"hide_tooltip":true},custom_data={kaleidoscope_stove_bg:1b}]