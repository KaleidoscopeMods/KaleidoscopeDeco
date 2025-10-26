tellraw @s {text:"==============",color:"dark_green","extra": [{text: "设置",color: "gold"},{text: "==============",color: "dark_green"}]}

execute if score $auto_install dc_options matches 0 run tellraw @s {text: "重载时自动注册模型：",color:"aqua","extra": [{text: "[关]",color: "red",click_event: {"action": "run_command",command: "/function dc:menu/auto_install/enable"},"hover_event": {"action": "show_text","value": {text: "开启后，每次reload自动刷新并注册模型"}}}]}
execute if score $auto_install dc_options matches 1 run tellraw @s {text: "重载时自动注册模型：",color:"aqua","extra": [{text: "[开]",color: "green",click_event: {"action": "run_command",command: "/function dc:menu/auto_install/disable"},"hover_event": {"action": "show_text","value": {text: "开启后，每次reload自动刷新并注册模型"}}}]}

execute if score $silent_update dc_options matches 0 run tellraw @s {text: "静默更新模型：",color:"aqua","extra": [{text: "[关]",color: "red",click_event: {"action": "run_command",command: "/function dc:menu/silent_update/enable"},"hover_event": {"action": "show_text","value": {text: "开启后，更新模型时不再在聊天栏告知玩家"}}}]}
execute if score $silent_update dc_options matches 1 run tellraw @s {text: "静默更新模型：",color:"aqua","extra": [{text: "[开]",color: "green",click_event: {"action": "run_command",command: "/function dc:menu/silent_update/disable"},"hover_event": {"action": "show_text","value": {text: "开启后，更新模型时不再在聊天栏告知玩家"}}}]}

execute if score $silent_register dc_options matches 0 run tellraw @s {text: "静默注册模型：",color:"aqua","extra": [{text: "[关]",color: "red",click_event: {"action": "run_command",command: "/function dc:menu/silent_register/enable"},"hover_event": {"action": "show_text","value": {text: "开启后，注册模型及完成时不再在聊天栏告知玩家"}}}]}
execute if score $silent_register dc_options matches 1 run tellraw @s {text: "静默注册模型：",color:"aqua","extra": [{text: "[开]",color: "green",click_event: {"action": "run_command",command: "/function dc:menu/silent_register/disable"},"hover_event": {"action": "show_text","value": {text: "开启后，注册模型及完成时不再在聊天栏告知玩家"}}}]}

execute if score $silent_exception dc_options matches 0 run tellraw @s {"text": "错误提示：","color":"aqua","extra": [{"text": "[关]","color": "red","click_event": {"action": "run_command","command": "/function dc:menu/silent_exception/enable"},"hover_event": {"action": "show_text","value": {"text": "开启后，执行出错后会向玩家输出错误提示"}}}]}
execute if score $silent_exception dc_options matches 1 run tellraw @s {"text": "错误提示：","color":"aqua","extra": [{"text": "[开]","color": "green","click_event": {"action": "run_command","command": "/function dc:menu/silent_exception/disable"},"hover_event": {"action": "show_text","value": {"text": "开启后，执行出错后会向玩家输出错误提示"}}}]}

tellraw @s {text:"================================",color:"dark_green"}