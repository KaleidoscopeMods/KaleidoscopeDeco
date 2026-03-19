#结束动画，并回到回落映射

tag @s remove sh_animation
scoreboard players set @s sh_frame 0
function sh:_/store
function sh:_/end_ with entity @s data.sh_animation