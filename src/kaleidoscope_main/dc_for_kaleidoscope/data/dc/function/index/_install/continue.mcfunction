function lay:macro/list/init {list:"storage dc:index keylist",func:"dc:index/_install/register"}

scoreboard players set #installing dc_options 0

execute unless score $silent_register dc_options matches 1 run tellraw @a "模型注册完成！"