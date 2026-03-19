# 【kaleidoscope_lab:leave_me_alone_box】别烦我盒子
data modify storage dc:index input.kaleidoscope_lab:leave_me_alone_box set value {\
    modsize:[0.5f,0.5f,0.5f],\
    type:"hitbox",\
    extra_data:{width:0.48f},\
    interactsize:{height:0.5f,width:0.75f},\
    loot_table:"kaleidoscope:lab/leave_me_alone_box",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_lab:leave_me_alone_box","minecraft:custom_model_data":{floats:[0],strings:["_none_"]}}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.copper.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"self",sound:"minecraft:block.wood.break"}}\
        },\
        right_click:{\
            fallback:{event:"trans",args:{index:"kaleidoscope_lab:leave_me_alone_box_open",func:"kaleidoscope:lab/trans/leave_me_alone_box/open"}}\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_lab:leave_me_alone_box"

# 【kaleidoscope_lab:leave_me_alone_box_open】打开的别烦我盒子
data modify storage dc:index input.kaleidoscope_lab:leave_me_alone_box_open set value {\
    modsize:[0.5f,0.5f,0.5f],\
    type:"hitbox",\
    extra_data:{width:0.48f},\
    interactsize:{height:0.5f,width:0.75f},\
    loot_table:"kaleidoscope:lab/leave_me_alone_box",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_lab:leave_me_alone_box","minecraft:custom_model_data":{floats:[0],strings:["_none_"]}}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.copper.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"self",sound:"minecraft:block.wood.break"}}\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_lab:leave_me_alone_box_open"