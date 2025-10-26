## 检测原料区物品是否合法


# 原料区为空(excp:1)
execute unless items block ~ ~ ~ container.1 * unless items block ~ ~ ~ container.2 * unless items block ~ ~ ~ container.3 * unless items block ~ ~ ~ container.10 * unless items block ~ ~ ~ container.11 * unless items block ~ ~ ~ container.12 * run scoreboard players set @s k_stove_start_excp 1

execute if score @s k_stove_start_excp matches 1 run return 0

# 原料区物品不合法(excp:2)
execute if items block ~ ~ ~ container.1 * unless items block ~ ~ ~ container.1 #kaleidoscope:pot_ingredient run scoreboard players set @s k_stove_start_excp 2
execute if items block ~ ~ ~ container.2 * unless items block ~ ~ ~ container.2 #kaleidoscope:pot_ingredient run scoreboard players set @s k_stove_start_excp 2
execute if items block ~ ~ ~ container.3 * unless items block ~ ~ ~ container.3 #kaleidoscope:pot_ingredient run scoreboard players set @s k_stove_start_excp 2
execute if items block ~ ~ ~ container.10 * unless items block ~ ~ ~ container.10 #kaleidoscope:pot_ingredient run scoreboard players set @s k_stove_start_excp 2
execute if items block ~ ~ ~ container.11 * unless items block ~ ~ ~ container.11 #kaleidoscope:pot_ingredient run scoreboard players set @s k_stove_start_excp 2
execute if items block ~ ~ ~ container.12 * unless items block ~ ~ ~ container.12 #kaleidoscope:pot_ingredient run scoreboard players set @s k_stove_start_excp 2