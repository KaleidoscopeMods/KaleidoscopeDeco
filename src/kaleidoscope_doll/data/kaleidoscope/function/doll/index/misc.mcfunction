# 【green_doll_gift_box】绿色礼物盒
data modify storage dc:index input.green_doll_gift_box set value {\
    modsize:[0.8f,0.8f,0.8f],\
    interactsize:{height:0.8f,width:0.8f},\
    loot_table:"kaleidoscope:gift_box/green",\
    template:"kaleidoscope",\
    events:{\
        left_click:{\
            fallback:{\
                event:"group",args:{\
                    events:[\
                    {event:"custom",args:{func:"kaleidoscope:doll/events/roll",loot_table:"kaleidoscope:gift_box_roll/green"}},\
                    {event:"destruct"}\
                ]}\
            }\
        },\
        right_click:{\
            fallback:{\
                event:"group",args:{\
                    events:[\
                    {event:"custom",args:{func:"kaleidoscope:doll/events/roll",loot_table:"kaleidoscope:gift_box_roll/green"}},\
                    {event:"destruct"}\
                ]}\
            }\
        }\
    }\
}

data modify storage dc:index keylist append value "green_doll_gift_box"

# 【yellow_doll_gift_box】黄色礼物盒
data modify storage dc:index input.yellow_doll_gift_box set value {\
    modsize:[0.8f,0.8f,0.8f],\
    interactsize:{height:0.8f,width:0.8f},\
    loot_table:"kaleidoscope:gift_box/yellow",\
    template:"kaleidoscope",\
    events:{\
        left_click:{\
            fallback:{\
                event:"group",args:{\
                    events:[\
                    {event:"custom",args:{func:"kaleidoscope:doll/events/roll",loot_table:"kaleidoscope:gift_box_roll/yellow"}},\
                    {event:"destruct"}\
                ]}\
            }\
        },\
        right_click:{\
            fallback:{\
                event:"group",args:{\
                    events:[\
                    {event:"custom",args:{func:"kaleidoscope:doll/events/roll",loot_table:"kaleidoscope:gift_box_roll/yellow"}},\
                    {event:"destruct"}\
                ]}\
            }\
        }\
    }\
}

data modify storage dc:index keylist append value "yellow_doll_gift_box"

# 【purple_doll_gift_box】紫色礼物盒
data modify storage dc:index input.purple_doll_gift_box set value {\
    modsize:[0.8f,0.8f,0.8f],\
    interactsize:{height:0.8f,width:0.8f},\
    loot_table:"kaleidoscope:gift_box/purple",\
    template:"kaleidoscope",\
    events:{\
        left_click:{\
            fallback:{\
                event:"group",args:{\
                    events:[\
                    {event:"custom",args:{func:"kaleidoscope:doll/events/roll",loot_table:"kaleidoscope:gift_box_roll/purple"}},\
                    {event:"destruct"}\
                ]}\
            }\
        },\
        right_click:{\
            fallback:{\
                event:"group",args:{\
                    events:[\
                    {event:"custom",args:{func:"kaleidoscope:doll/events/roll",loot_table:"kaleidoscope:gift_box_roll/purple"}},\
                    {event:"destruct"}\
                ]}\
            }\
        }\
    }\
}

data modify storage dc:index keylist append value "purple_doll_gift_box"

#【doll_machine】玩偶抽奖机
data modify storage dc:index input.doll_machine set value {\
    type:"hitbox",\
    extra_data:{\
        width:0.99f,\
        offset:0.5f\
    },\
    modsize:[1f,1f,1f],\
    interactsize:{height:1.5f,width:1f},\
    loot_table:"kaleidoscope:doll_machine",\
    template:"kaleidoscope",\
    events:{\
        construct:[{event:"sound",args:{sound:"minecraft:block.copper.place"}}],\
        left_click:{\
            fallback:{\
                event:"destruct",\
                args:{\
                    sound:"minecraft:block.copper.break",\
                    particle:"block{block_state:\"oxidized_copper\"}",\
                    "item":{mode:"replace",loot_table:"kaleidoscope:doll_machine"}\
                }\
            }\
        },\
        right_click:{\
            fallback:{event:"custom",args:{func:"kaleidoscope:doll/events/reject"}},\
            criteria:[\
                {event:"trans",item:{id:"emerald"},args:{index:"doll_machine_shake",func:"kaleidoscope:doll/shake/start"}}\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "doll_machine"


#【doll_machine_shake】玩偶抽奖机
data modify storage dc:index input.doll_machine_shake set value {\
    type:"hitbox",\
    extra_data:{\
        width:0.99f,\
        offset:0.5f\
    },\
    modsize:[1f,1f,1f],\
    interactsize:{height:1.5f,width:1f},\
    item:{id:"minecraft:cow_spawn_egg",components:{"minecraft:item_model":"kaleidoscope:doll_machine_shake"}},\
    template:"kaleidoscope",\
    events:{\
        left_click:{\
            fallback:{\
                event:"destruct",\
                args:{\
                    sound:"minecraft:block.copper.break",\
                    particle:"block{block_state:\"oxidized_copper\"}",\
                    "item":{mode:"replace",loot_table:"kaleidoscope:doll_machine"}\
                }\
            }\
        }\
    }\
}

data modify storage dc:index keylist append value "doll_machine_shake"
 

#【__diorite】diorite?
data modify storage dc:index input.doll_s___diorite set value {loot_table:"kaleidoscope:doll/s/__diorite",template:"doll"}
data modify storage dc:index keylist append value "doll_s___diorite"

#【__waht】bug
data modify storage dc:index input.doll_s___waht set value {loot_table:"kaleidoscope:doll/s/__waht",template:"doll"}
data modify storage dc:index keylist append value "doll_s___waht"
