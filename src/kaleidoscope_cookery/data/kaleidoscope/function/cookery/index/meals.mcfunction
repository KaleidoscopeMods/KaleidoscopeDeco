# 【meal_plate】吃完的碗
data modify storage dc:index input.meal_plate set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.3f,width:1f},\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_cookery:meals/plate"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.wood.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{mode:"replace",item:{id:"bowl"}},particle:"self",sound:"minecraft:block.wood.break"}}\
        },\
        right_click:{\
            fallback:{event:"group",args:{events:[{event:"custom",args:{func:"kaleidoscope:cookery/events/reclaim_plate"}},{event:"destruct"}]}}\
        }\
    }\
}
data modify storage dc:index keylist append value "meal_plate"

# 【semi_meal】半成品炒菜
data modify storage dc:index input.semi_meal set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.3f,width:1f},\
    loot_table:"kaleidoscope_meals:semi",\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.wood.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"self",sound:"minecraft:block.wood.break"}}\
        },\
        right_click:{\
            fallback:{event:"group",args:{events:[{event:"custom",args:{func:"kaleidoscope:cookery/events/reclaim_plate"}},{event:"destruct"}]}}\
        }\
    }\
}
data modify storage dc:index keylist append value "semi_meal"

# 【dark_meal】烧焦的炒菜
data modify storage dc:index input.dark_meal set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.3f,width:1f},\
    loot_table:"kaleidoscope_meals:overburnt",\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.wood.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"self",sound:"minecraft:block.wood.break"}}\
        },\
        right_click:{\
            fallback:{event:"group",args:{events:[{event:"custom",args:{func:"kaleidoscope:cookery/events/reclaim_plate"}},{event:"destruct"}]}}\
        }\
    }\
}
data modify storage dc:index keylist append value "dark_meal"

# 【mysterious】迷之炒菜
data modify storage dc:index input.mysterious set value { \
    modsize:[1f,1f,1f], \
    interactsize:{height:0.3f,width:1f}, \
    loot_table:"kaleidoscope_meals:mysterious", \
    item:{ \
        components:{ \
            "minecraft:item_model":"kaleidoscope_cookery:meals/mysterious", \
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
                        "index": "meal_plate",\
                        "func": "kaleidoscope_meals:effect/eat/mysterious"\
                    }\
                }\
            } \
    } \
} 
data modify storage dc:index keylist append value "mysterious" 

# 菜品相关
function #kaleidoscope_meals:meals