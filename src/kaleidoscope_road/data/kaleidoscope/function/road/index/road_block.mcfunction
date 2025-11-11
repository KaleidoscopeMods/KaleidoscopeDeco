# 【kaleidoscope_road:road_block】路障
data modify storage dc:index input.kaleidoscope_road:road_block set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:1.5f,width:1.5f},\
    type:"hitbox",\
    extra_data:{width:1f,offset:0.5},\
    loot_table:"kaleidoscope:road/road_block",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_road:road_block/1"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.wood.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"oak_planks\"}",sound:"minecraft:block.wood.break"}}\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_road:road_block"

# 【kaleidoscope_road:traffic_cone_1】雪糕桶1
data modify storage dc:index input.kaleidoscope_road:traffic_cone_1 set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.8f,width:0.8f},\
    type:"hitbox",\
    extra_data:{width:0.8f},\
    loot_table:"kaleidoscope:road/traffic_cone_1",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_road:road_block/2"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.stone.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"red_terracotta\"}",sound:"minecraft:block.stone.break"}}\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_road:traffic_cone_1"

# 【kaleidoscope_road:traffic_cone_2】雪糕桶2
data modify storage dc:index input.kaleidoscope_road:traffic_cone_2 set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.8f,width:0.8f},\
    type:"hitbox",\
    extra_data:{width:0.8f},\
    loot_table:"kaleidoscope:road/traffic_cone_2",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_road:road_block/3"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.stone.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"black_terracotta\"}",sound:"minecraft:block.stone.break"}}\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_road:traffic_cone_2"