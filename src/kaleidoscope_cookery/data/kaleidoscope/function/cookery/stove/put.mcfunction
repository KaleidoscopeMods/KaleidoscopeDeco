summon minecraft:item_display ~.5 ~.5 ~.5 {Tags:["k_stove","k_stove_temp"],item:{id:"firework_star",components:{item_model:"kaleidoscope_cookery:stove/block",custom_model_data:{flags:[false,false]}}}}

rotate @s facing entity @a[limit=1,tag=k_stove_player]
execute store result score @e[tag=k_stove_temp,sort=nearest,limit=1,type=item_display] k_stove_rotation run data get entity @s Rotation[0]

stopsound @a * entity.item_frame.place
playsound block.stone.place block @a

tag @a remove k_stove_player
kill @s[tag=k_stove_pos]