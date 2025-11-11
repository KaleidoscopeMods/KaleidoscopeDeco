# 【kaleidoscope_holiday:lights/1】小灯串
data modify storage dc:index input.kaleidoscope_holiday:lights/1 set value {\
    loot_table:"kaleidoscope:holiday/lights/1",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_holiday:lights/1"}\
    },\
    template:"kaleidoscope_lights",\
    events:{\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/17"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/2"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_holiday:lights/1"

# 【kaleidoscope_holiday:lights/2】小灯串
data modify storage dc:index input.kaleidoscope_holiday:lights/2 set value {\
    loot_table:"kaleidoscope:holiday/lights/1",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_holiday:lights/2"}\
    },\
    template:"kaleidoscope_lights",\
    events:{\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/1"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/3"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_holiday:lights/2"

# 【kaleidoscope_holiday:lights/3】小灯串
data modify storage dc:index input.kaleidoscope_holiday:lights/3 set value {\
    loot_table:"kaleidoscope:holiday/lights/3",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_holiday:lights/3"}\
    },\
    template:"kaleidoscope_lights",\
    events:{\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/2"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/4"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_holiday:lights/3"

# 【kaleidoscope_holiday:lights/4】小灯串
data modify storage dc:index input.kaleidoscope_holiday:lights/4 set value {\
    loot_table:"kaleidoscope:holiday/lights/4",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_holiday:lights/4"}\
    },\
    template:"kaleidoscope_lights",\
    events:{\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/3"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/5"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_holiday:lights/4"

# 【kaleidoscope_holiday:lights/5】小灯串
data modify storage dc:index input.kaleidoscope_holiday:lights/5 set value {\
    loot_table:"kaleidoscope:holiday/lights/5",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_holiday:lights/5"}\
    },\
    template:"kaleidoscope_lights",\
    events:{\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/4"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/6"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_holiday:lights/5"

# 【kaleidoscope_holiday:lights/6】小灯串
data modify storage dc:index input.kaleidoscope_holiday:lights/6 set value {\
    loot_table:"kaleidoscope:holiday/lights/6",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_holiday:lights/6"}\
    },\
    template:"kaleidoscope_lights",\
    events:{\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/5"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/7"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_holiday:lights/6"

# 【kaleidoscope_holiday:lights/7】小灯串
data modify storage dc:index input.kaleidoscope_holiday:lights/7 set value {\
    loot_table:"kaleidoscope:holiday/lights/7",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_holiday:lights/7"}\
    },\
    template:"kaleidoscope_lights",\
    events:{\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/6"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/8"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_holiday:lights/7"

# 【kaleidoscope_holiday:lights/8】小灯串
data modify storage dc:index input.kaleidoscope_holiday:lights/8 set value {\
    loot_table:"kaleidoscope:holiday/lights/8",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_holiday:lights/8"}\
    },\
    template:"kaleidoscope_lights",\
    events:{\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/7"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/9"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_holiday:lights/8"

# 【kaleidoscope_holiday:lights/9】小灯串
data modify storage dc:index input.kaleidoscope_holiday:lights/9 set value {\
    loot_table:"kaleidoscope:holiday/lights/9",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_holiday:lights/9"}\
    },\
    template:"kaleidoscope_lights",\
    events:{\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/8"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/10"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_holiday:lights/9"

# 【kaleidoscope_holiday:lights/10】小灯串
data modify storage dc:index input.kaleidoscope_holiday:lights/10 set value {\
    loot_table:"kaleidoscope:holiday/lights/10",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_holiday:lights/10"}\
    },\
    template:"kaleidoscope_lights",\
    events:{\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/9"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/11"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_holiday:lights/10"

# 【kaleidoscope_holiday:lights/11】小灯串
data modify storage dc:index input.kaleidoscope_holiday:lights/11 set value {\
    loot_table:"kaleidoscope:holiday/lights/11",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_holiday:lights/11"}\
    },\
    template:"kaleidoscope_lights",\
    events:{\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/10"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/12"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_holiday:lights/11"

# 【kaleidoscope_holiday:lights/12】小灯串
data modify storage dc:index input.kaleidoscope_holiday:lights/12 set value {\
    loot_table:"kaleidoscope:holiday/lights/12",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_holiday:lights/12"}\
    },\
    template:"kaleidoscope_lights",\
    events:{\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/11"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/13"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_holiday:lights/12"

# 【kaleidoscope_holiday:lights/13】小灯串
data modify storage dc:index input.kaleidoscope_holiday:lights/13 set value {\
    loot_table:"kaleidoscope:holiday/lights/13",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_holiday:lights/13"}\
    },\
    template:"kaleidoscope_lights",\
    events:{\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/12"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/14"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_holiday:lights/13"

# 【kaleidoscope_holiday:lights/14】小灯串
data modify storage dc:index input.kaleidoscope_holiday:lights/14 set value {\
    loot_table:"kaleidoscope:holiday/lights/14",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_holiday:lights/14"}\
    },\
    template:"kaleidoscope_lights",\
    events:{\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/13"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/15"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_holiday:lights/14"

# 【kaleidoscope_holiday:lights/15】小灯串
data modify storage dc:index input.kaleidoscope_holiday:lights/15 set value {\
    loot_table:"kaleidoscope:holiday/lights/15",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_holiday:lights/15"}\
    },\
    template:"kaleidoscope_lights",\
    events:{\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/14"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/16"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_holiday:lights/15"

# 【kaleidoscope_holiday:lights/16】小灯串
data modify storage dc:index input.kaleidoscope_holiday:lights/16 set value {\
    loot_table:"kaleidoscope:holiday/lights/16",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_holiday:lights/16"}\
    },\
    template:"kaleidoscope_lights",\
    events:{\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/15"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/17"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_holiday:lights/16"

# 【kaleidoscope_holiday:lights/17】小灯串
data modify storage dc:index input.kaleidoscope_holiday:lights/17 set value {\
    loot_table:"kaleidoscope:holiday/lights/17",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_holiday:lights/17"}\
    },\
    template:"kaleidoscope_lights",\
    events:{\
        left_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/16"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"group",\
                    "args":{events:[{event:"trans",args:{index:"kaleidoscope_holiday:lights/1"}},{event:"custom",args:{func:"kaleidoscope:events/wand"}}]},\
                    item:{components:{"minecraft:custom_data":{kaleidoscope:"trans"}}}\
                }\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_holiday:lights/17"