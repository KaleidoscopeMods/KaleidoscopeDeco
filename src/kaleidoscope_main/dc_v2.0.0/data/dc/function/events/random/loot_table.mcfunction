data modify storage dc:temp random.loot_table set value {\
    "pools": [\
        {\
            "rolls": 1,\
            "entries": []\
        }\
    ]\
}
function lay:macro/list/init {list:"storage dc events.temp.target.args.events",func:"dc:events/random/events"}