# 【knight_steak】香煎骑士牛排
data modify storage dc:index input.knight_steak set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:knight_steak", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/knight_steak", \
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
                        "index": "knight_steak_1",\
                        "func": "kaleidoscope_meals:effect/eat/knight_steak"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "knight_steak" 

# 【knight_steak_1】
data modify storage dc:index input.knight_steak_1 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:knight_steak", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/knight_steak", \
            "minecraft:custom_model_data":{floats:[1]} \
        }, \
    }, \
    template:"kaleidoscope", \
    events:{ \
        "construct":[ \
            {event:"sound",args:{sound:"minecraft:block.wood.place"}}, \
        ], \
        left_click:{ \
            fallback:{event:"destruct",args:{item:{mode:"replace",item:{id:"bowl"}},particle:"block{block_state:\"oak_planks\"}",sound:"minecraft:block.wood.break"}} \
        }, \
        right_click:{ \
                "fallback": {\
                    "event": "trans",\
                    "args": {\
                        "index": "knight_steak_2",\
                        "func": "kaleidoscope_meals:effect/eat/knight_steak"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "knight_steak_1" 

# 【knight_steak_2】
data modify storage dc:index input.knight_steak_2 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:knight_steak", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/knight_steak", \
            "minecraft:custom_model_data":{floats:[2]} \
        }, \
    }, \
    template:"kaleidoscope", \
    events:{ \
        "construct":[ \
            {event:"sound",args:{sound:"minecraft:block.wood.place"}}, \
        ], \
        left_click:{ \
            fallback:{event:"destruct",args:{item:{mode:"replace",item:{id:"bowl"}},particle:"block{block_state:\"oak_planks\"}",sound:"minecraft:block.wood.break"}} \
        }, \
        right_click:{ \
                "fallback": {\
                    "event": "trans",\
                    "args": {\
                        "index": "knight_steak_3",\
                        "func": "kaleidoscope_meals:effect/eat/knight_steak"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "knight_steak_2" 

# 【knight_steak_3】
data modify storage dc:index input.knight_steak_3 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:knight_steak", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/knight_steak", \
            "minecraft:custom_model_data":{floats:[3]} \
        }, \
    }, \
    template:"kaleidoscope", \
    events:{ \
        "construct":[ \
            {event:"sound",args:{sound:"minecraft:block.wood.place"}}, \
        ], \
        left_click:{ \
            fallback:{event:"destruct",args:{item:{mode:"replace",item:{id:"bowl"}},particle:"block{block_state:\"oak_planks\"}",sound:"minecraft:block.wood.break"}} \
        }, \
        right_click:{ \
                "fallback": {\
                    "event": "trans",\
                    "args": {\
                        "index": "knight_steak_4",\
                        "func": "kaleidoscope_meals:effect/eat/knight_steak"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "knight_steak_3" 

# 【knight_steak_4】
data modify storage dc:index input.knight_steak_4 set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:knight_steak", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/knight_steak", \
            "minecraft:custom_model_data":{floats:[4]} \
        }, \
    }, \
    template:"kaleidoscope", \
    events:{ \
        "construct":[ \
            {event:"sound",args:{sound:"minecraft:block.wood.place"}}, \
        ], \
        left_click:{ \
            fallback:{event:"destruct",args:{item:{mode:"replace",item:{id:"bowl"}},particle:"block{block_state:\"oak_planks\"}",sound:"minecraft:block.wood.break"}} \
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
                                "event": "destruct",\
                            }\
                        ]\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "knight_steak_4" 

