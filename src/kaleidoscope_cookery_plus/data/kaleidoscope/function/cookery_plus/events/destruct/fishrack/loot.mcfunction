summon item ~ ~ ~ {Tags:[k_fishrack_item_temp],Motion:[0f,0.1f,0f],Item:{id:"stone",count:1}}

$data modify entity @n[tag=k_fishrack_item_temp] Item merge value $(value)

tag @n[tag=k_fishrack_item_temp] remove k_fishrack_item_temp

