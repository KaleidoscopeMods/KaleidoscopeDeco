#嵌套处理
data modify storage lay list_stack prepend from storage lay list.para

$data modify storage lay list.para set value {func:"$(func)",list:"$(list)"}
$data modify storage lay list.para.list set from $(list)

data modify storage lay list.range set value {min:0,max:-1,step:1,func:"lay:macro/list/traversal",path:"lay list.para"}
$execute store result storage lay list.range.max int 1 run data get $(list)
function lay:macro/range/init with storage lay list.range

#嵌套处理(还原)
data modify storage lay list.para set from storage lay list_stack[0]
data remove storage lay list_stack[0]