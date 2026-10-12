data modify storage dc:index storage set value {}
data modify storage dc:index key set from storage dc:index keylist
# 分批预算：限制单条命令链长度，避免触发 maxCommandChainLength(65536) 截断（每对象约 0.7k 命令，32 个约 21k）
scoreboard players set #install_budget lay_range 32
function lay:macro/list/init {list:"storage dc:index keylist",func:"dc:index/_install/register"}

scoreboard players set #remain lay_range 0
execute store result score #remain lay_range run data get storage dc:index keylist
execute if score #remain lay_range matches 0 run scoreboard players set #installing dc_options 0

execute if score #remain lay_range matches 0 unless score $silent_register dc_options matches 1 run tellraw @a "模型注册完成！"
