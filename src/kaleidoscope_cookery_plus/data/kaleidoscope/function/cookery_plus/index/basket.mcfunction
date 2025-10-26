# 【basket_empty】果篮
data modify storage dc:index input.basket_empty set value {\
    template:"kaleidoscope_basket",\
    events:{\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"oak_planks\"}",sound:"minecraft:block.scaffolding.break"}}\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"basket_apple_1",func:"kaleidoscope:cookery_plus/trans/basket/add_apple"},\
                    item:{id:"apple"}\
                },\
                {\
                    event:"trans",\
                    args:{index:"basket_chorus_1",func:"kaleidoscope:cookery_plus/trans/basket/add_chorus"},\
                    item:{id:"chorus_fruit"}\
                },\
                {\
                    event:"trans",\
                    args:{index:"basket_egg_1",func:"kaleidoscope:cookery_plus/trans/basket/add_egg"},\
                    item:{id:"#kaleidoscope:cookery_plus/eggs"}\
                },\
                {\
                    event:"trans",\
                    args:{index:"basket_glow_berries_1",func:"kaleidoscope:cookery_plus/trans/basket/add_glow_berries"},\
                    item:{id:"glow_berries"}\
                },\
                {\
                    event:"trans",\
                    args:{index:"basket_sweet_berries_1",func:"kaleidoscope:cookery_plus/trans/basket/add_sweet_berries"},\
                    item:{id:"sweet_berries"}\
                },\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "basket_empty"

# 【basket_apple_1】果篮
data modify storage dc:index input.basket_apple_1 set value {\
    template:"kaleidoscope_basket",\
    events:{\
        left_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"custom",args:{func:"kaleidoscope:cookery_plus/events/extra_loot",loot_table:"{pools:[{rolls:1,entries:[{type:\"item\",name:\"apple\"}]}]}"}},\
                        {event:"destruct",args:{item:{},particle:"block{block_state:\"oak_planks\"}",sound:"minecraft:block.scaffolding.break"}}\
                    ]\
                }\
            }\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"basket_apple_2",func:"kaleidoscope:cookery_plus/trans/basket/add_apple"},\
                    item:{id:"apple"}\
                },\
                {\
                    event:"trans",\
                    args:{index:"basket_empty",func:"kaleidoscope:cookery_plus/trans/basket/take_apple"},\
                    item:{id:"air"}\
                },\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "basket_apple_1"

# 【basket_apple_2】果篮
data modify storage dc:index input.basket_apple_2 set value {\
    template:"kaleidoscope_basket",\
    events:{\
        left_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"custom",args:{func:"kaleidoscope:cookery_plus/events/extra_loot",loot_table:"{pools:[{rolls:2,entries:[{type:\"item\",name:\"apple\"}]}]}"}},\
                        {event:"destruct",args:{item:{},particle:"block{block_state:\"oak_planks\"}",sound:"minecraft:block.scaffolding.break"}}\
                    ]\
                }\
            }\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"basket_apple_3",func:"kaleidoscope:cookery_plus/trans/basket/add_apple"},\
                    item:{id:"apple"}\
                },\
                {\
                    event:"trans",\
                    args:{index:"basket_apple_1",func:"kaleidoscope:cookery_plus/trans/basket/take_apple"},\
                    item:{id:"air"}\
                },\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "basket_apple_2"

# 【basket_apple_3】果篮
data modify storage dc:index input.basket_apple_3 set value {\
    template:"kaleidoscope_basket",\
    events:{\
        left_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"custom",args:{func:"kaleidoscope:cookery_plus/events/extra_loot",loot_table:"{pools:[{rolls:3,entries:[{type:\"item\",name:\"apple\"}]}]}"}},\
                        {event:"destruct",args:{item:{},particle:"block{block_state:\"oak_planks\"}",sound:"minecraft:block.scaffolding.break"}}\
                    ]\
                }\
            }\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"basket_apple_2",func:"kaleidoscope:cookery_plus/trans/basket/take_apple"},\
                    item:{id:"air"}\
                },\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "basket_apple_3"

# 【basket_chorus_1】果篮
data modify storage dc:index input.basket_chorus_1 set value {\
    template:"kaleidoscope_basket",\
    events:{\
        left_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"custom",args:{func:"kaleidoscope:cookery_plus/events/extra_loot",loot_table:"{pools:[{rolls:1,entries:[{type:\"item\",name:\"chorus_fruit\"}]}]}"}},\
                        {event:"destruct",args:{item:{},particle:"block{block_state:\"oak_planks\"}",sound:"minecraft:block.scaffolding.break"}}\
                    ]\
                }\
            }\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"basket_chorus_2",func:"kaleidoscope:cookery_plus/trans/basket/add_chorus"},\
                    item:{id:"chorus_fruit"}\
                },\
                {\
                    event:"trans",\
                    args:{index:"basket_empty",func:"kaleidoscope:cookery_plus/trans/basket/take_chorus"},\
                    item:{id:"air"}\
                },\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "basket_chorus_1"

