# 【cold_roasted_meat】冷肉炙
data modify storage dc:index input.cold_roasted_meat set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1.5f}, \
    loot_table:"kaleidoscope_meals:cold_roasted_meat", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/cold_roasted_meat", \
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
                        "index": "cold_roasted_meat_1",\
                        "func": "kaleidoscope_meals:effect/eat/cold_roasted_meat"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "cold_roasted_meat" 

# 【cold_roasted_meat_1】
data modify storage dc:index input.cold_roasted_meat_1 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1.5f}, \
    loot_table:"kaleidoscope_meals:cold_roasted_meat", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/cold_roasted_meat", \
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
                                    "loot": "kaleidoscope_meals:reclaim/cold_roasted_meat"\
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
                        "index": "cold_roasted_meat_2",\
                        "func": "kaleidoscope_meals:effect/eat/cold_roasted_meat"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "cold_roasted_meat_1" 

# 【cold_roasted_meat_2】
data modify storage dc:index input.cold_roasted_meat_2 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1.5f}, \
    loot_table:"kaleidoscope_meals:cold_roasted_meat", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/cold_roasted_meat", \
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
                                    "loot": "kaleidoscope_meals:reclaim/cold_roasted_meat"\
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
                        "index": "cold_roasted_meat_3",\
                        "func": "kaleidoscope_meals:effect/eat/cold_roasted_meat"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "cold_roasted_meat_2" 

# 【cold_roasted_meat_3】
data modify storage dc:index input.cold_roasted_meat_3 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1.5f}, \
    loot_table:"kaleidoscope_meals:cold_roasted_meat", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/cold_roasted_meat", \
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
                                    "loot": "kaleidoscope_meals:reclaim/cold_roasted_meat"\
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
                                    "loot": "kaleidoscope_meals:reclaim/cold_roasted_meat"\
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
data modify storage dc:index keylist append value "cold_roasted_meat_3" 

