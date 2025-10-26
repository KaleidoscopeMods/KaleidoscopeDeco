playsound minecraft:entity.squid.squirt block @a ~ ~ ~

execute if data storage dc events.temp.target.args.glow run particle dust{scale:1,color:6618562} ~ ~0.3 ~ 0.3 0.3 0.3 0 100
execute unless data storage dc events.temp.target.args.glow run particle dust{scale:1,color:0} ~ ~0.3 ~ 0.3 0.3 0.3 0 100

execute as @e[tag=dc_custom_display,distance=..3,limit=1] run function kaleidoscope:doll/events/note/pat