# 【basket_chorus_2】果篮
data modify storage dc:index input.basket_chorus_2 set value {\
    template:"kaleidoscope_basket",\
    events:{\
        left_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"custom",args:{func:"kaleidoscope:cookery_plus/events/extra_loot",loot_table:"{pools:[{rolls:2,entries:[{type:\"item\",name:\"chorus_fruit\"}]}]}"}},\
                        {event:"destruct",args:{item:{},particle:"block{block_state:\"oak_planks\"}",sound:"minecraft:block.scaffolding.break"}}\
                    ]\
                }\
            }\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"basket_chorus_3",func:"kaleidoscope:cookery_plus/trans/basket/add_chorus"},\
                    item:{id:"chorus_fruit"}\
                },\
                {\
                    event:"trans",\
                    args:{index:"basket_chorus_1",func:"kaleidoscope:cookery_plus/trans/basket/take_chorus"},\
                    item:{id:"air"}\
                },\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "basket_chorus_2"

# 【basket_chorus_3】果篮
data modify storage dc:index input.basket_chorus_3 set value {\
    template:"kaleidoscope_basket",\
    events:{\
        left_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"custom",args:{func:"kaleidoscope:cookery_plus/events/extra_loot",loot_table:"{pools:[{rolls:3,entries:[{type:\"item\",name:\"chorus_fruit\"}]}]}"}},\
                        {event:"destruct",args:{item:{},particle:"block{block_state:\"oak_planks\"}",sound:"minecraft:block.scaffolding.break"}}\
                    ]\
                }\
            }\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"basket_chorus_2",func:"kaleidoscope:cookery_plus/trans/basket/take_chorus"},\
                    item:{id:"air"}\
                },\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "basket_chorus_3"

# 【basket_egg_1】果篮
data modify storage dc:index input.basket_egg_1 set value {\
    template:"kaleidoscope_basket",\
    events:{\
        left_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"custom",args:{func:"kaleidoscope:cookery_plus/events/extra_loot",loot_table:"{pools:[{rolls:1,entries:[{type:\"item\",name:\"egg\"}]}]}"}},\
                        {event:"destruct",args:{item:{},particle:"block{block_state:\"oak_planks\"}",sound:"minecraft:block.scaffolding.break"}}\
                    ]\
                }\
            }\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"basket_egg_2",func:"kaleidoscope:cookery_plus/trans/basket/add_egg"},\
                    item:{id:"#kaleidoscope:cookery_plus/eggs"}\
                },\
                {\
                    event:"trans",\
                    args:{index:"basket_empty",func:"kaleidoscope:cookery_plus/trans/basket/take_egg"},\
                    item:{id:"air"}\
                },\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "basket_egg_1"

# 【basket_egg_2】果篮
data modify storage dc:index input.basket_egg_2 set value {\
    template:"kaleidoscope_basket",\
    events:{\
        left_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"custom",args:{func:"kaleidoscope:cookery_plus/events/extra_loot",loot_table:"{pools:[{rolls:2,entries:[{type:\"item\",name:\"egg\"}]}]}"}},\
                        {event:"destruct",args:{item:{},particle:"block{block_state:\"oak_planks\"}",sound:"minecraft:block.scaffolding.break"}}\
                    ]\
                }\
            }\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"basket_egg_3",func:"kaleidoscope:cookery_plus/trans/basket/add_egg"},\
                    item:{id:"#kaleidoscope:cookery_plus/eggs"}\
                },\
                {\
                    event:"trans",\
                    args:{index:"basket_egg_1",func:"kaleidoscope:cookery_plus/trans/basket/take_egg"},\
                    item:{id:"air"}\
                },\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "basket_egg_2"

# 【basket_egg_3】果篮
data modify storage dc:index input.basket_egg_3 set value {\
    template:"kaleidoscope_basket",\
    events:{\
        left_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"custom",args:{func:"kaleidoscope:cookery_plus/events/extra_loot",loot_table:"{pools:[{rolls:3,entries:[{type:\"item\",name:\"egg\"}]}]}"}},\
                        {event:"destruct",args:{item:{},particle:"block{block_state:\"oak_planks\"}",sound:"minecraft:block.scaffolding.break"}}\
                    ]\
                }\
            }\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"basket_egg_2",func:"kaleidoscope:cookery_plus/trans/basket/take_egg"},\
                    item:{id:"air"}\
                },\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "basket_egg_3"

# 【basket_glow_berries_1】果篮
data modify storage dc:index input.basket_glow_berries_1 set value {\
    template:"kaleidoscope_basket",\
    events:{\
        left_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"custom",args:{func:"kaleidoscope:cookery_plus/events/extra_loot",loot_table:"{pools:[{rolls:1,entries:[{type:\"item\",name:\"glow_berries\"}]}]}"}},\
                        {event:"destruct",args:{item:{},particle:"block{block_state:\"oak_planks\"}",sound:"minecraft:block.scaffolding.break"}}\
                    ]\
                }\
            }\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"basket_glow_berries_2",func:"kaleidoscope:cookery_plus/trans/basket/add_glow_berries"},\
                    item:{id:"glow_berries"}\
                },\
                {\
                    event:"trans",\
                    args:{index:"basket_empty",func:"kaleidoscope:cookery_plus/trans/basket/take_glow_berries"},\
                    item:{id:"air"}\
                },\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "basket_glow_berries_1"

