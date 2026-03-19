#开始动画
#使用storage sh:props data 传入参数
data modify entity @s data.sh_animation set from storage sh:props data

#将参数映射到计分板
execute store result score @s sh_max_frame run data get entity @s data.sh_animation.frames
execute store result score @s sh_anim_index run data get entity @s data.sh_animation.anim_index
execute store result score @s sh_frame_index run data get entity @s data.sh_animation.frame_index
execute store result score @s sh_type run data get entity @s data.sh_animation.type
scoreboard players set @s sh_frame 0


function sh:_/start_anim with entity @s data.sh_animation


tag @s add sh_animation