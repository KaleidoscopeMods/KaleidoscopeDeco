function dc:events/_update/execute

execute unless score $silent_update dc_options matches 1 run tellraw @a[tag=dc_click_temp] "模型数据已更新！"