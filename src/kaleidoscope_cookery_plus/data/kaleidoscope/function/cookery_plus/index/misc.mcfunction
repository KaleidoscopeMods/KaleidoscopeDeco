# 【teapot】茶壶
data modify storage dc:index input.teapot set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.8f,width:0.8f},\
    loot_table:"kaleidoscope:cookery_plus/teapot",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_cookery_plus:teapot","minecraft:custom_model_data":{"flags":[false]}}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.decorated_pot.step"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"decorated_pot\"}",sound:"minecraft:block.decorated_pot.hit"}}\
        },\
        right_click:{\
            fallback:{\
                    event:"trans",\
                    args:{index:"teapot_boil",func:"kaleidoscope:cookery_plus/trans/teapot/boil"},\
                }\
        }\
    }\
}
data modify storage dc:index keylist append value "teapot"

# 【teapot_boil】茶壶（烧开）
data modify storage dc:index input.teapot_boil set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.8f,width:0.8f},\
    loot_table:"kaleidoscope:cookery_plus/teapot",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_cookery_plus:teapot","minecraft:custom_model_data":{"flags":[true]}}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.decorated_pot.step"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"decorated_pot\"}",sound:"minecraft:block.decorated_pot.hit"}}\
        },\
        right_click:{\
            fallback:{\
                    event:"trans",\
                    args:{index:"teapot",func:"kaleidoscope:cookery_plus/trans/teapot/calm"},\
                }\
        }\
    }\
}
data modify storage dc:index keylist append value "teapot_boil"

# 【lardpot】猪油罐
data modify storage dc:index input.lardpot set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.5f,width:0.7f},\
    loot_table:"kaleidoscope:cookery_plus/lardpot",\
    template:"kaleidoscope",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_cookery_plus:lardpot","minecraft:custom_model_data":{"flags":[false]}}\
    },\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.copper.place"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"item{item:{id:\"firework_star\",components:{item_model:\"kaleidoscope_cookery_plus:lardpot\"}}}",sound:"minecraft:block.copper.break"}}\
        },\
        right_click:{\
            fallback:{\
                    event:"trans",\
                    args:{index:"lardpot_open",func:"kaleidoscope:cookery_plus/trans/lardpot"},\
                }\
        }\
    }\
}
data modify storage dc:index keylist append value "lardpot"

# 【lardpot_open】打开的猪油罐
data modify storage dc:index input.lardpot_open set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.5f,width:0.7f},\
    loot_table:"kaleidoscope:cookery_plus/lardpot",\
    template:"kaleidoscope",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_cookery_plus:lardpot","minecraft:custom_model_data":{"flags":[true]}}\
    },\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.copper.place"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"item{item:{id:\"firework_star\",components:{item_model:\"kaleidoscope_cookery_plus:lardpot\"}}}",sound:"minecraft:block.copper.break"}}\
        },\
        right_click:{\
            fallback:{\
                    event:"trans",\
                    args:{index:"lardpot",func:"kaleidoscope:cookery_plus/trans/lardpot"},\
                }\
        }\
    }\
}
data modify storage dc:index keylist append value "lardpot_open"

# 【salt_jar】盐罐
data modify storage dc:index input.salt_jar set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.5f,width:0.4f},\
    loot_table:"kaleidoscope:cookery_plus/salt_jar",\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.glass.place"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"glass\"}",sound:"minecraft:block.glass.break"}}\
        },\
    }\
}
data modify storage dc:index keylist append value "salt_jar"

# 【pestle_for_garlic】蒜捣
data modify storage dc:index input.pestle_for_garlic set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.7f,width:0.7f},\
    loot_table:"kaleidoscope:cookery_plus/pestle_for_garlic",\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.stone.place"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"item{item:{id:\"firework_star\",components:{item_model:\"kaleidoscope_cookery_plus:pestle_for_garlic\"}}}",sound:"minecraft:block.stone.break"}}\
        },\
        right_click:{\
            fallback:{\
                    event:"sound",\
                    args:{sound:"minecraft:block.stone.hit"},\
                }\
        }\
    }\
}
data modify storage dc:index keylist append value "pestle_for_garlic"

