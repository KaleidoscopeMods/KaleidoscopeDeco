# 【fishrack_0】挂鱼勾_0
data modify storage dc:index input.fishrack_0 set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:1f},\
    loot_table:"kaleidoscope:cookery_plus/fishrack",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_cookery_plus:fishrack"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.wood.hit"}},\
            {event:"custom",args:{func:"kaleidoscope:cookery_plus/events/construct/fishrack"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"oak_planks\"}",sound:"minecraft:block.wood.break"}}\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"fishrack_1",func:"kaleidoscope:cookery_plus/trans/fishrack/add_fish"},\
                    item:{id:"#kaleidoscope:fish"}\
                },\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "fishrack_0"

# 【fishrack_1】挂鱼勾_1
data modify storage dc:index input.fishrack_1 set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:1f},\
    loot_table:"kaleidoscope:cookery_plus/fishrack",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_cookery_plus:fishrack"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.wood.hit"}},\
        ],\
        left_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"custom",args:{func:"kaleidoscope:cookery_plus/events/destruct/fishrack"}},\
                        {event:"destruct",args:{item:{},particle:"block{block_state:\"oak_planks\"}",sound:"minecraft:block.wood.break"}}\
                        ]\
                    }\
                }\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"fishrack_2",func:"kaleidoscope:cookery_plus/trans/fishrack/add_fish"},\
                    item:{id:"#kaleidoscope:fish"}\
                },\
                {\
                    event:"trans",\
                    args:{index:"fishrack_0",func:"kaleidoscope:cookery_plus/trans/fishrack/take_fish"},\
                    item:{id:"air"}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "fishrack_1"

# 【fishrack_2】挂鱼勾_2
data modify storage dc:index input.fishrack_2 set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:1f},\
    loot_table:"kaleidoscope:cookery_plus/fishrack",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_cookery_plus:fishrack"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.wood.hit"}},\
        ],\
        left_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"custom",args:{func:"kaleidoscope:cookery_plus/events/destruct/fishrack"}},\
                        {event:"destruct",args:{item:{},particle:"block{block_state:\"oak_planks\"}",sound:"minecraft:block.wood.break"}}\
                        ]\
                    }\
                }\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"fishrack_3",func:"kaleidoscope:cookery_plus/trans/fishrack/add_fish"},\
                    item:{id:"#kaleidoscope:fish"}\
                },\
                {\
                    event:"trans",\
                    args:{index:"fishrack_1",func:"kaleidoscope:cookery_plus/trans/fishrack/take_fish"},\
                    item:{id:"air"}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "fishrack_2"

# 【fishrack_3】挂鱼勾_3
data modify storage dc:index input.fishrack_3 set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:1f},\
    loot_table:"kaleidoscope:cookery_plus/fishrack",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_cookery_plus:fishrack"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.wood.hit"}},\
        ],\
        left_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"custom",args:{func:"kaleidoscope:cookery_plus/events/destruct/fishrack"}},\
                        {event:"destruct",args:{item:{},particle:"block{block_state:\"oak_planks\"}",sound:"minecraft:block.wood.break"}}\
                        ]\
                    }\
                }\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"fishrack_2",func:"kaleidoscope:cookery_plus/trans/fishrack/take_fish"},\
                    item:{id:"air"}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "fishrack_3"