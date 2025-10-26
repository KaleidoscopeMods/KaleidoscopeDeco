$execute if data storage dc:temp event_keylist[$(condition)] run return 0
data modify storage dc:temp event append from storage dc:temp event_temp
data modify storage dc:temp event_keylist append from storage dc:temp event_cond.condition