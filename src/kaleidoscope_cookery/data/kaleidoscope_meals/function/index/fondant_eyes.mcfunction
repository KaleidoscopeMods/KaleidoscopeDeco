# 【fondant_eyes】翻糖蛛眼
data modify storage dc:index input.fondant_eyes set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:fondant_eyes", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/fondant_eyes", \
            "minecraft:custom_model_data":{floats:[0]} \
        }, \
    }, \
    template:"kaleidoscope", \
    events:{ \
        "construct":[ \
            {event:"sound",args:{sound:"minecraft:block.wood.place"}}, \
        ], \
        left_click:{ \
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"oak_planks\"}",sound:"minecraft:block.wood.break"}} \
        }, \
        right_click:{ \
                "fallback": {\
                    "event": "trans",\
                    "args": {\
                        "index": "fondant_eyes_1",\
                        "func": "kaleidoscope_meals:effect/eat/fondant_eyes"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "fondant_eyes" 

# 【fondant_eyes_1】
data modify storage dc:index input.fondant_eyes_1 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:fondant_eyes", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/fondant_eyes", \
            "minecraft:custom_model_data":{floats:[1]} \
        }, \
    }, \
    template:"kaleidoscope", \
    events:{ \
        "construct":[ \
            {event:"sound",args:{sound:"minecraft:block.wood.place"}}, \
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
                                    "particle": "block{block_state:\"oak_planks\"}",\
                                    "sound": "minecraft:block.wood.break"\
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
                        "index": "fondant_eyes_2",\
                        "func": "kaleidoscope_meals:effect/eat/fondant_eyes"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "fondant_eyes_1" 

# 【fondant_eyes_2】
data modify storage dc:index input.fondant_eyes_2 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:fondant_eyes", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/fondant_eyes", \
            "minecraft:custom_model_data":{floats:[2]} \
        }, \
    }, \
    template:"kaleidoscope", \
    events:{ \
        "construct":[ \
            {event:"sound",args:{sound:"minecraft:block.wood.place"}}, \
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
                                    "particle": "block{block_state:\"oak_planks\"}",\
                                    "sound": "minecraft:block.wood.break"\
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
                        "index": "fondant_eyes_3",\
                        "func": "kaleidoscope_meals:effect/eat/fondant_eyes"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "fondant_eyes_2" 

# 【fondant_eyes_3】
data modify storage dc:index input.fondant_eyes_3 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:fondant_eyes", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/fondant_eyes", \
            "minecraft:custom_model_data":{floats:[3]} \
        }, \
    }, \
    template:"kaleidoscope", \
    events:{ \
        "construct":[ \
            {event:"sound",args:{sound:"minecraft:block.wood.place"}}, \
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
                                    "particle": "block{block_state:\"oak_planks\"}",\
                                    "sound": "minecraft:block.wood.break"\
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
                        "index": "fondant_eyes_4",\
                        "func": "kaleidoscope_meals:effect/eat/fondant_eyes"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "fondant_eyes_3" 

# 【fondant_eyes_4】
data modify storage dc:index input.fondant_eyes_4 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:fondant_eyes", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/fondant_eyes", \
            "minecraft:custom_model_data":{floats:[4]} \
        }, \
    }, \
    template:"kaleidoscope", \
    events:{ \
        "construct":[ \
            {event:"sound",args:{sound:"minecraft:block.wood.place"}}, \
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
                                    "particle": "block{block_state:\"oak_planks\"}",\
                                    "sound": "minecraft:block.wood.break"\
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
data modify storage dc:index keylist append value "fondant_eyes_4" 

