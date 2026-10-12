# 分批预算（说明见 dc:index/_install/start）
scoreboard players set #install_budget lay_range 32
function lay:macro/list/init {list:"storage dc:index keylist",func:"dc:index/_install/register"}

scoreboard players set #remain lay_range 0
execute store result score #remain lay_range run data get storage dc:index keylist
execute if score #remain lay_range matches 0 run scoreboard players set #installing dc_options 0

execute if score #remain lay_range matches 0 unless score $silent_register dc_options matches 1 run tellraw @a "模型注册完成！"
