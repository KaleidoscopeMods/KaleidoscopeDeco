#选择一个关闭动画
#从sh回调，as:display
tag @s add k_lmabox_tick

function sh:init
data modify storage sh:props data merge value {id:"close1",frames:0,type:0,anim_index:0,frame_index:0,function:"kaleidoscope:lab/trans/leave_me_alone_box/closed"}

execute unless score $game_version dc_version matches 4671.. store result score @s kaleidoscope_anim_type run random value 1..4
execute if score $game_version dc_version matches 4671.. store result score @s kaleidoscope_anim_type run random value 5..12

#1..4对应1.21.11之前，5..12对应1.21.11之后，应用更灵动的版本
execute if score @s kaleidoscope_anim_type matches 1 run data modify storage sh:props data merge value {id:"close1",frames:20}
execute if score @s kaleidoscope_anim_type matches 2 run data modify storage sh:props data merge value {id:"close2",frames:35}
execute if score @s kaleidoscope_anim_type matches 3 run data modify storage sh:props data merge value {id:"close3",frames:50}
execute if score @s kaleidoscope_anim_type matches 4 run data modify storage sh:props data merge value {id:"close4",frames:45}

execute if score @s kaleidoscope_anim_type matches 5 run data modify storage sh:props data merge value {id:"close5",frames:30}
execute if score @s kaleidoscope_anim_type matches 6 run data modify storage sh:props data merge value {id:"close6",frames:50}
execute if score @s kaleidoscope_anim_type matches 7 run data modify storage sh:props data merge value {id:"close7",frames:52}
execute if score @s kaleidoscope_anim_type matches 8 run data modify storage sh:props data merge value {id:"close8",frames:50}
execute if score @s kaleidoscope_anim_type matches 9 run data modify storage sh:props data merge value {id:"close9",frames:80}
execute if score @s kaleidoscope_anim_type matches 10 run data modify storage sh:props data merge value {id:"close10",frames:68}
execute if score @s kaleidoscope_anim_type matches 11 run data modify storage sh:props data merge value {id:"close11",frames:45}
execute if score @s kaleidoscope_anim_type matches 12 run data modify storage sh:props data merge value {id:"close12",frames:64}

function sh:start