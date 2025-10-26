#误放入处理
function kaleidoscope:cookery/stove/empty/check_init

#gui处理
function kaleidoscope:cookery/stove/empty/replace/7

#外观处理
data modify entity @s item.components."minecraft:custom_model_data".flags[0] set value false
data modify entity @s item.components."minecraft:custom_model_data".flags[1] set value false

#启用
execute if predicate kaleidoscope:cookery/stove_enable run function kaleidoscope:cookery/stove/enable/enable