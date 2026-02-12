# 【oil_splashed_fish】油泼鱼
data modify storage dc:index input.oil_splashed_fish set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1.5f}, \
    loot_table:"kaleidoscope_meals:oil_splashed_fish", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/oil_splashed_fish", \
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
                        "index": "oil_splashed_fish_1",\
                        "func": "kaleidoscope_meals:effect/eat/oil_splashed_fish"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "oil_splashed_fish" 

# 【oil_splashed_fish_1】
data modify storage dc:index input.oil_splashed_fish_1 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1.5f}, \
    loot_table:"kaleidoscope_meals:oil_splashed_fish", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/oil_splashed_fish", \
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
                                    "loot": "kaleidoscope_meals:reclaim/oil_splashed_fish"\
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
                        "index": "oil_splashed_fish_2",\
                        "func": "kaleidoscope_meals:effect/eat/oil_splashed_fish"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "oil_splashed_fish_1" 

# 【oil_splashed_fish_2】
data modify storage dc:index input.oil_splashed_fish_2 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1.5f}, \
    loot_table:"kaleidoscope_meals:oil_splashed_fish", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/oil_splashed_fish", \
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
                                    "loot": "kaleidoscope_meals:reclaim/oil_splashed_fish"\
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
                        "index": "oil_splashed_fish_3",\
                        "func": "kaleidoscope_meals:effect/eat/oil_splashed_fish"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "oil_splashed_fish_2" 

# 【oil_splashed_fish_3】
data modify storage dc:index input.oil_splashed_fish_3 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1.5f}, \
    loot_table:"kaleidoscope_meals:oil_splashed_fish", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/oil_splashed_fish", \
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
                                    "loot": "kaleidoscope_meals:reclaim/oil_splashed_fish"\
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
                        "index": "oil_splashed_fish_4",\
                        "func": "kaleidoscope_meals:effect/eat/oil_splashed_fish"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "oil_splashed_fish_3" 

# 【oil_splashed_fish_4】
data modify storage dc:index input.oil_splashed_fish_4 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1.5f}, \
    loot_table:"kaleidoscope_meals:oil_splashed_fish", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/oil_splashed_fish", \
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
                                    "loot": "kaleidoscope_meals:reclaim/oil_splashed_fish"\
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
                        "index": "oil_splashed_fish_5",\
                        "func": "kaleidoscope_meals:effect/eat/oil_splashed_fish"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "oil_splashed_fish_4" 

# 【oil_splashed_fish_5】
data modify storage dc:index input.oil_splashed_fish_5 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1.5f}, \
    loot_table:"kaleidoscope_meals:oil_splashed_fish", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/oil_splashed_fish", \
            "minecraft:custom_model_data":{floats:[5]} \
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
                                    "loot": "kaleidoscope_meals:reclaim/oil_splashed_fish"\
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
                                    "loot": "kaleidoscope_meals:reclaim/oil_splashed_fish"\
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
data modify storage dc:index keylist append value "oil_splashed_fish_5" 

