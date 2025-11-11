# 【kaleidoscope_lights】小灯串前置模板
data modify storage dc:template kaleidoscope_lights set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:1f},\
    "type":"light",\
    extra_data:{level:14,hitbox:false},\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.amethyst_block.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"lantern\"}",sound:"minecraft:block.amethyst_block.break"}}\
        }\
    }\
}

# 【kaleidoscope_sunshade】遮阳伞前置模板
data modify storage dc:template kaleidoscope_sunshade set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:3f},\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.wool.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"white_wool\"}",sound:"minecraft:block.wool.break"}}\
        }\
    }\
}


# 【kaleidoscope_sunshade_banner】遮阳伞前置模板
data modify storage dc:template kaleidoscope_sunshade_banner set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:1f},\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.wool.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"white_wool\"}",sound:"minecraft:block.wool.break"}}\
        }\
    }\
}