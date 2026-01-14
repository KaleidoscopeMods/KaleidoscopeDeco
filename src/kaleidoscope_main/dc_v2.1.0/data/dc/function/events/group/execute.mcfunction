#args required:(list)events

execute if data storage dc events.temp.target.args.events run function lay:macro/list/init {list:"storage dc events.temp.target.args.events",func:"dc:events/group/events"}
