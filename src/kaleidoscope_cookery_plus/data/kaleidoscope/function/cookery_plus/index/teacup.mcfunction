# 【teacup_1】茶杯
data modify storage dc:index input.teacup_1 set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.3f,width:1f},\
    loot_table:"kaleidoscope:cookery_plus/teacup",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_cookery_plus:teacup","minecraft:custom_model_data":{"floats":[1]}}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.decorated_pot.step"}}\
        ],\
        left_click:{\
            fallback:{event:"group",args:{events:[{event:"custom",args:{func:"kaleidoscope:cookery_plus/events/extra_loot",loot_table:"kaleidoscope:cookery_plus/teacup"}},{event:"destruct",args:{particle:"block{block_state:\"decorated_pot\"}",sound:"minecraft:block.decorated_pot.hit"}}]}}\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"teacup_2",func:"kaleidoscope:cookery_plus/trans/teacup/add"},\
                    item:{id:"cow_spawn_egg","components":{"minecraft:custom_data":{kaleidoscope:"teacup"}}}\
                },\
                {\
                    event:"group",\
                    args:{\
                        events:[\
                            {\
                                event:"custom",\
                                args:{\
                                    func:"kaleidoscope:cookery_plus/events/destruct/teacup",\
                                }\
                            },\
                            {\
                                event:"destruct"\
                            }\
                        ]\
                    },\
                    item:{id:"air"}\
                }\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "teacup_1"

# 【teacup_2】茶杯
data modify storage dc:index input.teacup_2 set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.3f,width:1f},\
    loot_table:"kaleidoscope:cookery_plus/teacup",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_cookery_plus:teacup","minecraft:custom_model_data":{"floats":[2]}}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.decorated_pot.step"}}\
        ],\
        left_click:{\
            fallback:{event:"group",args:{events:[{event:"custom",args:{func:"kaleidoscope:cookery_plus/events/extra_loot",loot_table:"kaleidoscope:cookery_plus/teacup/2"}},{event:"destruct",args:{particle:"block{block_state:\"decorated_pot\"}",sound:"minecraft:block.decorated_pot.hit"}}]}}\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"teacup_3",func:"kaleidoscope:cookery_plus/trans/teacup/add"},\
                    item:{id:"cow_spawn_egg","components":{"minecraft:custom_data":{kaleidoscope:"teacup"}}}\
                },\
                {\
                    event:"trans",\
                    args:{index:"teacup_1",func:"kaleidoscope:cookery_plus/trans/teacup/take"},\
                    item:{id:"air"}\
                },\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "teacup_2"

# 【teacup_3】茶杯
data modify storage dc:index input.teacup_3 set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.3f,width:1f},\
    loot_table:"kaleidoscope:cookery_plus/teacup",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_cookery_plus:teacup","minecraft:custom_model_data":{"floats":[3]}}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.decorated_pot.step"}}\
        ],\
        left_click:{\
            fallback:{event:"group",args:{events:[{event:"custom",args:{func:"kaleidoscope:cookery_plus/events/extra_loot",loot_table:"kaleidoscope:cookery_plus/teacup/3"}},{event:"destruct",args:{particle:"block{block_state:\"decorated_pot\"}",sound:"minecraft:block.decorated_pot.hit"}}]}}\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"teacup_4",func:"kaleidoscope:cookery_plus/trans/teacup/add"},\
                    item:{id:"cow_spawn_egg","components":{"minecraft:custom_data":{kaleidoscope:"teacup"}}}\
                },\
                {\
                    event:"trans",\
                    args:{index:"teacup_2",func:"kaleidoscope:cookery_plus/trans/teacup/take"},\
                    item:{id:"air"}\
                },\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "teacup_3"

# 【teacup_4】茶杯
data modify storage dc:index input.teacup_4 set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.3f,width:1f},\
    loot_table:"kaleidoscope:cookery_plus/teacup",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_cookery_plus:teacup","minecraft:custom_model_data":{"floats":[4]}}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.decorated_pot.step"}}\
        ],\
        left_click:{\
            fallback:{event:"group",args:{events:[{event:"custom",args:{func:"kaleidoscope:cookery_plus/events/extra_loot",loot_table:"kaleidoscope:cookery_plus/teacup/4"}},{event:"destruct",args:{particle:"block{block_state:\"decorated_pot\"}",sound:"minecraft:block.decorated_pot.hit"}}]}}\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"teacup_3",func:"kaleidoscope:cookery_plus/trans/teacup/take"},\
                    item:{id:"air"}\
                },\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "teacup_4"

