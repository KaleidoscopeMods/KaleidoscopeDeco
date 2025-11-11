execute store result storage kaleidoscope:bar blackboard.dialog.template.score int 1 run scoreboard players get @s dc_uid
function kaleidoscope:bar/events/set_text/template with storage kaleidoscope:bar blackboard.dialog.template

#初值设置
execute unless data entity @s CustomName run return 0

data modify storage kaleidoscope:bar blackboard.dialog.body.inputs[0].initial set from entity @s CustomName.text

execute if data entity @s {CustomName:{color:"white"}} run data modify storage kaleidoscope:bar blackboard.dialog.body.inputs[1].options[0] merge value {initial:true}
execute if data entity @s {CustomName:{color:"yellow"}} run data modify storage kaleidoscope:bar blackboard.dialog.body.inputs[1].options[1] merge value {initial:true}
execute if data entity @s {CustomName:{color:"light_purple"}} run data modify storage kaleidoscope:bar blackboard.dialog.body.inputs[1].options[2] merge value {initial:true}
execute if data entity @s {CustomName:{color:"red"}} run data modify storage kaleidoscope:bar blackboard.dialog.body.inputs[1].options[3] merge value {initial:true}
execute if data entity @s {CustomName:{color:"aqua"}} run data modify storage kaleidoscope:bar blackboard.dialog.body.inputs[1].options[4] merge value {initial:true}
execute if data entity @s {CustomName:{color:"green"}} run data modify storage kaleidoscope:bar blackboard.dialog.body.inputs[1].options[5] merge value {initial:true}
execute if data entity @s {CustomName:{color:"blue"}} run data modify storage kaleidoscope:bar blackboard.dialog.body.inputs[1].options[6] merge value {initial:true}
execute if data entity @s {CustomName:{color:"dark_gray"}} run data modify storage kaleidoscope:bar blackboard.dialog.body.inputs[1].options[7] merge value {initial:true}
execute if data entity @s {CustomName:{color:"gray"}} run data modify storage kaleidoscope:bar blackboard.dialog.body.inputs[1].options[8] merge value {initial:true}
execute if data entity @s {CustomName:{color:"gold"}} run data modify storage kaleidoscope:bar blackboard.dialog.body.inputs[1].options[9] merge value {initial:true}
execute if data entity @s {CustomName:{color:"dark_purple"}} run data modify storage kaleidoscope:bar blackboard.dialog.body.inputs[1].options[10] merge value {initial:true}
execute if data entity @s {CustomName:{color:"dark_red"}} run data modify storage kaleidoscope:bar blackboard.dialog.body.inputs[1].options[11] merge value {initial:true}
execute if data entity @s {CustomName:{color:"dark_aqua"}} run data modify storage kaleidoscope:bar blackboard.dialog.body.inputs[1].options[12] merge value {initial:true}
execute if data entity @s {CustomName:{color:"dark_green"}} run data modify storage kaleidoscope:bar blackboard.dialog.body.inputs[1].[13] merge value {initial:true}
execute if data entity @s {CustomName:{color:"dark_blue"}} run data modify storage kaleidoscope:bar blackboard.dialog.body.inputs[1].options[14] merge value {initial:true}
execute if data entity @s {CustomName:{color:"black"}} run data modify storage kaleidoscope:bar blackboard.dialog.body.inputs[1].options[15] merge value {initial:true}

execute if data entity @s {CustomName:{bold:true}} run data modify storage kaleidoscope:bar blackboard.dialog.body.inputs[2].options[1] merge value {initial:true}
execute if data entity @s {CustomName:{italic:true}} run data modify storage kaleidoscope:bar blackboard.dialog.body.inputs[2].options[2] merge value {initial:true}
execute if data entity @s {CustomName:{underlined:true}} run data modify storage kaleidoscope:bar blackboard.dialog.body.inputs[2].options[3] merge value {initial:true}
execute if data entity @s {CustomName:{strikethrough:true}} run data modify storage kaleidoscope:bar blackboard.dialog.body.inputs[2].options[4] merge value {initial:true}
