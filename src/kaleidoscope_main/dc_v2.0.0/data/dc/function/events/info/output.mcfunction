tellraw @s {"text": "=======模型数据=======","color": "green"}
$tellraw @s {"text": "UID: ","color": "aqua","extra": [{"text": "$(uid)","color": "gold"}]}
$tellraw @s {"text": "索引: ","color": "aqua","extra": [{"text": "$(index)","color": "green"}]}
$tellraw @s {"text": "缩放倍数: ","color": "aqua","extra": [{"text": "$(scale)","color": "gold"},{"text": "f","color": "red"}]}
$tellraw @s {"text": "版本: ","color": "aqua","extra": [{"text": "$(version)","color": "gold"}]}
execute unless score #info_v dc_temp >= $version dc_version run tellraw @s {"text": "[注意]模型版本较低，建议更新\n使用调试棒左键模型以更新","color": "red"}

$tellraw @s {"text": "上次更新时间: ","color": "aqua","extra": [{"text": "$(timestamp)","color": "gold"}]}
$tellraw @s {"text": "当前时间: ","color": "gray","extra": [{"text": "$(current)","color": "gray"}]}
tellraw @s {"text": "=======================","color": "green"}