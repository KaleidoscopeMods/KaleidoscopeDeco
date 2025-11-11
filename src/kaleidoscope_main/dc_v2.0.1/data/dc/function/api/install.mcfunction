scoreboard players set #installing dc_options 1
function dc:template/_main
function dc:index/_main
execute unless score $silent_register dc_options matches 1 run tellraw @a {"text": "模型注册中，请稍等……"}


function dc:index/_install/start