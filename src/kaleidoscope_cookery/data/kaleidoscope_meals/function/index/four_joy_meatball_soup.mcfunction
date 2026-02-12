# 【four_joy_meatball_soup】四喜丸子汤
data modify storage dc:index input.four_joy_meatball_soup set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:four_joy_meatball_soup", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/four_joy_meatball_soup", \
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
                        "index": "four_joy_meatball_soup_1",\
                        "func": "kaleidoscope_meals:effect/eat/four_joy_meatball_soup"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "four_joy_meatball_soup" 

# 【four_joy_meatball_soup_1】
data modify storage dc:index input.four_joy_meatball_soup_1 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:four_joy_meatball_soup", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/four_joy_meatball_soup", \
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
                        "index": "four_joy_meatball_soup_2",\
                        "func": "kaleidoscope_meals:effect/eat/four_joy_meatball_soup"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "four_joy_meatball_soup_1" 

# 【four_joy_meatball_soup_2】
data modify storage dc:index input.four_joy_meatball_soup_2 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:four_joy_meatball_soup", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/four_joy_meatball_soup", \
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
                        "index": "four_joy_meatball_soup_3",\
                        "func": "kaleidoscope_meals:effect/eat/four_joy_meatball_soup"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "four_joy_meatball_soup_2" 

# 【four_joy_meatball_soup_3】
data modify storage dc:index input.four_joy_meatball_soup_3 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:four_joy_meatball_soup", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/four_joy_meatball_soup", \
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
                    "event": "trans",\
                    "args": {\
                        "index": "four_joy_meatball_soup_4",\
                        "func": "kaleidoscope_meals:effect/eat/four_joy_meatball_soup"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "four_joy_meatball_soup_3" 

# 【four_joy_meatball_soup_4】
data modify storage dc:index input.four_joy_meatball_soup_4 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:four_joy_meatball_soup", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/four_joy_meatball_soup", \
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
data modify storage dc:index keylist append value "four_joy_meatball_soup_4" 

