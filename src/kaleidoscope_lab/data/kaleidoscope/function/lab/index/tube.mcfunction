# 【kaleidoscope_lab:tube_1】试管架
data modify storage dc:index input.kaleidoscope_lab:tube_1 set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.6f,width:1f},\
    loot_table:"kaleidoscope:lab/tube",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_lab:test_tube_rack/1"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.stone.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{mode:"replace",loot_table:"kaleidoscope:lab/tube"},particle:"block{block_state:\"stone\"}",sound:"minecraft:block.stone.break"}}\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"kaleidoscope_lab:tube_2",func:"kaleidoscope:lab/trans/tube_add"},\
                    item:{components:{"minecraft:custom_data":{id:"kaleidoscope_lab:tube"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_lab:tube_1"

# 【kaleidoscope_lab:tube_2】试管架
data modify storage dc:index input.kaleidoscope_lab:tube_2 set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.6f,width:1f},\
    loot_table:"kaleidoscope:lab/tube",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_lab:test_tube_rack/2"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.stone.place"}},\
        ],\
        left_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"custom",args:{func:"kaleidoscope:lab/events/extra_loot"}},\
                        {event:"destruct",args:{item:{mode:"replace",loot_table:"kaleidoscope:lab/tube"},particle:"block{block_state:\"stone\"}",sound:"minecraft:block.stone.break"}},\
                    ]\
                }\
            }\
        },\
        right_click:{\
            fallback:{event:"trans",args:{index:"kaleidoscope_lab:tube_1",func:"kaleidoscope:lab/trans/tube_take"}},\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"kaleidoscope_lab:tube_3",func:"kaleidoscope:lab/trans/tube_add"},\
                    item:{components:{"minecraft:custom_data":{id:"kaleidoscope_lab:tube"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_lab:tube_2"

# 【kaleidoscope_lab:tube_3】试管架
data modify storage dc:index input.kaleidoscope_lab:tube_3 set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.6f,width:1f},\
    loot_table:"kaleidoscope:lab/tube",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_lab:test_tube_rack/3"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.stone.place"}},\
        ],\
        left_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"custom",args:{func:"kaleidoscope:lab/events/extra_loot"}},\
                        {event:"custom",args:{func:"kaleidoscope:lab/events/extra_loot"}},\
                        {event:"destruct",args:{item:{mode:"replace",loot_table:"kaleidoscope:lab/tube"},particle:"block{block_state:\"stone\"}",sound:"minecraft:block.stone.break"}},\
                    ]\
                }\
            }\
        },\
        right_click:{\
            fallback:{event:"trans",args:{index:"kaleidoscope_lab:tube_2",func:"kaleidoscope:lab/trans/tube_take"}},\
            criteria:[\
                {\
                    event:"__nothing__",\
                    item:{components:{"minecraft:custom_data":{id:"kaleidoscope_lab:tube"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_lab:tube_3"