# 【kaleidoscope_bar:blackboard/0】普通展板
data modify storage dc:index input.kaleidoscope_bar:blackboard/0 set value {\
    loot_table:"kaleidoscope:bar/blackboard/0",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:blackboard/0"}\
    },\
    template:"kaleidoscope_blackboard",\
    events:{\
        right_click:{\
            criteria:[\
                {event:"trans",args:{index:"kaleidoscope_bar:blackboard/1",func:"kaleidoscope:bar/trans/blackboard/place"},item:{id:"vine"}},\
                {event:"trans",args:{index:"kaleidoscope_bar:blackboard/2",func:"kaleidoscope:bar/trans/blackboard/place"},item:{id:"pink_petals"}},\
                {event:"trans",args:{index:"kaleidoscope_bar:blackboard/3",func:"kaleidoscope:bar/trans/blackboard/place"},item:{id:"sunflower"}},\
                {event:"trans",args:{index:"kaleidoscope_bar:blackboard/4",func:"kaleidoscope:bar/trans/blackboard/place"},item:{id:"rose_bush"}},\
                {event:"trans",args:{index:"kaleidoscope_bar:blackboard/5",func:"kaleidoscope:bar/trans/blackboard/place"},item:{id:"cornflower"}},\
                {event:"trans",args:{index:"kaleidoscope_bar:blackboard/6",func:"kaleidoscope:bar/trans/blackboard/place"},item:{id:"blue_orchid"}},\
                {event:"trans",args:{index:"kaleidoscope_bar:blackboard/7",func:"kaleidoscope:bar/trans/blackboard/place"},item:{id:"allium"}},\
                {event:"trans",args:{index:"kaleidoscope_bar:blackboard/8",func:"kaleidoscope:bar/trans/blackboard/place"},item:{id:"oxeye_daisy"}},\
                {event:"trans",args:{index:"kaleidoscope_bar:blackboard/9",func:"kaleidoscope:bar/trans/blackboard/place"},item:{id:"#kaleidoscope:tulips"}},\
                {event:"trans",args:{index:"kaleidoscope_bar:blackboard/10",func:"kaleidoscope:bar/trans/blackboard/place"},item:{id:"torchflower"}},\
                {event:"trans",args:{index:"kaleidoscope_bar:blackboard/11",func:"kaleidoscope:bar/trans/blackboard/place"},item:{id:"wither_rose"}},\
                {event:"trans",args:{index:"kaleidoscope_bar:blackboard/12",func:"kaleidoscope:bar/trans/blackboard/place"},item:{id:"peony"}},\
                {event:"trans",args:{index:"kaleidoscope_bar:blackboard/13",func:"kaleidoscope:bar/trans/blackboard/place"},item:{id:"pitcher_plant"}},\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_bar:blackboard/0"


# 【kaleidoscope_bar:blackboard/1】藤蔓展板
data modify storage dc:index input.kaleidoscope_bar:blackboard/1 set value {\
    loot_table:"kaleidoscope:bar/blackboard/1",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:blackboard/1"}\
    },\
    template:"kaleidoscope_blackboard",\
    events:{\
        right_click:{\
            criteria:[\
                {event:"group",item:{id:"shears"},args:{events:[{event:"custom",args:{func:"kaleidoscope:bar/events/custom_loot",item:"vine"}},{event:"trans",args:{index:"kaleidoscope_bar:blackboard/0",func:"kaleidoscope:bar/trans/blackboard/take"}}]}}\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_bar:blackboard/1"


# 【kaleidoscope_bar:blackboard/2】樱花展板
data modify storage dc:index input.kaleidoscope_bar:blackboard/2 set value {\
    loot_table:"kaleidoscope:bar/blackboard/2",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:blackboard/2"}\
    },\
    template:"kaleidoscope_blackboard",\
    events:{\
        right_click:{\
            criteria:[\
                {event:"group",item:{id:"shears"},args:{events:[{event:"custom",args:{func:"kaleidoscope:bar/events/custom_loot",item:"pink_petals"}},{event:"trans",args:{index:"kaleidoscope_bar:blackboard/0",func:"kaleidoscope:bar/trans/blackboard/take"}}]}}\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_bar:blackboard/2"

# 【kaleidoscope_bar:blackboard/3】向日葵展板
data modify storage dc:index input.kaleidoscope_bar:blackboard/3 set value {\
    loot_table:"kaleidoscope:bar/blackboard/3",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:blackboard/3"}\
    },\
    template:"kaleidoscope_blackboard",\
    events:{\
        right_click:{\
            criteria:[\
                {event:"group",item:{id:"shears"},args:{events:[{event:"custom",args:{func:"kaleidoscope:bar/events/custom_loot",item:"sunflower"}},{event:"trans",args:{index:"kaleidoscope_bar:blackboard/0",func:"kaleidoscope:bar/trans/blackboard/take"}}]}}\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_bar:blackboard/3"

# 【kaleidoscope_bar:blackboard/4】玫瑰展板
data modify storage dc:index input.kaleidoscope_bar:blackboard/4 set value {\
    loot_table:"kaleidoscope:bar/blackboard/4",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:blackboard/4"}\
    },\
    template:"kaleidoscope_blackboard",\
    events:{\
        right_click:{\
            criteria:[\
                {event:"group",item:{id:"shears"},args:{events:[{event:"custom",args:{func:"kaleidoscope:bar/events/custom_loot",item:"rose_bush"}},{event:"trans",args:{index:"kaleidoscope_bar:blackboard/0",func:"kaleidoscope:bar/trans/blackboard/take"}}]}}\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_bar:blackboard/4"

# 【kaleidoscope_bar:blackboard/5】矢车菊展板
data modify storage dc:index input.kaleidoscope_bar:blackboard/5 set value {\
    loot_table:"kaleidoscope:bar/blackboard/5",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:blackboard/5"}\
    },\
    template:"kaleidoscope_blackboard",\
    events:{\
        right_click:{\
            criteria:[\
                {event:"group",item:{id:"shears"},args:{events:[{event:"custom",args:{func:"kaleidoscope:bar/events/custom_loot",item:"cornflower"}},{event:"trans",args:{index:"kaleidoscope_bar:blackboard/0",func:"kaleidoscope:bar/trans/blackboard/take"}}]}}\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_bar:blackboard/5"

# 【kaleidoscope_bar:blackboard/6】兰花展板
data modify storage dc:index input.kaleidoscope_bar:blackboard/6 set value {\
    loot_table:"kaleidoscope:bar/blackboard/6",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:blackboard/6"}\
    },\
    template:"kaleidoscope_blackboard",\
    events:{\
        right_click:{\
            criteria:[\
                {event:"group",item:{id:"shears"},args:{events:[{event:"custom",args:{func:"kaleidoscope:bar/events/custom_loot",item:"blue_orchid"}},{event:"trans",args:{index:"kaleidoscope_bar:blackboard/0",func:"kaleidoscope:bar/trans/blackboard/take"}}]}}\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_bar:blackboard/6"

# 【kaleidoscope_bar:blackboard/7】绒球葱展板
data modify storage dc:index input.kaleidoscope_bar:blackboard/7 set value {\
    loot_table:"kaleidoscope:bar/blackboard/7",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:blackboard/7"}\
    },\
    template:"kaleidoscope_blackboard",\
    events:{\
        right_click:{\
            criteria:[\
                {event:"group",item:{id:"shears"},args:{events:[{event:"custom",args:{func:"kaleidoscope:bar/events/custom_loot",item:"allium"}},{event:"trans",args:{index:"kaleidoscope_bar:blackboard/0",func:"kaleidoscope:bar/trans/blackboard/take"}}]}}\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_bar:blackboard/7"

# 【kaleidoscope_bar:blackboard/8】滨菊展板
data modify storage dc:index input.kaleidoscope_bar:blackboard/8 set value {\
    loot_table:"kaleidoscope:bar/blackboard/8",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:blackboard/8"}\
    },\
    template:"kaleidoscope_blackboard",\
    events:{\
        right_click:{\
            criteria:[\
                {event:"group",item:{id:"shears"},args:{events:[{event:"custom",args:{func:"kaleidoscope:bar/events/custom_loot",item:"oxeye_daisy"}},{event:"trans",args:{index:"kaleidoscope_bar:blackboard/0",func:"kaleidoscope:bar/trans/blackboard/take"}}]}}\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_bar:blackboard/8"

# 【kaleidoscope_bar:blackboard/9】郁金香展板
data modify storage dc:index input.kaleidoscope_bar:blackboard/9 set value {\
    loot_table:"kaleidoscope:bar/blackboard/9",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:blackboard/9"}\
    },\
    template:"kaleidoscope_blackboard",\
    events:{\
        right_click:{\
            criteria:[\
                {event:"group",item:{id:"shears"},args:{events:[{event:"custom",args:{func:"kaleidoscope:bar/events/tulip_loot"}},{event:"trans",args:{index:"kaleidoscope_bar:blackboard/0",func:"kaleidoscope:bar/trans/blackboard/take"}}]}}\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_bar:blackboard/9"


# 【kaleidoscope_bar:blackboard/10】火把花展板
data modify storage dc:index input.kaleidoscope_bar:blackboard/10 set value {\
    loot_table:"kaleidoscope:bar/blackboard/10",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:blackboard/10"}\
    },\
    template:"kaleidoscope_blackboard",\
    events:{\
        right_click:{\
            criteria:[\
                {event:"group",item:{id:"shears"},args:{events:[{event:"custom",args:{func:"kaleidoscope:bar/events/custom_loot",item:"torchflower"}},{event:"trans",args:{index:"kaleidoscope_bar:blackboard/0",func:"kaleidoscope:bar/trans/blackboard/take"}}]}}\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_bar:blackboard/10"

# 【kaleidoscope_bar:blackboard/11】凋零玫瑰展板
data modify storage dc:index input.kaleidoscope_bar:blackboard/11 set value {\
    loot_table:"kaleidoscope:bar/blackboard/11",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:blackboard/11"}\
    },\
    template:"kaleidoscope_blackboard",\
    events:{\
        right_click:{\
            criteria:[\
                {event:"group",item:{id:"shears"},args:{events:[{event:"custom",args:{func:"kaleidoscope:bar/events/custom_loot",item:"wither_rose"}},{event:"trans",args:{index:"kaleidoscope_bar:blackboard/0",func:"kaleidoscope:bar/trans/blackboard/take"}}]}}\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_bar:blackboard/11"

# 【kaleidoscope_bar:blackboard/12】牡丹展板
data modify storage dc:index input.kaleidoscope_bar:blackboard/12 set value {\
    loot_table:"kaleidoscope:bar/blackboard/12",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:blackboard/12"}\
    },\
    template:"kaleidoscope_blackboard",\
    events:{\
        right_click:{\
            criteria:[\
                {event:"group",item:{id:"shears"},args:{events:[{event:"custom",args:{func:"kaleidoscope:bar/events/custom_loot",item:"peony"}},{event:"trans",args:{index:"kaleidoscope_bar:blackboard/0",func:"kaleidoscope:bar/trans/blackboard/take"}}]}}\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_bar:blackboard/12"


# 【kaleidoscope_bar:blackboard/13】瓶子草展板
data modify storage dc:index input.kaleidoscope_bar:blackboard/13 set value {\
    loot_table:"kaleidoscope:bar/blackboard/13",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:blackboard/13"}\
    },\
    template:"kaleidoscope_blackboard",\
    events:{\
        right_click:{\
            criteria:[\
                {event:"group",item:{id:"shears"},args:{events:[{event:"custom",args:{func:"kaleidoscope:bar/events/custom_loot",item:"pitcher_plant"}},{event:"trans",args:{index:"kaleidoscope_bar:blackboard/0",func:"kaleidoscope:bar/trans/blackboard/take"}}]}}\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "kaleidoscope_bar:blackboard/13"