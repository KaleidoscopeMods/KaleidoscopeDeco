# 【mutton_amethyst】水晶羊排
data modify storage dc:index input.mutton_amethyst set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:mutton_amethyst", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/mutton_amethyst", \
            "minecraft:custom_model_data":{floats:[0]} \
        }, \
    }, \
    template:"kaleidoscope", \
    events:{ \
        "construct":[ \
            {event:"sound",args:{sound:"minecraft:block.wood.place"}}, \
        ], \
        left_click:{ \
            fallback:{event:"destruct",args:{item:{},particle:"self",sound:"minecraft:block.wood.break"}} \
        }, \
        right_click:{ \
                "fallback": {\
                    "event": "trans",\
                    "args": {\
                        "index": "mutton_amethyst_1",\
                        "func": "kaleidoscope_meals:effect/eat/mutton_amethyst"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "mutton_amethyst" 

# 【mutton_amethyst_1】
data modify storage dc:index input.mutton_amethyst_1 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:mutton_amethyst", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/mutton_amethyst", \
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
                                    "loot": "kaleidoscope_meals:reclaim/mutton_amethyst"\
                                }\
                            },\
                            {\
                                "event": "destruct",\
                                "args": {\
                                    "particle": "self",\
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
                        "index": "mutton_amethyst_2",\
                        "func": "kaleidoscope_meals:effect/eat/mutton_amethyst"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "mutton_amethyst_1" 

# 【mutton_amethyst_2】
data modify storage dc:index input.mutton_amethyst_2 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:mutton_amethyst", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/mutton_amethyst", \
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
                                    "loot": "kaleidoscope_meals:reclaim/mutton_amethyst"\
                                }\
                            },\
                            {\
                                "event": "destruct",\
                                "args": {\
                                    "particle": "self",\
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
                        "index": "mutton_amethyst_3",\
                        "func": "kaleidoscope_meals:effect/eat/mutton_amethyst"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "mutton_amethyst_2" 

# 【mutton_amethyst_3】
data modify storage dc:index input.mutton_amethyst_3 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:mutton_amethyst", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/mutton_amethyst", \
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
                                    "loot": "kaleidoscope_meals:reclaim/mutton_amethyst"\
                                }\
                            },\
                            {\
                                "event": "destruct",\
                                "args": {\
                                    "particle": "self",\
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
                                    "loot": "kaleidoscope_meals:reclaim/mutton_amethyst"\
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
data modify storage dc:index keylist append value "mutton_amethyst_3" 

