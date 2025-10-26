# 【pearl_meal】珍珠咕噜饭
data modify storage dc:index input.pearl_meal set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:pearl_meal", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/pearl_meal", \
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
                        "index": "pearl_meal_1",\
                        "func": "kaleidoscope_meals:effect/eat/pearl_meal"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "pearl_meal" 

# 【pearl_meal_1】
data modify storage dc:index input.pearl_meal_1 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:pearl_meal", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/pearl_meal", \
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
                        "index": "pearl_meal_2",\
                        "func": "kaleidoscope_meals:effect/eat/pearl_meal"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "pearl_meal_1" 

# 【pearl_meal_2】
data modify storage dc:index input.pearl_meal_2 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:pearl_meal", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/pearl_meal", \
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
                        "index": "pearl_meal_3",\
                        "func": "kaleidoscope_meals:effect/eat/pearl_meal"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "pearl_meal_2" 

# 【pearl_meal_3】
data modify storage dc:index input.pearl_meal_3 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:pearl_meal", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/pearl_meal", \
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
data modify storage dc:index keylist append value "pearl_meal_3" 

