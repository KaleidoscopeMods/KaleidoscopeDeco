# 【warped_fungus_pot_soup】诡异菌瓦罐汤
data modify storage dc:index input.warped_fungus_pot_soup set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:warped_fungus_pot_soup", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/warped_fungus_pot_soup", \
            "minecraft:custom_model_data":{floats:[0]} \
        }, \
    }, \
    template:"kaleidoscope", \
    events:{ \
        "construct":[ \
            {event:"sound",args:{sound:"minecraft:block.decorated_pot.place"}}, \
        ], \
        left_click:{ \
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"decorated_pot\"}",sound:"minecraft:block.decorated_pot.break"}} \
        }, \
        right_click:{ \
                "fallback": {\
                    "event": "trans",\
                    "args": {\
                        "index": "warped_fungus_pot_soup_1",\
                        "func": "kaleidoscope_meals:effect/eat/warped_fungus_pot_soup"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "warped_fungus_pot_soup" 

# 【warped_fungus_pot_soup_1】
data modify storage dc:index input.warped_fungus_pot_soup_1 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:warped_fungus_pot_soup", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/warped_fungus_pot_soup", \
            "minecraft:custom_model_data":{floats:[1]} \
        }, \
    }, \
    template:"kaleidoscope", \
    events:{ \
        "construct":[ \
            {event:"sound",args:{sound:"minecraft:block.decorated_pot.place"}}, \
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
                                    "particle": "block{block_state:\"decorated_pot\"}",\
                                    "sound": "minecraft:block.decorated_pot.break"\
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
                        "index": "warped_fungus_pot_soup_2",\
                        "func": "kaleidoscope_meals:effect/eat/warped_fungus_pot_soup"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "warped_fungus_pot_soup_1" 

# 【warped_fungus_pot_soup_2】
data modify storage dc:index input.warped_fungus_pot_soup_2 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:warped_fungus_pot_soup", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/warped_fungus_pot_soup", \
            "minecraft:custom_model_data":{floats:[2]} \
        }, \
    }, \
    template:"kaleidoscope", \
    events:{ \
        "construct":[ \
            {event:"sound",args:{sound:"minecraft:block.decorated_pot.place"}}, \
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
                                    "particle": "block{block_state:\"decorated_pot\"}",\
                                    "sound": "minecraft:block.decorated_pot.break"\
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
data modify storage dc:index keylist append value "warped_fungus_pot_soup_2" 

