# 【spicy_rabbit_head】麻辣兔头
data modify storage dc:index input.spicy_rabbit_head set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:spicy_rabbit_head", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/spicy_rabbit_head", \
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
                        "index": "spicy_rabbit_head_1",\
                        "func": "kaleidoscope_meals:effect/eat/spicy_rabbit_head"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "spicy_rabbit_head" 

# 【spicy_rabbit_head_1】
data modify storage dc:index input.spicy_rabbit_head_1 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:spicy_rabbit_head", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/spicy_rabbit_head", \
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
                        "index": "spicy_rabbit_head_2",\
                        "func": "kaleidoscope_meals:effect/eat/spicy_rabbit_head"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "spicy_rabbit_head_1" 

# 【spicy_rabbit_head_2】
data modify storage dc:index input.spicy_rabbit_head_2 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:spicy_rabbit_head", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/spicy_rabbit_head", \
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
                        "index": "spicy_rabbit_head_3",\
                        "func": "kaleidoscope_meals:effect/eat/spicy_rabbit_head"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "spicy_rabbit_head_2" 

# 【spicy_rabbit_head_3】
data modify storage dc:index input.spicy_rabbit_head_3 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:spicy_rabbit_head", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/spicy_rabbit_head", \
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
data modify storage dc:index keylist append value "spicy_rabbit_head_3" 

