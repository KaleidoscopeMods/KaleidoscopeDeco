#设置动画id

$data modify entity @s item.components."minecraft:custom_model_data".strings[$(anim_index)] set value "$(id)"
function sh:_/store