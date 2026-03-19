execute if items entity @a[tag=dc_click_temp,limit=1] weapon.mainhand *[count=1] run return run item replace entity @a[tag=dc_click_temp,limit=1,gamemode=!creative] weapon.mainhand with air

summon item_display ~ ~ ~ {Tags:[k_item_clear]}
item replace entity @n[tag=k_item_clear] contents from entity @a[tag=dc_click_temp,limit=1] weapon.mainhand
execute store result entity @n[tag=k_item_clear] item.count int 0.99 run data get entity @n[tag=k_item_clear] item.count
item replace entity @a[tag=dc_click_temp,limit=1,gamemode=!creative] weapon.mainhand from entity @n[tag=k_item_clear] contents
kill @e[tag=k_item_clear]