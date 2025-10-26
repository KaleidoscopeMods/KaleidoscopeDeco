# 【golden_salad】黄金沙拉
data modify storage dc:index input.golden_salad set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:golden_salad", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/golden_salad", \
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
                        "index": "golden_salad_1",\
                        "func": "kaleidoscope_meals:effect/eat/golden_salad"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "golden_salad" 

# 【golden_salad_1】
data modify storage dc:index input.golden_salad_1 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:golden_salad", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/golden_salad", \
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
                        "index": "golden_salad_2",\
                        "func": "kaleidoscope_meals:effect/eat/golden_salad"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "golden_salad_1" 

# 【golden_salad_2】
data modify storage dc:index input.golden_salad_2 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:golden_salad", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/golden_salad", \
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
                        "index": "golden_salad_3",\
                        "func": "kaleidoscope_meals:effect/eat/golden_salad"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "golden_salad_2" 

# 【golden_salad_3】
data modify storage dc:index input.golden_salad_3 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:golden_salad", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/golden_salad", \
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
                        "index": "golden_salad_4",\
                        "func": "kaleidoscope_meals:effect/eat/golden_salad"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "golden_salad_3" 

# 【golden_salad_4】
data modify storage dc:index input.golden_salad_4 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:golden_salad", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/golden_salad", \
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
                    "event": "trans",\
                    "args": {\
                        "index": "golden_salad_5",\
                        "func": "kaleidoscope_meals:effect/eat/golden_salad"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "golden_salad_4" 

# 【golden_salad_5】
data modify storage dc:index input.golden_salad_5 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:golden_salad", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/golden_salad", \
            "minecraft:custom_model_data":{floats:[5]} \
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
                        "index": "golden_salad_6",\
                        "func": "kaleidoscope_meals:effect/eat/golden_salad"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "golden_salad_5" 

# 【golden_salad_6】
data modify storage dc:index input.golden_salad_6 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:golden_salad", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/golden_salad", \
            "minecraft:custom_model_data":{floats:[6]} \
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
data modify storage dc:index keylist append value "golden_salad_6" 

