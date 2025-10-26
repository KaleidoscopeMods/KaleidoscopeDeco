#arg:item
$data modify storage minecraft:snowball item set value $(item)
execute as @e[tag=dc_custom_display] facing entity @a[tag=dc_click_temp,limit=1] eyes run function utils:_summon