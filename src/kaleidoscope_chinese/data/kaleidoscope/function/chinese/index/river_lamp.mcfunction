# 【kaleidoscope_chinese:river_lamp_pink】河灯
data modify storage dc:index input.kaleidoscope_chinese:river_lamp_pink set value {\
    type:"light",\
    extra_data:{level:13,hitbox:0b},\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:1f},\
    loot_table:"kaleidoscope:chinese/river_lamp/pink",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_chinese:river_lamp/1"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.lily_pad.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"pearlescent_froglight\"}",sound:"minecraft:block.froglight.break"}},\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_chinese:river_lamp_purple",func:"kaleidoscope:chinese/trans/river_lamp/purple"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_chinese:river_lamp_yellow",func:"kaleidoscope:chinese/trans/river_lamp/yellow"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_chinese:river_lamp_pink"


# 【kaleidoscope_chinese:river_lamp_yellow】河灯
data modify storage dc:index input.kaleidoscope_chinese:river_lamp_yellow set value {\
    type:"light",\
    extra_data:{level:13,hitbox:0b},\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:1f},\
    loot_table:"kaleidoscope:chinese/river_lamp/yellow",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_chinese:river_lamp/2"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.lily_pad.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"ochre_froglight\"}",sound:"minecraft:block.froglight.break"}},\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_chinese:river_lamp_pink",func:"kaleidoscope:chinese/trans/river_lamp/pink"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_chinese:river_lamp_green",func:"kaleidoscope:chinese/trans/river_lamp/green"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_chinese:river_lamp_yellow"


# 【kaleidoscope_chinese:river_lamp_green】河灯
data modify storage dc:index input.kaleidoscope_chinese:river_lamp_green set value {\
    type:"light",\
    extra_data:{level:13,hitbox:0b},\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:1f},\
    loot_table:"kaleidoscope:chinese/river_lamp/green",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_chinese:river_lamp/3"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.lily_pad.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"verdant_froglight\"}",sound:"minecraft:block.froglight.break"}},\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_chinese:river_lamp_yellow",func:"kaleidoscope:chinese/trans/river_lamp/yellow"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_chinese:river_lamp_purple",func:"kaleidoscope:chinese/trans/river_lamp/purple"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_chinese:river_lamp_green"


# 【kaleidoscope_chinese:river_lamp_purple】河灯
data modify storage dc:index input.kaleidoscope_chinese:river_lamp_purple set value {\
    type:"light",\
    extra_data:{level:13,hitbox:0b},\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:1f},\
    loot_table:"kaleidoscope:chinese/river_lamp/purple",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_chinese:river_lamp/4"}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.lily_pad.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"pearlescent_froglight\"}",sound:"minecraft:block.froglight.break"}},\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_chinese:river_lamp_green",func:"kaleidoscope:chinese/trans/river_lamp/green"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_chinese:river_lamp_pink",func:"kaleidoscope:chinese/trans/river_lamp/pink"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_chinese:river_lamp_purple"