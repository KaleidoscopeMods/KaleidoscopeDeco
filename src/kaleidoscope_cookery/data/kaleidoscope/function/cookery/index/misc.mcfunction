# 【cart】手推车
data modify storage dc:index input.cart set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:1f},\
    loot_table:"kaleidoscope:cookery/cart",\
    template:"kaleidoscope",\
    events:{\
        "construct":[\
            {event:"custom",args:{func:"kaleidoscope:cookery/cart/construct"}},\
            {event:"rotate",args:{angle:180f}},\
        ],\
        right_click:{\
            fallback:{\
                event:"group",args:{\
                    events:[\
                    {event:"custom",args:{func:"kaleidoscope:cookery/cart/carry"}},\
                    {event:"destruct"}\
                ]}\
            }\
        }\
    }\
}

data modify storage dc:index keylist append value "cart"

# 【cart_with_chest】箱子手推车
data modify storage dc:index input.cart_with_chest set value {\
    modsize:[1f,1f,1f],\
    interactsize:{height:0.8f,width:1f},\
    loot_table:"kaleidoscope:cookery/cart",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_cookery:cart_with_chest"}\
    },\
    template:"kaleidoscope",\
    prop:{orient:"16"},\
    events:{\
        "construct":[\
            {event:"custom",args:{func:"kaleidoscope:cookery/cart/construct_with_chest"}},\
            {event:"rotate",args:{angle:180f}},\
            {event:"sound",args:{sound:"entity.armor_stand.break"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"spruce_planks\"}",sound:"entity.armor_stand.break"}}\
        },\
        right_click:{\
            fallback:{\
                event:"group",args:{\
                    events:[\
                    {event:"custom",args:{func:"kaleidoscope:cookery/cart/carry_with_chest"}},\
                    {event:"destruct"}\
                ]}\
            },\
            criteria:[{event:"__nothing__",predicate:"kaleidoscope:shift",item:{}}]\
        }\
    }\
}

data modify storage dc:index keylist append value "cart_with_chest"


