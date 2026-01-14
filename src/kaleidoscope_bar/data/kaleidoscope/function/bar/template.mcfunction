#【kaleidoscope_blackboard】展板通用模板
data modify storage dc:template kaleidoscope_blackboard set value {\
    template:"kaleidoscope",\
    modsize:[1f,1f,1f],\
    interactsize:{height:1.5f,width:0.7f},\
    type:"hitbox",\
    extra_data:{width:0.7f,offset:0.3f},\
    prop:{orient:"8"},\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"block.wood.place"}},\
            {event:"custom",args:{func:"kaleidoscope:bar/events/board_interaction"}}\
        ],\
        "update":[\
            {event:"custom",args:{func:"kaleidoscope:bar/events/board_interaction_reset"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"black_concrete\"}",sound:"block.wood.break"}}\
        },\
        right_click:{\
            "fallback":{event:"custom",args:{func:"kaleidoscope:bar/events/set_text"}}\
        }\
    }\
}

#【kaleidoscope_wine_bottle】酒瓶通用模板
data modify storage dc:template kaleidoscope_wine_bottle set value {\
    template:"kaleidoscope",\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:0.6f},\
    type:"regular",\
    prop:{orient:"16"},\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"block.glass.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{particle:"self",sound:"block.glass.break"}}\
        },\
        right_click:{\
            "fallback":{event:"destruct",args:{item:{mode:"inherit"},sound:"entity.item.pickup"}}\
        }\
    }\
}


