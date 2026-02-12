execute store result storage kaleidoscope:bar blackboard.dialog.template.score int 1 run scoreboard players get @s dc_uid
function kaleidoscope:bar/events/blackboard_hang/set_text/template with storage kaleidoscope:bar blackboard.dialog.template

#初值设置
execute unless data entity @s text.text run return 0

data modify storage kaleidoscope:bar blackboard.dialog.body.inputs[0].initial set from entity @s text.text
data modify storage kaleidoscope:bar blackboard.dialog.body.inputs[1].initial set from entity @s text.extra[1]
data modify storage kaleidoscope:bar blackboard.dialog.body.inputs[2].initial set from entity @s text.extra[3]


execute if data entity @s {alignment:"left"} run data modify storage kaleidoscope:bar blackboard.dialog.body.inputs[3].options[0] merge value {initial:true}
execute if data entity @s {alignment:"center"} run data modify storage kaleidoscope:bar blackboard.dialog.body.inputs[3].options[1] merge value {initial:true}
execute if data entity @s {alignment:"right"} run data modify storage kaleidoscope:bar blackboard.dialog.body.inputs[3].options[2] merge value {initial:true}

