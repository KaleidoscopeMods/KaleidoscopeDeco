#嵌套处理
execute store result storage lay range_stack_temp.min int 1 run scoreboard players get #min lay_range
execute store result storage lay range_stack_temp.max int 1 run scoreboard players get #max lay_range
execute store result storage lay range_stack_temp.step int 1 run scoreboard players get #step lay_range
execute store result storage lay range_stack_temp.current int 1 run scoreboard players get #current lay_range
data modify storage lay range_stack prepend from storage lay range_stack_temp

$scoreboard players set #min lay_range $(min)
$scoreboard players set #max lay_range $(max)
$scoreboard players set #step lay_range $(step)

#异常处理
scoreboard players set #error lay_range 0
execute if score #min lay_range > #max lay_range run function lay:macro/range/excp_range_0
execute if score #step lay_range matches ..0 run function lay:macro/range/excp_invalid_step
execute if score #error lay_range matches 1 run return 0

scoreboard players operation #current lay_range = #min lay_range
$execute unless score #current lay_range >= #max lay_range run function lay:macro/range/loop {func:"$(func)",path:"$(path)"}

#嵌套处理(还原)
data modify storage lay range_stack_temp set from storage lay range_stack[0]
execute store result score #min lay_range run data get storage lay range_stack_temp.min
execute store result score #max lay_range run data get storage lay range_stack_temp.max
execute store result score #step lay_range run data get storage lay range_stack_temp.step
execute store result score #current lay_range run data get storage lay range_stack_temp.current
data remove storage lay range_stack[0]