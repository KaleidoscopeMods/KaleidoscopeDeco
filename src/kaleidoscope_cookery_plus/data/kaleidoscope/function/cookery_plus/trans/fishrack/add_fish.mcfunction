data modify entity @s data.fishstack append from entity @a[limit=1,tag=dc_click_temp] SelectedItem
data remove entity @s data.fishstack[-1].count

function kaleidoscope:cookery_plus/trans/fishrack/display

function kaleidoscope:cookery_plus/trans/clear_item

playsound minecraft:entity.item_frame.add_item block @a