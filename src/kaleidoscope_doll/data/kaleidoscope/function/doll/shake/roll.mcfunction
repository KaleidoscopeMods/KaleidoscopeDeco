tag @s remove kal_machine_shake
playsound entity.experience_orb.pickup block @a ~ ~ ~

loot spawn ~ ~1 ~ loot kaleidoscope:gift_box_roll/roll
particle happy_villager ~ ~2 ~ 0.5 0.5 0.5 0 5

data modify storage dc events.temp.target.args set value {index:"doll_machine"}
function dc:events/trans/execute with storage dc events.temp.target.args
#清除临时设定的arg，防止因为修改了arg导致被判定两次
data remove storage dc events.temp.target.args