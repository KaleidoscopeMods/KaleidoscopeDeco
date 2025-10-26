## 物品数量-1
# 单物品处理：直接清除
execute if data block ~ ~ ~ Items[{Slot:1b,count:1}] run item replace block ~ ~ ~ container.1 with air
execute if data block ~ ~ ~ Items[{Slot:2b,count:1}] run item replace block ~ ~ ~ container.2 with air
execute if data block ~ ~ ~ Items[{Slot:3b,count:1}] run item replace block ~ ~ ~ container.3 with air
execute if data block ~ ~ ~ Items[{Slot:10b,count:1}] run item replace block ~ ~ ~ container.10 with air
execute if data block ~ ~ ~ Items[{Slot:11b,count:1}] run item replace block ~ ~ ~ container.11 with air
execute if data block ~ ~ ~ Items[{Slot:12b,count:1}] run item replace block ~ ~ ~ container.12 with air

# 多物品处理：数量-1
execute store result block ~ ~ ~ Items[{Slot:1b}].count int 0.99 run data get block ~ ~ ~ Items[{Slot:1b}].count
execute store result block ~ ~ ~ Items[{Slot:2b}].count int 0.99 run data get block ~ ~ ~ Items[{Slot:2b}].count
execute store result block ~ ~ ~ Items[{Slot:3b}].count int 0.99 run data get block ~ ~ ~ Items[{Slot:3b}].count
execute store result block ~ ~ ~ Items[{Slot:10b}].count int 0.99 run data get block ~ ~ ~ Items[{Slot:10b}].count
execute store result block ~ ~ ~ Items[{Slot:11b}].count int 0.99 run data get block ~ ~ ~ Items[{Slot:11b}].count
execute store result block ~ ~ ~ Items[{Slot:12b}].count int 0.99 run data get block ~ ~ ~ Items[{Slot:12b}].count