# 【basket_glow_berries_2】果篮
data modify storage dc:index input.basket_glow_berries_2 set value {\
    template:"kaleidoscope_basket",\
    events:{\
        left_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"custom",args:{func:"kaleidoscope:cookery_plus/events/extra_loot",loot_table:"{pools:[{rolls:2,entries:[{type:\"item\",name:\"glow_berries\"}]}]}"}},\
                        {event:"destruct",args:{item:{},particle:"block{block_state:\"oak_planks\"}",sound:"minecraft:block.scaffolding.break"}}\
                    ]\
                }\
            }\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"basket_glow_berries_3",func:"kaleidoscope:cookery_plus/trans/basket/add_glow_berries"},\
                    item:{id:"glow_berries"}\
                },\
                {\
                    event:"trans",\
                    args:{index:"basket_glow_berries_1",func:"kaleidoscope:cookery_plus/trans/basket/take_glow_berries"},\
                    item:{id:"air"}\
                },\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "basket_glow_berries_2"

# 【basket_glow_berries_3】果篮
data modify storage dc:index input.basket_glow_berries_3 set value {\
    template:"kaleidoscope_basket",\
    events:{\
        left_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"custom",args:{func:"kaleidoscope:cookery_plus/events/extra_loot",loot_table:"{pools:[{rolls:3,entries:[{type:\"item\",name:\"glow_berries\"}]}]}"}},\
                        {event:"destruct",args:{item:{},particle:"block{block_state:\"oak_planks\"}",sound:"minecraft:block.scaffolding.break"}}\
                    ]\
                }\
            }\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"basket_glow_berries_2",func:"kaleidoscope:cookery_plus/trans/basket/take_glow_berries"},\
                    item:{id:"air"}\
                },\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "basket_glow_berries_3"

# 【basket_sweet_berries_1】果篮
data modify storage dc:index input.basket_sweet_berries_1 set value {\
    template:"kaleidoscope_basket",\
    events:{\
        left_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"custom",args:{func:"kaleidoscope:cookery_plus/events/extra_loot",loot_table:"{pools:[{rolls:1,entries:[{type:\"item\",name:\"sweet_berries\"}]}]}"}},\
                        {event:"destruct",args:{item:{},particle:"block{block_state:\"oak_planks\"}",sound:"minecraft:block.scaffolding.break"}}\
                    ]\
                }\
            }\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"basket_sweet_berries_2",func:"kaleidoscope:cookery_plus/trans/basket/add_sweet_berries"},\
                    item:{id:"sweet_berries"}\
                },\
                {\
                    event:"trans",\
                    args:{index:"basket_empty",func:"kaleidoscope:cookery_plus/trans/basket/take_sweet_berries"},\
                    item:{id:"air"}\
                },\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "basket_sweet_berries_1"

# 【basket_sweet_berries_2】果篮
data modify storage dc:index input.basket_sweet_berries_2 set value {\
    template:"kaleidoscope_basket",\
    events:{\
        left_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"custom",args:{func:"kaleidoscope:cookery_plus/events/extra_loot",loot_table:"{pools:[{rolls:2,entries:[{type:\"item\",name:\"sweet_berries\"}]}]}"}},\
                        {event:"destruct",args:{item:{},particle:"block{block_state:\"oak_planks\"}",sound:"minecraft:block.scaffolding.break"}}\
                    ]\
                }\
            }\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"basket_sweet_berries_3",func:"kaleidoscope:cookery_plus/trans/basket/add_sweet_berries"},\
                    item:{id:"sweet_berries"}\
                },\
                {\
                    event:"trans",\
                    args:{index:"basket_sweet_berries_1",func:"kaleidoscope:cookery_plus/trans/basket/take_sweet_berries"},\
                    item:{id:"air"}\
                },\
            ]\
        }\
    }\
}

data modify storage dc:index keylist append value "basket_sweet_berries_2"

# 【basket_sweet_berries_3】果篮
data modify storage dc:index input.basket_sweet_berries_3 set value {\
    template:"kaleidoscope_basket",\
    events:{\
        left_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"custom",args:{func:"kaleidoscope:cookery_plus/events/extra_loot",loot_table:"{pools:[{rolls:3,entries:[{type:\"item\",name:\"sweet_berries\"}]}]}"}},\
                        {event:"destruct",args:{item:{},particle:"block{block_state:\"oak_planks\"}",sound:"minecraft:block.scaffolding.break"}}\
                    ]\
                }\
            }\
        },\
        right_click:{\
            criteria:[\
                {\
                    event:"trans",\
                    args:{index:"basket_sweet_berries_2",func:"kaleidoscope:cookery_plus/trans/basket/take_sweet_berries"},\
                    item:{id:"air"}\
                },\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "basket_sweet_berries_3"