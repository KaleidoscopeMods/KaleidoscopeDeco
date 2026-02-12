#初值设置
execute if entity @s[tag=kaleidoscope_bar_blackboard_bind] run data modify storage kaleidoscope:bar blackboard.dialog.body.inputs[4].options[0] merge value {initial:true}
execute unless entity @s[tag=kaleidoscope_bar_blackboard_bind] run data modify storage kaleidoscope:bar blackboard.dialog.body.inputs[4].options[1] merge value {initial:true}
