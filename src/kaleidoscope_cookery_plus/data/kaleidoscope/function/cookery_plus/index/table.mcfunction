# 【table_single】桌子
data modify storage dc:index input.table_single set value {\
    item:{id:"firework_star",components:{item_model:"kaleidoscope_cookery_plus:table/single"}},\
    template:"kaleidoscope_table",\
    events:{\
        construct:[{event:"sound",args:{sound:"block.wood.place"}}],\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"table_right",func:"kaleidoscope:cookery_plus/trans/table"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"table_left",func:"kaleidoscope:cookery_plus/trans/table"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
    }\
}
data modify storage dc:index keylist append value "table_single"

# 【table_left】桌子(左)
data modify storage dc:index input.table_left set value {\
    item:{id:"firework_star",components:{item_model:"kaleidoscope_cookery_plus:table/left"}},\
    template:"kaleidoscope_table",\
    events:{\
        construct:[{event:"sound",args:{sound:"block.wood.place"}}],\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"table_single",func:"kaleidoscope:cookery_plus/trans/table"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"table_middle",func:"kaleidoscope:cookery_plus/trans/table"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
    }\
}
data modify storage dc:index keylist append value "table_left"

# 【table_middle】桌子(中)
data modify storage dc:index input.table_middle set value {\
    item:{id:"firework_star",components:{item_model:"kaleidoscope_cookery_plus:table/middle"}},\
    template:"kaleidoscope_table",\
    events:{\
        construct:[{event:"sound",args:{sound:"block.wood.place"}}],\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"table_left",func:"kaleidoscope:cookery_plus/trans/table"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"table_right",func:"kaleidoscope:cookery_plus/trans/table"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
    }\
}
data modify storage dc:index keylist append value "table_middle"

# 【table_right】桌子(右)
data modify storage dc:index input.table_right set value {\
    item:{id:"firework_star",components:{item_model:"kaleidoscope_cookery_plus:table/right"}},\
    template:"kaleidoscope_table",\
    events:{\
        construct:[{event:"sound",args:{sound:"block.wood.place"}}],\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"table_middle",func:"kaleidoscope:cookery_plus/trans/table"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"table_single",func:"kaleidoscope:cookery_plus/trans/table"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
    }\
}
data modify storage dc:index keylist append value "table_right"

# 【chair】椅子
data modify storage dc:index input.chair set value {\
    type:"hitbox",\
    extra_data:{width:0.8f,offset:-0.2f},\
    item:{id:"firework_star",components:{item_model:"kaleidoscope_cookery_plus:chair"}},\
    template:"kaleidoscope",\
    events:{\
        construct:[{event:"sound",args:{sound:"block.wood.place"}}],\
        left_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"custom",args:{func:"kaleidoscope:cookery_plus/events/destruct/chair"}},\
                        {event:"destruct",args:{particle:"block{block_state:\"oak_planks\"}",sound:"block.wood.break"}}\
                    ]\
                }\
            }\
        },\
        right_click:{\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope:cookery_plus/events/carpets"},item:{id:"#wool_carpets"}},\
                {event:"custom",args:{func:"kaleidoscope:cookery_plus/events/shear"},item:{id:"shears"}}\
            ],\
            fallback:{event:"sit"}\
        }\
    }\
}
data modify storage dc:index keylist append value "chair"

# 【cook_stool】厨娘凳
data modify storage dc:index input.cook_stool set value {\
    type:"hitbox",\
    extra_data:{width:0.6f,offset:-0.18f},\
    interactsize:{height:0.5f,width:0.8f},\
    item:{id:"firework_star",components:{item_model:"kaleidoscope_cookery_plus:cook_stool"}},\
    template:"kaleidoscope",\
    events:{\
        left_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"custom",args:{func:"kaleidoscope:cookery_plus/events/destruct/cook_stool"}},\
                        {event:"destruct",args:{particle:"block{block_state:\"oak_planks\"}",sound:"block.wood.break"}}\
                    ]\
                }\
            }\
        },\
    }\
}
data modify storage dc:index keylist append value "cook_stool"