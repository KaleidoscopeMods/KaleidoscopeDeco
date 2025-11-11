# 【kaleidoscope_holiday:bell】铃铛
data modify storage dc:index input.kaleidoscope_holiday:bell set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:2f,width:1f},\
    loot_table:"kaleidoscope:holiday/bell",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_holiday:bell"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.amethyst_block.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"bell\"}",sound:"minecraft:block.amethyst_block.break"}}\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_holiday:bell"
