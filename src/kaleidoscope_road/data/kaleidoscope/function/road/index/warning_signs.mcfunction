# 【kaleidoscope_road:warning_sign_1】警告牌（苦力怕）
data modify storage dc:index input.kaleidoscope_road:warning_sign_1 set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:1f},\
    loot_table:"kaleidoscope:road/warning_sign/1",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_road:warning_sign/1"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.stone.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"black_terracotta\"}",sound:"minecraft:block.stone.break"}},\
            criteria:[{event:"trans",args:{index:"kaleidoscope_road:warning_sign_8"},item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}}]\
        },\
        right_click:{\
            criteria:[{event:"trans",args:{index:"kaleidoscope_road:warning_sign_2"},item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}}]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_road:warning_sign_1"


# 【kaleidoscope_road:warning_sign_2】警告牌（辐射）
data modify storage dc:index input.kaleidoscope_road:warning_sign_2 set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:1f},\
    loot_table:"kaleidoscope:road/warning_sign/2",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_road:warning_sign/2"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.stone.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"black_terracotta\"}",sound:"minecraft:block.stone.break"}},\
            criteria:[{event:"trans",args:{index:"kaleidoscope_road:warning_sign_1"},item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}}]\
        },\
        right_click:{\
            criteria:[{event:"trans",args:{index:"kaleidoscope_road:warning_sign_3"},item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}}]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_road:warning_sign_2"

# 【kaleidoscope_road:warning_sign_3】警告牌（危险）
data modify storage dc:index input.kaleidoscope_road:warning_sign_3 set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:1f},\
    loot_table:"kaleidoscope:road/warning_sign/3",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_road:warning_sign/3"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.stone.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"black_terracotta\"}",sound:"minecraft:block.stone.break"}},\
            criteria:[{event:"trans",args:{index:"kaleidoscope_road:warning_sign_2"},item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}}]\
        },\
        right_click:{\
            criteria:[{event:"trans",args:{index:"kaleidoscope_road:warning_sign_4"},item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}}]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_road:warning_sign_3"

# 【kaleidoscope_road:warning_sign_4】警告牌（闪电）
data modify storage dc:index input.kaleidoscope_road:warning_sign_4 set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:1f},\
    loot_table:"kaleidoscope:road/warning_sign/4",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_road:warning_sign/4"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.stone.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"black_terracotta\"}",sound:"minecraft:block.stone.break"}},\
            criteria:[{event:"trans",args:{index:"kaleidoscope_road:warning_sign_3"},item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}}]\
        },\
        right_click:{\
            criteria:[{event:"trans",args:{index:"kaleidoscope_road:warning_sign_1"},item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}}]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_road:warning_sign_4"

# 【kaleidoscope_road:warning_sign_5】警告牌（禁止战斗）
data modify storage dc:index input.kaleidoscope_road:warning_sign_5 set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:1f},\
    loot_table:"kaleidoscope:road/warning_sign/5",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_road:warning_sign/5"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.stone.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"black_terracotta\"}",sound:"minecraft:block.stone.break"}},\
            criteria:[{event:"trans",args:{index:"kaleidoscope_road:warning_sign_4"},item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}}]\
        },\
        right_click:{\
            criteria:[{event:"trans",args:{index:"kaleidoscope_road:warning_sign_6"},item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}}]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_road:warning_sign_5"

# 【kaleidoscope_road:warning_sign_6】警告牌（禁止进入）
data modify storage dc:index input.kaleidoscope_road:warning_sign_6 set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:1f},\
    loot_table:"kaleidoscope:road/warning_sign/6",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_road:warning_sign/6"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.stone.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"black_terracotta\"}",sound:"minecraft:block.stone.break"}},\
            criteria:[{event:"trans",args:{index:"kaleidoscope_road:warning_sign_5"},item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}}]\
        },\
        right_click:{\
            criteria:[{event:"trans",args:{index:"kaleidoscope_road:warning_sign_7"},item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}}]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_road:warning_sign_6"

# 【kaleidoscope_road:warning_sign_7】警告牌（禁止点火）
data modify storage dc:index input.kaleidoscope_road:warning_sign_7 set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:1f},\
    loot_table:"kaleidoscope:road/warning_sign/7",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_road:warning_sign/7"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.stone.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"black_terracotta\"}",sound:"minecraft:block.stone.break"}},\
            criteria:[{event:"trans",args:{index:"kaleidoscope_road:warning_sign_6"},item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}}]\
        },\
        right_click:{\
            criteria:[{event:"trans",args:{index:"kaleidoscope_road:warning_sign_8"},item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}}]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_road:warning_sign_7"

# 【kaleidoscope_road:warning_sign_8】警告牌（禁止爆炸物）
data modify storage dc:index input.kaleidoscope_road:warning_sign_8 set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:1f},\
    loot_table:"kaleidoscope:road/warning_sign/8",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_road:warning_sign/8"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.stone.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"black_terracotta\"}",sound:"minecraft:block.stone.break"}},\
            criteria:[{event:"trans",args:{index:"kaleidoscope_road:warning_sign_7"},item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}}]\
        },\
        right_click:{\
            criteria:[{event:"trans",args:{index:"kaleidoscope_road:warning_sign_5"},item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}}]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_road:warning_sign_8"