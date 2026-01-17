$data modify storage dc:temp random.event set value $(value)
data modify storage dc:temp random.entry set value {\
                    "type": "item",\
                    "name": "minecraft:stone",\
                    "functions": [\
                        {\
                            "function": "minecraft:set_components",\
                            "components":{\
                                "custom_data":{\
                                    "dc_random":1\
                                }\
                            }\
                        }\
                    ]\
                }
data modify storage dc:temp random.entry.functions[0].components.custom_data.event set from storage dc:temp random.event
execute if data storage dc:temp random.event.weight run data modify storage dc:temp random.entry.weight set from storage dc:temp random.event.weight

data modify storage dc:temp random.loot_table.pools[0].entries append from storage dc:temp random.entry