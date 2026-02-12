# 【fried_spring_roll】炸春卷
data modify storage dc:index input.fried_spring_roll set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:fried_spring_roll", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/fried_spring_roll", \
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
                        "index": "fried_spring_roll_1",\
                        "func": "kaleidoscope_meals:effect/eat/fried_spring_roll"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "fried_spring_roll" 

# 【fried_spring_roll_1】
data modify storage dc:index input.fried_spring_roll_1 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:fried_spring_roll", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/fried_spring_roll", \
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
                        "index": "fried_spring_roll_2",\
                        "func": "kaleidoscope_meals:effect/eat/fried_spring_roll"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "fried_spring_roll_1" 

# 【fried_spring_roll_2】
data modify storage dc:index input.fried_spring_roll_2 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:fried_spring_roll", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/fried_spring_roll", \
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
                        "index": "fried_spring_roll_3",\
                        "func": "kaleidoscope_meals:effect/eat/fried_spring_roll"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "fried_spring_roll_2" 

# 【fried_spring_roll_3】
data modify storage dc:index input.fried_spring_roll_3 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:fried_spring_roll", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/fried_spring_roll", \
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
data modify storage dc:index keylist append value "fried_spring_roll_3" 