# 【vinegar_bottle】醋瓶
data modify storage dc:index input.vinegar_bottle set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.9f,width:0.3f},\
    loot_table:"kaleidoscope:cookery_plus/vinegar_bottle",\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.glass.place"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"tinted_glass\"}",sound:"minecraft:block.glass.break"}}\
        },\
    }\
}
data modify storage dc:index keylist append value "vinegar_bottle"

# 【rubbish_bin】垃圾桶
data modify storage dc:index input.rubbish_bin set value {\
    type:"hitbox",\
    extra_data:{\
        width:0.75f,\
        offset:0.2f,\
    },\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:0.8f},\
    loot_table:"kaleidoscope:cookery_plus/rubbish_bin",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_cookery_plus:rubbish_bin","minecraft:custom_model_data":{"flags":[false]}}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.iron.place"}},\
            {event:"custom",args:{func:"kaleidoscope:cookery_plus/events/construct/rubbish_bin"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"item{item:{id:\"firework_star\",components:{item_model:\"kaleidoscope_cookery_plus:rubbish_bin\"}}}",sound:"minecraft:block.iron.break"}}\
        },\
        right_click:{\
            fallback:{\
                    event:"trans",\
                    args:{index:"rubbish_bin_open",func:"kaleidoscope:cookery_plus/trans/rubbish_bin/open"},\
                }\
        }\
    }\
}
data modify storage dc:index keylist append value "rubbish_bin"

# 【rubbish_bin_open】垃圾桶（打开）
data modify storage dc:index input.rubbish_bin_open set value {\
    type:"hitbox",\
    extra_data:{\
        width:0.75f,\
        offset:0.2f,\
    },\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:0.8f},\
    loot_table:"kaleidoscope:cookery_plus/rubbish_bin",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_cookery_plus:rubbish_bin","minecraft:custom_model_data":{"flags":[true]}}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.iron.place"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"item{item:{id:\"firework_star\",components:{item_model:\"kaleidoscope_cookery_plus:rubbish_bin\"}}}",sound:"minecraft:block.iron.break"}}\
        },\
        right_click:{\
            fallback:{\
                event:"trans",\
                args:{index:"rubbish_bin",func:"kaleidoscope:cookery_plus/trans/rubbish_bin/close"},\
            },\
            criteria:[\
                {\
                event:"trans",\
                args:{index:"rubbish_bin",func:"kaleidoscope:cookery_plus/trans/rubbish_bin/close"},\
                item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                },\
                {\
                    event:"trans",\
                    args:{index:"rubbish_bin",func:"kaleidoscope:cookery_plus/trans/rubbish_bin/dispose"},\
                    item:{id:"*"}\
                },\
                {\
                    event:"trans",\
                    args:{index:"rubbish_bin",func:"kaleidoscope:cookery_plus/trans/rubbish_bin/reclaim"},\
                    item:{},\
                    predicate:"kaleidoscope:shift"\
                }\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "rubbish_bin_open"

# 【scarecrow】稻草人
data modify storage dc:index input.scarecrow set value {\
    modsize:[2f,2f,2f],\
    interactsize:{height:2.5f,width:1f},\
    loot_table:"kaleidoscope:cookery_plus/scarecrow",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_cookery_plus:scarecrow","minecraft:custom_model_data":{"flags":[false]}}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.grass.place"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"hay_block\"}",sound:"minecraft:entity.armor_stand.break"}}\
        },\
        right_click:{\
            fallback:{\
                    event:"trans",\
                    args:{index:"scarecrow_1",func:"kaleidoscope:cookery_plus/trans/scarecrow"},\
                }\
        }\
    }\
}
data modify storage dc:index keylist append value "scarecrow"

# 【scarecrow_1】稻草人
data modify storage dc:index input.scarecrow_1 set value {\
    modsize:[2f,2f,2f],\
    interactsize:{height:2.5f,width:1f},\
    loot_table:"kaleidoscope:cookery_plus/scarecrow",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_cookery_plus:scarecrow","minecraft:custom_model_data":{"flags":[true]}}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.grass.place"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"hay_block\"}",sound:"minecraft:entity.armor_stand.break"}}\
        },\
        right_click:{\
            fallback:{\
                    event:"trans",\
                    args:{index:"scarecrow",func:"kaleidoscope:cookery_plus/trans/scarecrow"},\
                }\
        }\
    }\
}
data modify storage dc:index keylist append value "scarecrow_1"


