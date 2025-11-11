# 【kaleidoscope_lab:microscope】显微镜
data modify storage dc:index input.kaleidoscope_lab:microscope set value {\
    modsize:[1f,1f,1f],\
    type:"hitbox",\
    extra_data:{width:0.6f,offset:-0.5},\
    interactsize:{height:1f,width:0.6f},\
    loot_table:"kaleidoscope:lab/microscope",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_lab:microscope"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.copper.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"copper_block\"}",sound:"minecraft:block.wood.break"}}\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_lab:microscope"


# 【kaleidoscope_lab:spyglass】望远镜
data modify storage dc:index input.kaleidoscope_lab:spyglass set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:1.7f,width:0.8f},\
    loot_table:"kaleidoscope:lab/spyglass",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_lab:spyglass"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.copper.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"copper_block\"}",sound:"minecraft:block.copper.break"}}\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_lab:spyglass"


# 【kaleidoscope_lab:globe】地球仪
data modify storage dc:index input.kaleidoscope_lab:globe set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.8f,width:0.6f},\
    type:"hitbox",\
    extra_data:{width:0.6,offset:0.2},\
    loot_table:"kaleidoscope:lab/globe",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_lab:globe"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.wood.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"spruce_planks\"}",sound:"minecraft:block.wood.break"}}\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_lab:globe"


# 【kaleidoscope_lab:paper_with_ink】纸与笔
data modify storage dc:index input.kaleidoscope_lab:paper_with_ink set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.4f,width:1f},\
    loot_table:"kaleidoscope:lab/paper_with_ink",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_lab:paper_with_ink"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.wood.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"glass\"}",sound:"minecraft:block.glass.break"}}\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_lab:paper_with_ink"


# 【kaleidoscope_lab:paper】稿纸
data modify storage dc:index input.kaleidoscope_lab:paper set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.2f,width:1f},\
    loot_table:"kaleidoscope:lab/paper",\
    prop:{height_adaption:1b},\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_lab:paper"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.wool.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"sandstone\"}",sound:"minecraft:block.wool.break"}}\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_lab:paper"


# 【kaleidoscope_lab:ink】墨水瓶
data modify storage dc:index input.kaleidoscope_lab:ink set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.4f,width:0.4f},\
    loot_table:"kaleidoscope:lab/ink",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_lab:ink"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.glass.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"glass\"}",sound:"minecraft:block.glass.break"}}\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_lab:ink"


# 【kaleidoscope_lab:balance_1】天平
data modify storage dc:index input.kaleidoscope_lab:balance_1 set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.8f,width:1f},\
    loot_table:"kaleidoscope:lab/balance",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_lab:balance/1"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.copper.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"gold_block\"}",sound:"minecraft:block.copper.break"}}\
        },\
        right_click:{fallback:{event:"trans",args:{index:"kaleidoscope_lab:balance_2",func:"kaleidoscope:lab/trans/balance"}}}\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_lab:balance_1"

# 【kaleidoscope_lab:balance_2】天平
data modify storage dc:index input.kaleidoscope_lab:balance_2 set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.8f,width:1f},\
    loot_table:"kaleidoscope:lab/balance",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_lab:balance/2"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.copper.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"gold_block\"}",sound:"minecraft:block.copper.break"}}\
        },\
        right_click:{fallback:{event:"trans",args:{index:"kaleidoscope_lab:balance_3",func:"kaleidoscope:lab/trans/balance"}}}\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_lab:balance_2"

# 【kaleidoscope_lab:balance_3】天平
data modify storage dc:index input.kaleidoscope_lab:balance_3 set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.8f,width:1f},\
    loot_table:"kaleidoscope:lab/balance",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_lab:balance/3"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.copper.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"gold_block\"}",sound:"minecraft:block.copper.break"}}\
        },\
        right_click:{fallback:{event:"trans",args:{index:"kaleidoscope_lab:balance_1",func:"kaleidoscope:lab/trans/balance"}}}\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_lab:balance_3"