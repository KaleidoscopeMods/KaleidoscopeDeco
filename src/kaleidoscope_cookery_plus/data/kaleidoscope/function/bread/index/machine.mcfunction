# 【kaleidoscope_bread:machine】切面包机
data modify storage dc:index input.kaleidoscope_bread:machine set value {\
    template:"kaleidoscope_bread_machine",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bread:machine_empty"}\
    },\
    events:{\
        right_click:{\
            fallback:{event:"trans",args:{index:"kaleidoscope_bread:machine_open_empty",func:"kaleidoscope:bread/trans/open_lid"}}\
        }\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bread:machine"

# 【kaleidoscope_bread:machine_open_empty】切面包机
data modify storage dc:index input.kaleidoscope_bread:machine_open_empty set value {\
    template:"kaleidoscope_bread_machine",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bread:machine_open_empty"}\
    },\
    events:{\
        right_click:{\
            fallback:{event:"trans",args:{index:"kaleidoscope_bread:machine",func:"kaleidoscope:bread/trans/close_lid"}},\
            criteria:[\
                {"item":{id:"bread"},event:"trans",args:{index:"kaleidoscope_bread:machine_open_bread",func:"kaleidoscope:bread/trans/put_bread"}}\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bread:machine_open_empty"

# 【kaleidoscope_bread:machine_open_bread】放入面包
data modify storage dc:index input.kaleidoscope_bread:machine_open_bread set value {\
    template:"kaleidoscope_bread_machine",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bread:machine_open_bread"}\
    },\
    events:{\
        right_click:{\
            fallback:{event:"trans",args:{index:"kaleidoscope_bread:machine_bread",func:"kaleidoscope:bread/trans/close_lid"}},\
            criteria:[\
                {event:"trans",args:{index:"kaleidoscope_bread:machine_open_empty",func:"kaleidoscope:bread/trans/take_bread"},item:{},predicate:"kaleidoscope:shift"}\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bread:machine_open_bread"

# 【kaleidoscope_bread:machine_bread】关盖
data modify storage dc:index input.kaleidoscope_bread:machine_bread set value {\
    template:"kaleidoscope_bread_machine",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bread:machine_bread"}\
    },\
    events:{\
        right_click:{\
            fallback:{event:"trans",args:{index:"kaleidoscope_bread:machine_open_bread",func:"kaleidoscope:bread/trans/close_lid"}},\
            criteria:[\
                {event:"trans",args:{index:"kaleidoscope_bread:machine_process",func:"kaleidoscope:bread/trans/start"},item:{},predicate:"kaleidoscope:shift"}\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bread:machine_bread"

# 【kaleidoscope_bread:machine_process】启动
data modify storage dc:index input.kaleidoscope_bread:machine_process set value {\
    template:"kaleidoscope_bread_machine",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bread:machine_process",custom_model_data:{floats:[0]}}\
    },\
    events:{\
        right_click:{\
            fallback:{event:"sound",args:{sound:"block.copper.step"}}\
        }\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bread:machine_process"

# 【kaleidoscope_bread:machine_finish】完成
data modify storage dc:index input.kaleidoscope_bread:machine_finish set value {\
    template:"kaleidoscope_bread_machine",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bread:machine_process",custom_model_data:{floats:[22]}}\
    },\
    events:{\
        right_click:{\
            fallback:{event:"trans",args:{index:"kaleidoscope_bread:machine_open_slice",func:"kaleidoscope:bread/trans/open_lid"}},\
        }\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bread:machine_finish"

# 【kaleidoscope_bread:machine_open_slice】开盖取面包
data modify storage dc:index input.kaleidoscope_bread:machine_open_slice set value {\
    template:"kaleidoscope_bread_machine",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bread:machine_open_slice"}\
    },\
    events:{\
        right_click:{\
            fallback:{event:"trans",args:{index:"kaleidoscope_bread:machine_finish",func:"kaleidoscope:bread/trans/close_lid"}},\
            criteria:[\
                {event:"trans",args:{index:"kaleidoscope_bread:machine_open_empty",func:"kaleidoscope:bread/trans/take_slice"},item:{},predicate:"kaleidoscope:shift"}\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bread:machine_open_slice"