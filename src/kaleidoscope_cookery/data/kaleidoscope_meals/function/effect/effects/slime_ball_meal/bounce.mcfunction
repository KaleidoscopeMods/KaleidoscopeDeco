# 粘液饭：胀气弹射本体
# 玩家实体无法直接写入 Motion，此处用 1 秒短时漂浮力近似模组的 0.75 初速度（实测上升约 2.9 格，与"约 2.5 格"的官方描述同量级）
effect give @s minecraft:levitation 1 3 true
particle minecraft:cloud ~ ~0.25 ~ 0.25 0.25 0.25 0.1 10 normal
playsound minecraft:entity.slime.jump player @a ~ ~ ~ 1 0.8
