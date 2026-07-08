# 【kaleidoscope_bar:artistic0】酒瓶
data modify storage dc:index input.kaleidoscope_bar:artistic0 set value {\
    loot_table:"kaleidoscope:bar/bottles/artistic0",\
    template:"kaleidoscope_wine_bottle",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:bottles/artistic0"}\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bar:artistic0"

# 【kaleidoscope_bar:bordeaux_brown】酒瓶
data modify storage dc:index input.kaleidoscope_bar:bordeaux_brown set value {\
    loot_table:"kaleidoscope:bar/bottles/bordeaux_brown",\
    template:"kaleidoscope_wine_bottle",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:bottles/bordeaux_brown"}\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bar:bordeaux_brown"

# 【kaleidoscope_bar:bordeaux_green】酒瓶
data modify storage dc:index input.kaleidoscope_bar:bordeaux_green set value {\
    loot_table:"kaleidoscope:bar/bottles/bordeaux_green",\
    template:"kaleidoscope_wine_bottle",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:bottles/bordeaux_green"}\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bar:bordeaux_green"

# 【kaleidoscope_bar:bordeaux_orange】酒瓶
data modify storage dc:index input.kaleidoscope_bar:bordeaux_orange set value {\
    loot_table:"kaleidoscope:bar/bottles/bordeaux_orange",\
    template:"kaleidoscope_wine_bottle",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:bottles/bordeaux_orange"}\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bar:bordeaux_orange"

# 【kaleidoscope_bar:bordeaux_pink】酒瓶
data modify storage dc:index input.kaleidoscope_bar:bordeaux_pink set value {\
    loot_table:"kaleidoscope:bar/bottles/bordeaux_pink",\
    template:"kaleidoscope_wine_bottle",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:bottles/bordeaux_pink"}\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bar:bordeaux_pink"

# 【kaleidoscope_bar:bordeaux】酒瓶
data modify storage dc:index input.kaleidoscope_bar:bordeaux set value {\
    loot_table:"kaleidoscope:bar/bottles/bordeaux",\
    template:"kaleidoscope_wine_bottle",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:bottles/bordeaux"}\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bar:bordeaux"

# 【kaleidoscope_bar:cognac】酒瓶
data modify storage dc:index input.kaleidoscope_bar:cognac set value {\
    loot_table:"kaleidoscope:bar/bottles/cognac",\
    template:"kaleidoscope_wine_bottle",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:bottles/cognac"}\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bar:cognac"

# 【kaleidoscope_bar:demi_blue】酒瓶
data modify storage dc:index input.kaleidoscope_bar:demi_blue set value {\
    loot_table:"kaleidoscope:bar/bottles/demi_blue",\
    template:"kaleidoscope_wine_bottle",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:bottles/demi_blue"}\
    },\
    events:{\
        right_click:{\
            criteria:[\
                {event:"trans",args:{index:"kaleidoscope_bar:demi_jeb",func:"kaleidoscope:bar/trans/bottles/jeb"},item:{id:"name_tag",components:{"minecraft:custom_name":"jeb_"}}}\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bar:demi_blue"

# 【kaleidoscope_bar:demi_brown】酒瓶
data modify storage dc:index input.kaleidoscope_bar:demi_brown set value {\
    loot_table:"kaleidoscope:bar/bottles/demi_brown",\
    template:"kaleidoscope_wine_bottle",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:bottles/demi_brown"}\
    },\
    events:{\
        right_click:{\
            criteria:[\
                {event:"trans",args:{index:"kaleidoscope_bar:demi_jeb",func:"kaleidoscope:bar/trans/bottles/jeb"},item:{id:"name_tag",components:{"minecraft:custom_name":"jeb_"}}}\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bar:demi_brown"

# 【kaleidoscope_bar:demi_green】酒瓶
data modify storage dc:index input.kaleidoscope_bar:demi_green set value {\
    loot_table:"kaleidoscope:bar/bottles/demi_green",\
    template:"kaleidoscope_wine_bottle",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:bottles/demi_green"}\
    },\
    events:{\
        right_click:{\
            criteria:[\
                {event:"trans",args:{index:"kaleidoscope_bar:demi_jeb",func:"kaleidoscope:bar/trans/bottles/jeb"},item:{id:"name_tag",components:{"minecraft:custom_name":"jeb_"}}}\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bar:demi_green"

# 【kaleidoscope_bar:demi_pink】酒瓶
data modify storage dc:index input.kaleidoscope_bar:demi_pink set value {\
    loot_table:"kaleidoscope:bar/bottles/demi_pink",\
    template:"kaleidoscope_wine_bottle",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:bottles/demi_pink"}\
    },\
    events:{\
        right_click:{\
            criteria:[\
                {event:"trans",args:{index:"kaleidoscope_bar:demi_jeb",func:"kaleidoscope:bar/trans/bottles/jeb"},item:{id:"name_tag",components:{"minecraft:custom_name":"jeb_"}}}\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bar:demi_pink"

# 【kaleidoscope_bar:demi_jeb】酒瓶
data modify storage dc:index input.kaleidoscope_bar:demi_jeb set value {\
    loot_table:"kaleidoscope:bar/bottles/demi_jeb",\
    template:"kaleidoscope_wine_bottle",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:bottles/demi_jeb"}\
    },\
    events:{\
        update:[{event:"custom",args:{func:"kaleidoscope:bar/events/bottles/jeb_"}}]\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bar:demi_jeb"

# 【kaleidoscope_bar:spirit】酒瓶
data modify storage dc:index input.kaleidoscope_bar:spirit set value {\
    loot_table:"kaleidoscope:bar/bottles/spirit",\
    template:"kaleidoscope_wine_bottle",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:bottles/spirit"}\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bar:spirit"

# 【kaleidoscope_bar:tankard】酒杯
data modify storage dc:index input.kaleidoscope_bar:tankard set value {\
    loot_table:"kaleidoscope:bar/bottles/tankard",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:bottles/tankard"}\
    },\
    template:"kaleidoscope",\
    modsize:[1f,1f,1f],\
    interactsize:{height:1f,width:0.6f},\
    type:"regular",\
    prop:{orient:"16"},\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"block.wood.place"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{mode:"inherit"},particle:"self",sound:"block.wood.break"}}\
        },\
        right_click:{\
            "fallback":{event:"destruct",args:{item:{mode:"inherit"},sound:"entity.item.pickup"}}\
        }\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bar:tankard"

# 【kaleidoscope_bar:bordeaux_yellow】酒瓶
data modify storage dc:index input.kaleidoscope_bar:bordeaux_yellow set value {\
    loot_table:"kaleidoscope:bar/bottles/bordeaux_yellow",\
    template:"kaleidoscope_wine_bottle",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:bottles/bordeaux_yellow"}\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bar:bordeaux_yellow"

# 【kaleidoscope_bar:bordeaux_red】酒瓶
data modify storage dc:index input.kaleidoscope_bar:bordeaux_red set value {\
    loot_table:"kaleidoscope:bar/bottles/bordeaux_red",\
    template:"kaleidoscope_wine_bottle",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:bottles/bordeaux_red"}\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bar:bordeaux_red"

# 【kaleidoscope_bar:bordeaux_glow】酒瓶
data modify storage dc:index input.kaleidoscope_bar:bordeaux_glow set value {\
    loot_table:"kaleidoscope:bar/bottles/bordeaux_glow",\
    template:"kaleidoscope_wine_bottle",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:bottles/bordeaux_glow"}\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bar:bordeaux_glow"

# 【kaleidoscope_bar:bordeaux_gold】酒瓶
data modify storage dc:index input.kaleidoscope_bar:bordeaux_gold set value {\
    loot_table:"kaleidoscope:bar/bottles/bordeaux_gold",\
    template:"kaleidoscope_wine_bottle",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:bottles/bordeaux_gold"}\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bar:bordeaux_gold"

# 【kaleidoscope_bar:cube_yellow】酒瓶
data modify storage dc:index input.kaleidoscope_bar:cube_yellow set value {\
    loot_table:"kaleidoscope:bar/bottles/cube_yellow",\
    template:"kaleidoscope_wine_bottle",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:bottles/cube_yellow"}\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bar:cube_yellow"

# 【kaleidoscope_bar:cube_red】酒瓶
data modify storage dc:index input.kaleidoscope_bar:cube_red set value {\
    loot_table:"kaleidoscope:bar/bottles/cube_red",\
    template:"kaleidoscope_wine_bottle",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:bottles/cube_red"}\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bar:cube_red"

# 【kaleidoscope_bar:cube_orange】酒瓶
data modify storage dc:index input.kaleidoscope_bar:cube_orange set value {\
    loot_table:"kaleidoscope:bar/bottles/cube_orange",\
    template:"kaleidoscope_wine_bottle",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:bottles/cube_orange"}\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bar:cube_orange"

# 【kaleidoscope_bar:cube_large】酒瓶
data modify storage dc:index input.kaleidoscope_bar:cube_large set value {\
    loot_table:"kaleidoscope:bar/bottles/cube_large",\
    template:"kaleidoscope_wine_bottle",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:bottles/cube_large"}\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bar:cube_large"

# 【kaleidoscope_bar:artistic1】酒瓶
data modify storage dc:index input.kaleidoscope_bar:artistic1 set value {\
    loot_table:"kaleidoscope:bar/bottles/artistic1",\
    template:"kaleidoscope_wine_bottle",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:bottles/artistic1"}\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bar:artistic1"

# 【kaleidoscope_bar:artistic2】酒瓶
data modify storage dc:index input.kaleidoscope_bar:artistic2 set value {\
    loot_table:"kaleidoscope:bar/bottles/artistic2",\
    template:"kaleidoscope_wine_bottle",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:bottles/artistic2"}\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bar:artistic2"

# 【kaleidoscope_bar:flask】酒瓶
data modify storage dc:index input.kaleidoscope_bar:flask set value {\
    loot_table:"kaleidoscope:bar/bottles/flask",\
    template:"kaleidoscope_wine_bottle",\
    item:{\
        components:{"minecraft:item_model":"kaleidoscope_bar:bottles/flask"}\
    }\
}
data modify storage dc:index keylist append value "kaleidoscope_bar:flask"
