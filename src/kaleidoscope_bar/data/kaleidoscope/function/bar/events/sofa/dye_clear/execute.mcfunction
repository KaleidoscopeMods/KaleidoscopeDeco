#替换沙发颜色

data modify entity @n[tag=dc_custom_display] item.components."minecraft:custom_model_data".strings[0] set value "none"
data modify entity @n[tag=dc_custom_display] item.components."minecraft:item_name".with[0].translate set value ""

playsound item.bucket.empty block @a

