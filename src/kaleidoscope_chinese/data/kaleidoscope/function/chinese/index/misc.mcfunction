# 【kaleidoscope_chinese:blessing_belt】祈福带
data modify storage dc:index input.kaleidoscope_chinese:blessing_belt set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:0.4f},\
    loot_table:"kaleidoscope:chinese/blessing_belt",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_chinese:blessing_belt"}\
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

data modify storage dc:index keylist append value "kaleidoscope_chinese:blessing_belt"

# 【kaleidoscope_chinese:censor】香炉
data modify storage dc:index input.kaleidoscope_chinese:censor set value {\
    "type":"hitbox",\
    "extra_data":{"width":0.6f},\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:0.7f},\
    loot_table:"kaleidoscope:chinese/censor",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_chinese:censor"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.copper.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"exposed_copper\"}",sound:"minecraft:block.copper.break"}}\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_chinese:censor"

# 【kaleidoscope_chinese:lantern】灯笼
data modify storage dc:index input.kaleidoscope_chinese:lantern set value {\
    type:"light",\
    "extra_data":{level:15,hitbox:1b},\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:1f},\
    loot_table:"kaleidoscope:chinese/lantern",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_chinese:lantern"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.lantern.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"lantern\"}",sound:"minecraft:block.lantern.break"}}\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_chinese:lantern"