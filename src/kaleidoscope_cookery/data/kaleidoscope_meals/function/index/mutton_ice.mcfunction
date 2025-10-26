# 【mutton_ice】凛冬羊排
data modify storage dc:index input.mutton_ice set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:mutton_ice", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/mutton_ice", \
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
                        "index": "mutton_ice_1",\
                        "func": "kaleidoscope_meals:effect/eat/mutton_ice"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "mutton_ice" 

# 【mutton_ice_1】
data modify storage dc:index input.mutton_ice_1 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:mutton_ice", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/mutton_ice", \
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
                                    "func": "kaleidoscope:cookery/events/summon_plate",\
                                    "loot": "kaleidoscope_meals:reclaim/mutton_ice"\
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
                        "index": "mutton_ice_2",\
                        "func": "kaleidoscope_meals:effect/eat/mutton_ice"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "mutton_ice_1" 

# 【mutton_ice_2】
data modify storage dc:index input.mutton_ice_2 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:mutton_ice", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/mutton_ice", \
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
                                    "func": "kaleidoscope:cookery/events/summon_plate",\
                                    "loot": "kaleidoscope_meals:reclaim/mutton_ice"\
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
                        "index": "mutton_ice_3",\
                        "func": "kaleidoscope_meals:effect/eat/mutton_ice"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "mutton_ice_2" 

# 【mutton_ice_3】
data modify storage dc:index input.mutton_ice_3 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:mutton_ice", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/mutton_ice", \
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
                                    "func": "kaleidoscope:cookery/events/summon_plate",\
                                    "loot": "kaleidoscope_meals:reclaim/mutton_ice"\
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
                                    "func": "kaleidoscope:cookery/events/reclaim_plate",\
                                    "loot": "kaleidoscope_meals:reclaim/mutton_ice"\
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
data modify storage dc:index keylist append value "mutton_ice_3" 

