# 【kaleidoscope_bar:fortune_cat】招财猫
data modify storage dc:index input.kaleidoscope_bar:fortune_cat set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.8f,width:0.8f},\
    type:"hitbox",\
    extra_data:{width:0.8f},\
    loot_table:"kaleidoscope:bar/fortune_cat",\
    template:"kaleidoscope",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:fortune_cat"}\
    },\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.amethyst_block.place"}}\
        ],\
        left_click:{\
            fallback:{"event":"group",args:{events:[\
                {event:"destruct",args:{item:{},particle:"item{item:{id:\"firework_star\",components:{item_model:\"kaleidoscope_bar:fortune_cat\"}}}",sound:"minecraft:block.amethyst_block.break"}}\
            ]}}\
        },\
        right_click:{\
            fallback:{event:"custom",args:{func:"kaleidoscope:bar/events/fortune_cat_meow"}}\
        }\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bar:fortune_cat"

# 【kaleidoscope_bar:bar_counter】吧台
data modify storage dc:index input.kaleidoscope_bar:bar_counter set value {\
    modsize:[1f,1f,1f],\
    type:"fixed",\
    loot_table:"kaleidoscope:bar/bar_counter",\
    template:"kaleidoscope_block_90",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:bar_counter"}\
    },\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.wood.place"}},\
        ],\
        destruct:[\
        ],\
        update:[\
        ],\
        left_click:{\
            fallback:{"event":"group",args:{events:[\
                {event:"destruct",args:{item:{},particle:"item{item:{id:\"firework_star\",components:{item_model:\"kaleidoscope_bar:bar_counter\"}}}",sound:"minecraft:block.wood.break"}}\
            ]}}\
        },\
        right_click:{\
        }\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bar:bar_counter"


# 【kaleidoscope_bar:painting】挂画
data modify storage dc:index input.kaleidoscope_bar:painting set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:1f},\
    loot_table:"kaleidoscope:bar/painting",\
    template:"kaleidoscope_z_rotate",\
    prop:{attach:"cubic"},\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:entity.painting.place"}},\
            {event:"custom",args:{func:"kaleidoscope:bar/events/painting/construct"}}\
        ],\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{"event":"custom",args:{func:"kaleidoscope:bar/events/painting/trans/remove"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                },\
            ],\
            fallback:{"event":"group",args:{events:[\
                {event:"destruct",args:{item:{},particle:"item{item:{id:\"firework_star\",components:{item_model:\"kaleidoscope_bar:painting\"}}}",sound:"minecraft:entity.painting.break"}}\
            ]}}\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{"event":"custom",args:{func:"kaleidoscope:bar/events/painting/trans/add"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                },\
                {event:"trans",item:{id:"honeycomb"},args:{index:"kaleidoscope_bar:painting_waxed",func:"kaleidoscope:bar/events/painting/trans/wax"}}\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bar:painting"


# 【kaleidoscope_bar:painting_waxed】涂蜡挂画
data modify storage dc:index input.kaleidoscope_bar:painting_waxed set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:1f},\
    template:"kaleidoscope_z_rotate",\
    prop:{attach:"cubic"},\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:entity.painting.place"}},\
        ],\
        "destruct":[\
            {event:"custom",args:{func:"kaleidoscope:bar/events/painting/destruct"}}\
        ],\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{"event":"custom",args:{func:"kaleidoscope:bar/events/painting/trans/remove"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                },\
            ],\
            fallback:{"event":"group",args:{events:[\
                {event:"destruct",args:{item:{mode:"inherit"},particle:"item{item:{id:\"firework_star\",components:{item_model:\"kaleidoscope_bar:painting\"}}}",sound:"minecraft:entity.painting.break"}}\
            ]}}\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{"event":"custom",args:{func:"kaleidoscope:bar/events/painting/trans/add"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bar:painting_waxed"


