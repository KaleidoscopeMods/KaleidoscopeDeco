function kaleidoscope:cookery/stove/generic/function_before

execute if entity @s[tag=k_stove_fry_fixed] run function kaleidoscope:cookery/stove/fry/_function

execute unless entity @s[tag=k_stove_fry_fixed] run function kaleidoscope:cookery/stove/empty/_function

function kaleidoscope:cookery/stove/generic/function_after