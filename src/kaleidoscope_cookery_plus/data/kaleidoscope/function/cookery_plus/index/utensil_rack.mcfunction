# 【utensil_rack_0】厨具架
data modify storage dc:index input.utensil_rack_0 set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:1f},\
    loot_table:"kaleidoscope:cookery_plus/utensil_rack",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_cookery_plus:utensil_rack","minecraft:custom_model_data":{"floats":[0]}}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.wood.place"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"stripped_oak_log\"}",sound:"minecraft:block.wood.break"}}\
        },\
        right_click:{\
            fallback:{\
                    event:"trans",\
                    args:{index:"utensil_rack_1",func:"kaleidoscope:cookery_plus/trans/utensil_rack"},\
                }\
        }\
    }\
}
data modify storage dc:index keylist append value "utensil_rack_0"

# 【utensil_rack_1】厨具架
data modify storage dc:index input.utensil_rack_1 set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:1f},\
    loot_table:"kaleidoscope:cookery_plus/utensil_rack",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_cookery_plus:utensil_rack","minecraft:custom_model_data":{"floats":[1]}}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.wood.place"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"stripped_oak_log\"}",sound:"minecraft:block.wood.break"}}\
        },\
        right_click:{\
            fallback:{\
                    event:"trans",\
                    args:{index:"utensil_rack_2",func:"kaleidoscope:cookery_plus/trans/utensil_rack"},\
                }\
        }\
    }\
}
data modify storage dc:index keylist append value "utensil_rack_1"

# 【utensil_rack_2】厨具架
data modify storage dc:index input.utensil_rack_2 set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:1f},\
    loot_table:"kaleidoscope:cookery_plus/utensil_rack",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_cookery_plus:utensil_rack","minecraft:custom_model_data":{"floats":[2]}}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.wood.place"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"stripped_oak_log\"}",sound:"minecraft:block.wood.break"}}\
        },\
        right_click:{\
            fallback:{\
                    event:"trans",\
                    args:{index:"utensil_rack_3",func:"kaleidoscope:cookery_plus/trans/utensil_rack"},\
                }\
        }\
    }\
}
data modify storage dc:index keylist append value "utensil_rack_2"

# 【utensil_rack_3】厨具架
data modify storage dc:index input.utensil_rack_3 set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:1f},\
    loot_table:"kaleidoscope:cookery_plus/utensil_rack",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_cookery_plus:utensil_rack","minecraft:custom_model_data":{"floats":[3]}}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.wood.place"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"stripped_oak_log\"}",sound:"minecraft:block.wood.break"}}\
        },\
        right_click:{\
            fallback:{\
                    event:"trans",\
                    args:{index:"utensil_rack_4",func:"kaleidoscope:cookery_plus/trans/utensil_rack"},\
                }\
        }\
    }\
}
data modify storage dc:index keylist append value "utensil_rack_3"

# 【utensil_rack_4】厨具架
data modify storage dc:index input.utensil_rack_4 set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:1f},\
    loot_table:"kaleidoscope:cookery_plus/utensil_rack",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_cookery_plus:utensil_rack","minecraft:custom_model_data":{"floats":[4]}}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.wood.place"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"stripped_oak_log\"}",sound:"minecraft:block.wood.break"}}\
        },\
        right_click:{\
            fallback:{\
                    event:"trans",\
                    args:{index:"utensil_rack_5",func:"kaleidoscope:cookery_plus/trans/utensil_rack"},\
                }\
        }\
    }\
}
data modify storage dc:index keylist append value "utensil_rack_4"

# 【utensil_rack_5】厨具架
data modify storage dc:index input.utensil_rack_5 set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:1f},\
    loot_table:"kaleidoscope:cookery_plus/utensil_rack",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_cookery_plus:utensil_rack","minecraft:custom_model_data":{"floats":[5]}}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.wood.place"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"stripped_oak_log\"}",sound:"minecraft:block.wood.break"}}\
        },\
        right_click:{\
            fallback:{\
                    event:"trans",\
                    args:{index:"utensil_rack_0",func:"kaleidoscope:cookery_plus/trans/utensil_rack"},\
                }\
        }\
    }\
}
data modify storage dc:index keylist append value "utensil_rack_5"

