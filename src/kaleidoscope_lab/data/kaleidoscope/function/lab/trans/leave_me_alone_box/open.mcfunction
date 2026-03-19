#打开盒子
#as:root
playsound minecraft:block.wooden_door.open block @a
function sh:init
execute unless score $game_version dc_version matches 4671.. run data modify storage sh:props data merge value {id:"open",frames:5,type:2,anim_index:0,frame_index:0,function:"kaleidoscope:lab/trans/leave_me_alone_box/roll_close"}
execute if score $game_version dc_version matches 4671.. run data modify storage sh:props data merge value {id:"open2",frames:2,type:2,anim_index:0,frame_index:0,function:"kaleidoscope:lab/trans/leave_me_alone_box/roll_close"}

execute as @n[tag=dc_trans_display] run function sh:start
