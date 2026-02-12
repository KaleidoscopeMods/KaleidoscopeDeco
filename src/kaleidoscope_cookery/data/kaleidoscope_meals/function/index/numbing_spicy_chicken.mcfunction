# 【numbing_spicy_chicken】椒麻鸡
data modify storage dc:index input.numbing_spicy_chicken set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:numbing_spicy_chicken", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/numbing_spicy_chicken", \
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
                        "index": "numbing_spicy_chicken_1",\
                        "func": "kaleidoscope_meals:effect/eat/numbing_spicy_chicken"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "numbing_spicy_chicken" 

# 【numbing_spicy_chicken_1】
data modify storage dc:index input.numbing_spicy_chicken_1 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:numbing_spicy_chicken", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/numbing_spicy_chicken", \
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
                                    "func": "kaleidoscope:cookery/events/summon_plate"\
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
                        "index": "numbing_spicy_chicken_2",\
                        "func": "kaleidoscope_meals:effect/eat/numbing_spicy_chicken"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "numbing_spicy_chicken_1" 

# 【numbing_spicy_chicken_2】
data modify storage dc:index input.numbing_spicy_chicken_2 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:numbing_spicy_chicken", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/numbing_spicy_chicken", \
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
                                    "func": "kaleidoscope:cookery/events/summon_plate"\
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
                        "index": "numbing_spicy_chicken_3",\
                        "func": "kaleidoscope_meals:effect/eat/numbing_spicy_chicken"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "numbing_spicy_chicken_2" 

# 【numbing_spicy_chicken_3】
data modify storage dc:index input.numbing_spicy_chicken_3 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:numbing_spicy_chicken", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/numbing_spicy_chicken", \
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
                                    "func": "kaleidoscope:cookery/events/summon_plate"\
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
                                    "func": "kaleidoscope:cookery/events/reclaim_plate"\
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
data modify storage dc:index keylist append value "numbing_spicy_chicken_3" 

