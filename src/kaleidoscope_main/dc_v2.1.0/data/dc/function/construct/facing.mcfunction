#首先检查attach属性
scoreboard players set #attach dc_temp -1
execute store result score #attach dc_temp run data get entity @s Facing
execute if score #attach dc_temp matches 2..5 if data entity @s {data:{prop:{attach:"square"}}} as @n[type=item_display,tag=dc_display_temp] at @s run return run function dc:construct/facing/attach_side

execute if score #attach dc_temp matches 2..5 if data entity @s {data:{prop:{attach:"cubic"}}} as @n[type=item_display,tag=dc_display_temp] at @s run return run function dc:construct/facing/attach_side
execute if score #attach dc_temp matches 0..1 if data entity @s {data:{prop:{attach:"cubic"}}} as @n[type=item_display,tag=dc_display_temp] at @s run function dc:construct/facing/attach_axis

#朝向玩家
execute as @n[type=item_display,tag=dc_display_temp] at @s run function dc:construct/facing/main
execute if data entity @s {data:{prop:{orient:"fixed"}}} as @n[type=item_display,tag=dc_display_temp] at @s run return run function dc:construct/facing/orient_0
execute if data entity @s {data:{prop:{orient:"0"}}} as @n[type=item_display,tag=dc_display_temp] at @s run return run function dc:construct/facing/orient_0
execute if data entity @s {data:{prop:{orient:"4"}}} as @n[type=item_display,tag=dc_display_temp] at @s run return run function dc:construct/facing/orient_4
execute if data entity @s {data:{prop:{orient:"8"}}} as @n[type=item_display,tag=dc_display_temp] at @s run return run function dc:construct/facing/orient_8
execute if data entity @s {data:{prop:{orient:"16"}}} as @n[type=item_display,tag=dc_display_temp] at @s run return run function dc:construct/facing/orient_16

execute as @n[type=item_display,tag=dc_display_temp] at @s run function dc:construct/facing/orient_4