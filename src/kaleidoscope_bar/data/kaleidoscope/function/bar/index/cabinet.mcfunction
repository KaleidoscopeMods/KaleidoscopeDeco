#【kaleidoscope_cabinet】酒柜模板
data modify storage dc:template kaleidoscope_cabinet set value {\
    modsize:[1f,1f,1f],\
    type:"fixed",\
    template:"kaleidoscope_block_90",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:cabinet"}\
    },\
    events:{\
        destruct:[\
            {event:"custom",args:{func:"kaleidoscope:bar/events/cabinet/destruct"}},\
            {event:"broadcast"}\
        ],\
        left_click:{\
            fallback:{"event":"group",args:{events:[\
                {event:"destruct",args:{item:{},particle:"item{item:{id:\"firework_star\",components:{item_model:\"kaleidoscope_bar:cabinet\"}}}",sound:"minecraft:block.wood.break"}}\
            ]}}\
        },\
        right_click:{\
            "criteria":[\
                {\
                    event:"group",\
                    "args":{events:[{event:"custom",args:{func:"kaleidoscope:bar/events/cabinet/mode_switch"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                },\
                {event:"custom",args:{func:"kaleidoscope:bar/events/cabinet/wine_add"},item:{components:{"minecraft:custom_data":{id:"kaleidoscope_bar:wine_bottle"}}}}\
            ],\
            fallback:{event:"custom",args:{func:"kaleidoscope:bar/events/cabinet/wine_take"}}\
        }\
    }\
}

# 【kaleidoscope_bar:cabinet】酒柜
data modify storage dc:index input.kaleidoscope_bar:cabinet set value {\
    loot_table:"kaleidoscope:bar/cabinet",\
    template:"kaleidoscope_cabinet",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.wood.place"}},\
            {event:"custom",args:{func:"kaleidoscope:bar/events/cabinet/construct"}},\
            {event:"custom",args:{func:"kaleidoscope:bar/events/cabinet/connect"}},\
            {event:"broadcast"}\
        ],\
        update:[\
            {event:"custom",args:{func:"kaleidoscope:bar/events/cabinet/connect"}},\
            {event:"custom",args:{func:"kaleidoscope:bar/events/cabinet/sync"}}\
        ],\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bar:cabinet"

# 【kaleidoscope_bar:cabinet_glass】玻璃酒柜
data modify storage dc:index input.kaleidoscope_bar:cabinet_glass set value {\
    loot_table:"kaleidoscope:bar/cabinet_glass",\
    template:"kaleidoscope_cabinet",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.wood.place"}},\
            {event:"custom",args:{func:"kaleidoscope:bar/events/cabinet/construct_glass"}},\
            {event:"custom",args:{func:"kaleidoscope:bar/events/cabinet/connect_glass"}},\
            {event:"broadcast"}\
        ],\
        update:[\
            {event:"custom",args:{func:"kaleidoscope:bar/events/cabinet/connect_glass"}},\
            {event:"custom",args:{func:"kaleidoscope:bar/events/cabinet/sync"}}\
        ],\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bar:cabinet_glass"