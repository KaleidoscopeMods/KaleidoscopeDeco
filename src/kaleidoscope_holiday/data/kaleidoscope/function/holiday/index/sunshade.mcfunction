# 【kaleidoscope_holiday:sunshade/1】遮阳伞
data modify storage dc:index input.kaleidoscope_holiday:sunshade/1 set value {\
    loot_table:"kaleidoscope:holiday/sunshade/1",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_holiday:sunshade/1"}\
    },\
    template:"kaleidoscope_sunshade",\
    events:{\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:sunshade/6"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:sunshade/2"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_holiday:sunshade/1"

# 【kaleidoscope_holiday:sunshade/2】遮阳伞
data modify storage dc:index input.kaleidoscope_holiday:sunshade/2 set value {\
    loot_table:"kaleidoscope:holiday/sunshade/2",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_holiday:sunshade/2"}\
    },\
    template:"kaleidoscope_sunshade",\
    events:{\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:sunshade/1"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:sunshade/3"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_holiday:sunshade/2"

# 【kaleidoscope_holiday:sunshade/3】遮阳伞
data modify storage dc:index input.kaleidoscope_holiday:sunshade/3 set value {\
    loot_table:"kaleidoscope:holiday/sunshade/3",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_holiday:sunshade/3"}\
    },\
    template:"kaleidoscope_sunshade",\
    events:{\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:sunshade/2"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:sunshade/4"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_holiday:sunshade/3"

# 【kaleidoscope_holiday:sunshade/4】遮阳伞
data modify storage dc:index input.kaleidoscope_holiday:sunshade/4 set value {\
    loot_table:"kaleidoscope:holiday/sunshade/4",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_holiday:sunshade/4"}\
    },\
    template:"kaleidoscope_sunshade",\
    events:{\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:sunshade/3"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:sunshade/5"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_holiday:sunshade/4"

# 【kaleidoscope_holiday:sunshade/5】遮阳伞
data modify storage dc:index input.kaleidoscope_holiday:sunshade/5 set value {\
    loot_table:"kaleidoscope:holiday/sunshade/5",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_holiday:sunshade/5"}\
    },\
    template:"kaleidoscope_sunshade",\
    events:{\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:sunshade/4"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:sunshade/6"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_holiday:sunshade/5"

# 【kaleidoscope_holiday:sunshade/6】遮阳伞
data modify storage dc:index input.kaleidoscope_holiday:sunshade/6 set value {\
    loot_table:"kaleidoscope:holiday/sunshade/6",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_holiday:sunshade/6"}\
    },\
    template:"kaleidoscope_sunshade",\
    events:{\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:sunshade/5"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:sunshade/1"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_holiday:sunshade/6"


# ------------------------------- #



# 【kaleidoscope_holiday:sunshade_banner/1】遮阳伞
data modify storage dc:index input.kaleidoscope_holiday:sunshade_banner/1 set value {\
    loot_table:"kaleidoscope:holiday/sunshade_banner/1",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_holiday:sunshade_banner/1"}\
    },\
    template:"kaleidoscope_sunshade_banner",\
    events:{\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:sunshade_banner/6"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:sunshade_banner/2"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_holiday:sunshade_banner/1"

# 【kaleidoscope_holiday:sunshade_banner/2】遮阳伞
data modify storage dc:index input.kaleidoscope_holiday:sunshade_banner/2 set value {\
    loot_table:"kaleidoscope:holiday/sunshade_banner/2",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_holiday:sunshade_banner/2"}\
    },\
    template:"kaleidoscope_sunshade_banner",\
    events:{\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:sunshade_banner/1"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:sunshade_banner/3"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_holiday:sunshade_banner/2"

# 【kaleidoscope_holiday:sunshade_banner/3】遮阳伞
data modify storage dc:index input.kaleidoscope_holiday:sunshade_banner/3 set value {\
    loot_table:"kaleidoscope:holiday/sunshade_banner/3",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_holiday:sunshade_banner/3"}\
    },\
    template:"kaleidoscope_sunshade_banner",\
    events:{\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:sunshade_banner/2"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:sunshade_banner/4"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_holiday:sunshade_banner/3"

# 【kaleidoscope_holiday:sunshade_banner/4】遮阳伞
data modify storage dc:index input.kaleidoscope_holiday:sunshade_banner/4 set value {\
    loot_table:"kaleidoscope:holiday/sunshade_banner/4",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_holiday:sunshade_banner/4"}\
    },\
    template:"kaleidoscope_sunshade_banner",\
    events:{\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:sunshade_banner/3"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:sunshade_banner/5"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_holiday:sunshade_banner/4"

# 【kaleidoscope_holiday:sunshade_banner/5】遮阳伞
data modify storage dc:index input.kaleidoscope_holiday:sunshade_banner/5 set value {\
    loot_table:"kaleidoscope:holiday/sunshade_banner/5",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_holiday:sunshade_banner/5"}\
    },\
    template:"kaleidoscope_sunshade_banner",\
    events:{\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:sunshade_banner/4"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:sunshade_banner/6"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_holiday:sunshade_banner/5"

# 【kaleidoscope_holiday:sunshade_banner/6】遮阳伞
data modify storage dc:index input.kaleidoscope_holiday:sunshade_banner/6 set value {\
    loot_table:"kaleidoscope:holiday/sunshade_banner/6",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_holiday:sunshade_banner/6"}\
    },\
    template:"kaleidoscope_sunshade_banner",\
    events:{\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:sunshade_banner/5"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:sunshade_banner/1"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_holiday:sunshade_banner/6"