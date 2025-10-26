# 【fry_pot】炒锅
data modify storage dc:index input.fry_pot set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.3f,width:1f},\
    loot_table:"kaleidoscope:cookery_plus/fry_pot",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_cookery_plus:fry_pot","minecraft:custom_model_data":{"flags":[false]}}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.lantern.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{mode:"replace",loot_table:"kaleidoscope:cookery_plus/fry_pot"},particle:"block{block_state:\"netherite_block\"}",sound:"minecraft:block.lantern.break"}}\
        },\
        right_click:{\
            fallback:{\
                    event:"trans",\
                    args:{index:"fry_pot_grease",func:"kaleidoscope:cookery_plus/trans/fry_pot/start"},\
                }\
        }\
    }\
}

data modify storage dc:index keylist append value "fry_pot"

# 【fry_pot_grease】炒锅
data modify storage dc:index input.fry_pot_grease set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.3f,width:1f},\
    loot_table:"kaleidoscope:cookery_plus/fry_pot",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_cookery_plus:fry_pot","minecraft:custom_model_data":{"flags":[true]}}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.lantern.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{mode:"replace",loot_table:"kaleidoscope:cookery_plus/fry_pot"},particle:"block{block_state:\"netherite_block\"}",sound:"minecraft:block.lantern.break"}}\
        },\
        right_click:{\
            fallback:{\
                    event:"trans",\
                    args:{index:"fry_pot",func:"kaleidoscope:cookery_plus/trans/fry_pot/end"},\
                }\
        }\
    }\
}

data modify storage dc:index keylist append value "fry_pot_grease"

# 【stock_pot】炖锅
data modify storage dc:index input.stock_pot set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.6f,width:1f},\
    type:"hitbox",\
    extra_data:{\
        width:1f,offset:-0.5f\
    },\
    loot_table:"kaleidoscope:cookery_plus/stock_pot",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_cookery_plus:stock_pot","minecraft:custom_model_data":{"flags":[false,false]}}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.lantern.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{mode:"replace",loot_table:"kaleidoscope:cookery_plus/stock_pot"},particle:"block{block_state:\"netherite_block\"}",sound:"minecraft:block.lantern.break"}},\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"stock_pot_hang",func:"kaleidoscope:cookery_plus/trans/stock_pot/hang"},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            fallback:{\
                    event:"trans",\
                    args:{index:"stock_pot_lid",func:"kaleidoscope:cookery_plus/trans/stock_pot/lid"},\
            },\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"stock_pot_hang",func:"kaleidoscope:cookery_plus/trans/stock_pot/hang"},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "stock_pot"

# 【stock_pot_lid】炖锅
data modify storage dc:index input.stock_pot_lid set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.6f,width:1f},\
    type:"hitbox",\
    extra_data:{\
        width:1f,offset:-0.41f\
    },\
    loot_table:"kaleidoscope:cookery_plus/stock_pot",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_cookery_plus:stock_pot","minecraft:custom_model_data":{"flags":[false,true]}}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.lantern.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{mode:"replace",loot_table:"kaleidoscope:cookery_plus/stock_pot"},particle:"block{block_state:\"netherite_block\"}",sound:"minecraft:block.lantern.break"}},\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"stock_pot_hang_lid",func:"kaleidoscope:cookery_plus/trans/stock_pot/hang"},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            fallback:{\
                    event:"trans",\
                    args:{index:"stock_pot",func:"kaleidoscope:cookery_plus/trans/stock_pot/unlid"},\
            },\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"stock_pot_hang_lid",func:"kaleidoscope:cookery_plus/trans/stock_pot/hang"},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "stock_pot_lid"


# 【stock_pot_hang】炖锅
data modify storage dc:index input.stock_pot_hang set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.6f,width:1f},\
    type:"hitbox",\
    extra_data:{\
        width:1f,offset:-0.5f\
    },\
    loot_table:"kaleidoscope:cookery_plus/stock_pot",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_cookery_plus:stock_pot","minecraft:custom_model_data":{"flags":[true,false]}}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.lantern.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{mode:"replace",loot_table:"kaleidoscope:cookery_plus/stock_pot"},particle:"block{block_state:\"netherite_block\"}",sound:"minecraft:block.lantern.break"}},\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"stock_pot",func:"kaleidoscope:cookery_plus/trans/stock_pot/unhang"},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            fallback:{\
                    event:"trans",\
                    args:{index:"stock_pot_hang_lid",func:"kaleidoscope:cookery_plus/trans/stock_pot/lid"},\
            },\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"stock_pot",func:"kaleidoscope:cookery_plus/trans/stock_pot/unhang"},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "stock_pot_hang"

# 【stock_pot_hang_lid】炖锅
data modify storage dc:index input.stock_pot_hang_lid set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.6f,width:1f},\
    type:"hitbox",\
    extra_data:{\
        width:1f,offset:-0.41f\
    },\
    loot_table:"kaleidoscope:cookery_plus/stock_pot",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_cookery_plus:stock_pot","minecraft:custom_model_data":{"flags":[true,true]}}\
    },\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"sound",args:{sound:"minecraft:block.lantern.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{mode:"replace",loot_table:"kaleidoscope:cookery_plus/stock_pot"},particle:"block{block_state:\"netherite_block\"}",sound:"minecraft:block.lantern.break"}},\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"stock_pot_lid",func:"kaleidoscope:cookery_plus/trans/stock_pot/unhang"},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            fallback:{\
                    event:"trans",\
                    args:{index:"stock_pot_hang",func:"kaleidoscope:cookery_plus/trans/stock_pot/unlid"},\
            },\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"stock_pot_lid",func:"kaleidoscope:cookery_plus/trans/stock_pot/unhang"},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "stock_pot_hang_lid"