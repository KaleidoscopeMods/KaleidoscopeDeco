# 【braised_pork_ribs】红烧排骨
data modify storage dc:index input.braised_pork_ribs set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1.5f}, \
    loot_table:"kaleidoscope_meals:braised_pork_ribs", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/braised_pork_ribs", \
            "minecraft:custom_model_data":{floats:[0]} \
        }, \
    }, \
    template:"kaleidoscope", \
    events:{ \
        "construct":[ \
            {event:"sound",args:{sound:"minecraft:block.copper_grate.place"}}, \
        ], \
        left_click:{ \
            fallback:{event:"destruct",args:{item:{},particle:"self",sound:"minecraft:block.glass.break"}} \
        }, \
        right_click:{ \
                "fallback": {\
                    "event": "trans",\
                    "args": {\
                        "index": "braised_pork_ribs_1",\
                        "func": "kaleidoscope_meals:effect/eat/braised_pork_ribs"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "braised_pork_ribs" 

# 【braised_pork_ribs_1】
data modify storage dc:index input.braised_pork_ribs_1 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1.5f}, \
    loot_table:"kaleidoscope_meals:braised_pork_ribs", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/braised_pork_ribs", \
            "minecraft:custom_model_data":{floats:[1]} \
        }, \
    }, \
    template:"kaleidoscope", \
    events:{ \
        "construct":[ \
            {event:"sound",args:{sound:"minecraft:block.copper_grate.place"}}, \
        ], \
        left_click:{ \
\
                "fallback": {\
                    "event": "group",\
                    "args": {\
                        "events": [\
                            {\
                                "event": "custom",\
                                "args": {\
                                    "func": "kaleidoscope:cookery/events/summon_plate",\
                                    "loot": "kaleidoscope_meals:reclaim/braised_pork_ribs"\
                                }\
                            },\
                            {\
                                "event": "destruct",\
                                "args": {\
                                    "particle": "self",\
                                    "sound": "minecraft:block.glass.break"\
                                }\
                            }\
                        ]\
                    }\
                }\
                    }, \
        right_click:{ \
                "fallback": {\
                    "event": "trans",\
                    "args": {\
                        "index": "braised_pork_ribs_2",\
                        "func": "kaleidoscope_meals:effect/eat/braised_pork_ribs"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "braised_pork_ribs_1" 

# 【braised_pork_ribs_2】
data modify storage dc:index input.braised_pork_ribs_2 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1.5f}, \
    loot_table:"kaleidoscope_meals:braised_pork_ribs", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/braised_pork_ribs", \
            "minecraft:custom_model_data":{floats:[2]} \
        }, \
    }, \
    template:"kaleidoscope", \
    events:{ \
        "construct":[ \
            {event:"sound",args:{sound:"minecraft:block.copper_grate.place"}}, \
        ], \
        left_click:{ \
\
                "fallback": {\
                    "event": "group",\
                    "args": {\
                        "events": [\
                            {\
                                "event": "custom",\
                                "args": {\
                                    "func": "kaleidoscope:cookery/events/summon_plate",\
                                    "loot": "kaleidoscope_meals:reclaim/braised_pork_ribs"\
                                }\
                            },\
                            {\
                                "event": "destruct",\
                                "args": {\
                                    "particle": "self",\
                                    "sound": "minecraft:block.glass.break"\
                                }\
                            }\
                        ]\
                    }\
                }\
                    }, \
        right_click:{ \
                "fallback": {\
                    "event": "trans",\
                    "args": {\
                        "index": "braised_pork_ribs_3",\
                        "func": "kaleidoscope_meals:effect/eat/braised_pork_ribs"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "braised_pork_ribs_2" 

# 【braised_pork_ribs_3】
data modify storage dc:index input.braised_pork_ribs_3 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1.5f}, \
    loot_table:"kaleidoscope_meals:braised_pork_ribs", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/braised_pork_ribs", \
            "minecraft:custom_model_data":{floats:[3]} \
        }, \
    }, \
    template:"kaleidoscope", \
    events:{ \
        "construct":[ \
            {event:"sound",args:{sound:"minecraft:block.copper_grate.place"}}, \
        ], \
        left_click:{ \
\
                "fallback": {\
                    "event": "group",\
                    "args": {\
                        "events": [\
                            {\
                                "event": "custom",\
                                "args": {\
                                    "func": "kaleidoscope:cookery/events/summon_plate",\
                                    "loot": "kaleidoscope_meals:reclaim/braised_pork_ribs"\
                                }\
                            },\
                            {\
                                "event": "destruct",\
                                "args": {\
                                    "particle": "self",\
                                    "sound": "minecraft:block.glass.break"\
                                }\
                            }\
                        ]\
                    }\
                }\
                    }, \
        right_click:{ \
                "fallback": {\
                    "event": "trans",\
                    "args": {\
                        "index": "braised_pork_ribs_4",\
                        "func": "kaleidoscope_meals:effect/eat/braised_pork_ribs"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "braised_pork_ribs_3" 

# 【braised_pork_ribs_4】
data modify storage dc:index input.braised_pork_ribs_4 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1.5f}, \
    loot_table:"kaleidoscope_meals:braised_pork_ribs", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/braised_pork_ribs", \
            "minecraft:custom_model_data":{floats:[4]} \
        }, \
    }, \
    template:"kaleidoscope", \
    events:{ \
        "construct":[ \
            {event:"sound",args:{sound:"minecraft:block.copper_grate.place"}}, \
        ], \
        left_click:{ \
\
                "fallback": {\
                    "event": "group",\
                    "args": {\
                        "events": [\
                            {\
                                "event": "custom",\
                                "args": {\
                                    "func": "kaleidoscope:cookery/events/summon_plate",\
                                    "loot": "kaleidoscope_meals:reclaim/braised_pork_ribs"\
                                }\
                            },\
                            {\
                                "event": "destruct",\
                                "args": {\
                                    "particle": "self",\
                                    "sound": "minecraft:block.glass.break"\
                                }\
                            }\
                        ]\
                    }\
                }\
                    }, \
        right_click:{ \
                "fallback": {\
                    "event": "group",\
                    "args": {\
                        "events": [\
                            {\
                                "event": "custom",\
                                "args": {\
                                    "func": "kaleidoscope:cookery/events/reclaim_plate",\
                                    "loot": "kaleidoscope_meals:reclaim/braised_pork_ribs"\
                                }\
                            },\
                            {\
                                "event": "destruct"\
                            }\
                        ]\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "braised_pork_ribs_4" 

