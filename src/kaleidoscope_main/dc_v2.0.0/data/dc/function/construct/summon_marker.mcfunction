## 特判：如果当前方块为楼梯，则向上一格生成
execute if block ~ ~ ~ #stairs positioned ~ ~1 ~ align xyz positioned ~.5 ~ ~.5 run return run function dc:construct/summon

execute unless block ~ ~ ~ #stairs positioned ~ ~0.5 ~ align xyz positioned ~.5 ~ ~.5 run function dc:construct/summon