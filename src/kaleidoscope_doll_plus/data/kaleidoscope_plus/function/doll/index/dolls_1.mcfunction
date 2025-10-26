#【doll_36】犰狳
data modify storage dc:index input.doll_36 set value {loot_table:"kaleidoscope:doll/doll_36",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.armadillo.ambient"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{mode:"replace",loot_table:"kaleidoscope:doll/doll_36"},particle:"block{block_state:\"decorated_pot\"}",sound:"minecraft:entity.armadillo.hurt_reduced"}}\
        },\
        right_click:{\
            fallback:{event:"custom",args:{func:"kaleidoscope_plus:doll/events/pat/armadillo"}},\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/eat",sound:"minecraft:entity.armadillo.eat"},item:{id:"minecraft:spider_eye"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_36"

#【doll_37】粉色美西螈
data modify storage dc:index input.doll_37 set value {loot_table:"kaleidoscope:doll/doll_37",template:"doll_axolotl",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.axolotl.idle_air"}},\
            {event:"sound",args:{sound:"minecraft:entity.axolotl.idle_air"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"pink_concrete\"}",sound:"minecraft:entity.axolotl.hurt"}}\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.axolotl.idle_air"}},\
                        {event:"sound",args:{sound:"minecraft:entity.axolotl.idle_air"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            },\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/eat",sound:"minecraft:entity.axolotl.attack"},item:{id:"minecraft:tropical_fish_bucket"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_37"

#【doll_37_cyan】青色美西螈
data modify storage dc:index input.doll_37_cyan set value {loot_table:"kaleidoscope:doll/doll_37_cyan",template:"doll_axolotl",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.axolotl.idle_air"}},\
            {event:"sound",args:{sound:"minecraft:entity.axolotl.idle_air"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"light_blue_concrete\"}",sound:"minecraft:entity.axolotl.hurt"}}\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.axolotl.idle_air"}},\
                        {event:"sound",args:{sound:"minecraft:entity.axolotl.idle_air"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            },\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/eat",sound:"minecraft:entity.axolotl.attack"},item:{id:"minecraft:tropical_fish_bucket"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_37_cyan"

#【doll_37_gold】金色美西螈
data modify storage dc:index input.doll_37_gold set value {loot_table:"kaleidoscope:doll/doll_37_gold",template:"doll_axolotl",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.axolotl.idle_air"}},\
            {event:"sound",args:{sound:"minecraft:entity.axolotl.idle_air"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"yellow_concrete\"}",sound:"minecraft:entity.axolotl.hurt"}}\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.axolotl.idle_air"}},\
                        {event:"sound",args:{sound:"minecraft:entity.axolotl.idle_air"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            },\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/eat",sound:"minecraft:entity.axolotl.attack"},item:{id:"minecraft:tropical_fish_bucket"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_37_gold"

#【doll_37_wild】棕色美西螈
data modify storage dc:index input.doll_37_wild set value {loot_table:"kaleidoscope:doll/doll_37_wild",template:"doll_axolotl",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.axolotl.idle_air"}},\
            {event:"sound",args:{sound:"minecraft:entity.axolotl.idle_air"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"brown_concrete\"}",sound:"minecraft:entity.axolotl.hurt"}}\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.axolotl.idle_air"}},\
                        {event:"sound",args:{sound:"minecraft:entity.axolotl.idle_air"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            },\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/eat",sound:"minecraft:entity.axolotl.attack"},item:{id:"minecraft:tropical_fish_bucket"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_37_wild"

#【doll_37_blue】【稀有】蓝色美西螈
data modify storage dc:index input.doll_37_blue set value {loot_table:"kaleidoscope:doll/doll_37_blue",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.axolotl.idle_air"}},\
            {event:"sound",args:{sound:"minecraft:entity.axolotl.idle_air"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"blue_concrete\"}",sound:"minecraft:entity.axolotl.hurt"}}\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.axolotl.idle_air"}},\
                        {event:"sound",args:{sound:"minecraft:entity.axolotl.idle_air"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            },\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/eat",sound:"minecraft:entity.axolotl.attack"},item:{id:"minecraft:tropical_fish_bucket"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_37_blue"

#【doll_38】蜜蜂
data modify storage dc:index input.doll_38 set value {loot_table:"kaleidoscope:doll/doll_38",template:"doll",\
    events:{\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"honeycomb_block\"}",sound:"minecraft:block.wool.break"}}\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_38"

#【doll_39】骆驼
data modify storage dc:index input.doll_39 set value {loot_table:"kaleidoscope:doll/doll_39",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.camel.step_sand"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"yellow_concrete_powder\"}",sound:"minecraft:entity.camel.hurt"}}\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.camel.ambient"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            },\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/eat",sound:"minecraft:entity.camel.eat"},item:{id:"minecraft:cactus"}},\
                {event:"sit",item:{id:"minecraft:saddle"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_39"

#【doll_40】猫
data modify storage dc:index input.doll_40 set value {loot_table:"kaleidoscope:doll/doll_40",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.cat.ambient"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"white_wool\"}",sound:"minecraft:entity.cat.stray_ambient"}}\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.cat.ambient"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            },\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/eat",sound:"minecraft:entity.cat.eat"},item:{id:"#kaleidoscope_plus:fish"}},\
                {event:"group",args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.cat.purreow"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]},item:{id:"minecraft:brush"}\
                },\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_40"

#【doll_41】鸡
data modify storage dc:index input.doll_41 set value {loot_table:"kaleidoscope:doll/doll_41",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.chicken.ambient"}},\
        ],\
        left_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"what:die"}},\
                        {event:"destruct",args:{item:{},particle:"block{block_state:\"white_wool\"}",sound:"minecraft:entity.chicken.hurt"}}\
                    ]\
                }\
            },\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.chicken.ambient"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            },\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/eat",sound:"minecraft:entity.chicken.egg"},item:{id:"minecraft:wheat_seeds"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_41"

#【doll_42】牛
data modify storage dc:index input.doll_42 set value {loot_table:"kaleidoscope:doll/doll_42",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.cow.ambient"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"gray_wool\"}",sound:"minecraft:entity.cow.hurt"}},\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.cow.ambient"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            },\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/eat",sound:"minecraft:entity.cow.ambient"},item:{id:"minecraft:wheat"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_42"

#【doll_43】海豚
data modify storage dc:index input.doll_43 set value {loot_table:"kaleidoscope:doll/doll_43",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.dolphin.ambient"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"light_blue_terracotta\"}",sound:"minecraft:entity.dolphin.hurt"}},\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.dolphin.play"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            },\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/eat",sound:"minecraft:entity.dolphin.eat"},item:{id:"#kaleidoscope_plus:fish"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_43"

#【doll_44】驴
data modify storage dc:index input.doll_44 set value {loot_table:"kaleidoscope:doll/doll_44",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.donkey.jump"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"light_gray_wool\"}",sound:"minecraft:entity.donkey.hurt"}}\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.donkey.ambient"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            },\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/eat",sound:"minecraft:entity.donkey.eat"},item:{id:"#kaleidoscope_plus:horse"}},\
                {event:"sit",item:{id:"minecraft:saddle"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_44"

#【doll_45】狐狸
data modify storage dc:index input.doll_45 set value {loot_table:"kaleidoscope:doll/doll_45",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.fox.ambient"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"orange_wool\"}",sound:"minecraft:entity.fox.hurt"}}\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.fox.ambient"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            },\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/eat",sound:"minecraft:entity.fox.bite"},item:{id:"minecraft:sweet_berries"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_45"

#【doll_46】青蛙
data modify storage dc:index input.doll_46 set value {loot_table:"kaleidoscope:doll/doll_46",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.frog.step"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"green_wool\"}",sound:"minecraft:entity.frog.hurt"}}\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.frog.ambient"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            },\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/eat",sound:"minecraft:entity.frog.eat"},item:{id:"minecraft:slime_ball"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_46"

#【doll_47】发光鱿鱼
data modify storage dc:index input.doll_47 set value {loot_table:"kaleidoscope:doll/doll_47",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.squid.step"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"sea_lantern\"}",sound:"minecraft:entity.squid.hurt"}}\
        },\
        right_click:{\
            fallback:{event:"custom",args:{func:"kaleidoscope_plus:doll/events/pat/squid",glow:{}}},\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_47"

#【doll_48】鱿鱼
data modify storage dc:index input.doll_48 set value {loot_table:"kaleidoscope:doll/doll_48",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.squid.step"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"sculk\"}",sound:"minecraft:entity.squid.hurt"}}\
        },\
        right_click:{\
            fallback:{event:"custom",args:{func:"kaleidoscope_plus:doll/events/pat/squid"}},\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_48"

#【doll_49】山羊
data modify storage dc:index input.doll_49 set value {loot_table:"kaleidoscope:doll/doll_49",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.goat.ram_impact"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"white_wool\"}",sound:"minecraft:entity.goat.ram_impact"}}\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.goat.ambient"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            },\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/eat",sound:"minecraft:entity.goat.eat"},item:{id:"minecraft:wheat"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_49"

#【doll_50】马
data modify storage dc:index input.doll_50 set value {loot_table:"kaleidoscope:doll/doll_50",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.horse.jump"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"jungle_log\"}",sound:"minecraft:entity.horse.hurt"}}\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.horse.ambient"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            },\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/eat",sound:"minecraft:entity.mule.eat"},item:{id:"#kaleidoscope_plus:horse"}},\
                {event:"sit",item:{id:"minecraft:saddle"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_50"

#【doll_51】羊驼
data modify storage dc:index input.doll_51 set value {loot_table:"kaleidoscope:doll/doll_51",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.llama.jump"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"white_terracotta\"}",sound:"minecraft:entity.llama.hurt"}}\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.llama.ambient"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            },\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/eat",sound:"minecraft:entity.llama.eat"},item:{id:"minecraft:wheat"}},\
                {event:"sit",item:{id:"minecraft:saddle"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_51"

#【doll_52】行商羊驼
data modify storage dc:index input.doll_52 set value {loot_table:"kaleidoscope:doll/doll_52",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.llama.jump"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"white_terracotta\"}",sound:"minecraft:entity.llama.hurt"}}\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.llama.ambient"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            },\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/eat",sound:"minecraft:entity.llama.eat"},item:{id:"minecraft:wheat"}},\
                {event:"sit",item:{id:"minecraft:saddle"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_52"

#【doll_53】哞菇
data modify storage dc:index input.doll_53 set value {loot_table:"kaleidoscope:doll/doll_53",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.cow.ambient"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"red_mushroom_block\"}",sound:"minecraft:entity.cow.hurt"}},\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.cow.ambient"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            },\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/eat",sound:"minecraft:entity.mooshroom.eat"},item:{id:"minecraft:wheat"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_53"

#【doll_54】豹猫
data modify storage dc:index input.doll_54 set value {loot_table:"kaleidoscope:doll/doll_54",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.cat.ambient"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"yellow_wool\"}",sound:"minecraft:entity.cat.stray_ambient"}}\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.cat.ambient"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            },\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/eat",sound:"minecraft:entity.cat.eat"},item:{id:"#kaleidoscope_plus:fish"}},\
                {event:"group",args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.cat.purreow"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]},item:{id:"minecraft:brush"}\
                },\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_54"

#【doll_55】熊猫
data modify storage dc:index input.doll_55 set value {loot_table:"kaleidoscope:doll/doll_55",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.panda.step"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"white_concrete\"}",sound:"minecraft:entity.panda.hurt"}},\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.panda.ambient"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            },\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/eat",sound:"minecraft:entity.panda.eat"},item:{id:"minecraft:bamboo"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_55"

#【doll_56】鹦鹉
data modify storage dc:index input.doll_56 set value {loot_table:"kaleidoscope:doll/doll_56",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.parrot.ambient"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"lime_concrete\"}",sound:"minecraft:entity.parrot.hurt"}},\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.parrot.ambient"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            },\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/eat",sound:"minecraft:entity.parrot.eat"},item:{id:"#kaleidoscope_plus:seeds"}},\
                {event:"destruct",args:{item:{},particle:"block{block_state:\"lime_concrete\"}",sound:"minecraft:entity.parrot.death"},item:{id:"minecraft:cookie"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_56"

#【doll_57】猪
data modify storage dc:index input.doll_57 set value {loot_table:"kaleidoscope:doll/doll_57",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.pig.ambient"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"pink_concrete\"}",sound:"minecraft:entity.pig.hurt"}}\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.pig.ambient"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            },\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/eat",sound:"minecraft:entity.pig.ambient"},item:{id:"minecraft:carrot"}},\
                {event:"sit",item:{id:"minecraft:saddle"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_57"

#【doll_58】北极熊
data modify storage dc:index input.doll_58 set value {loot_table:"kaleidoscope:doll/doll_58",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.polar_bear.step"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"white_wool\"}",sound:"minecraft:entity.polar_bear.hurt"}}\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.polar_bear.ambient_baby"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            },\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/eat",sound:"minecraft:entity.panda.eat"},item:{id:"#kaleidoscope_plus:fish"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_58"

#【doll_59】河豚
data modify storage dc:index input.doll_59 set value {loot_table:"kaleidoscope:doll/doll_59",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.puffer_fish.flop"}},\
            {event:"custom",args:{func:"kaleidoscope_plus:doll/events/pufferfish"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{mode:"replace",loot_table:"kaleidoscope:doll/doll_59"},particle:"block{block_state:\"yellow_wool\"}",sound:"minecraft:entity.puffer_fish.hurt"}}\
        },\
    }\
}
data modify storage dc:index keylist append value "doll_59"

#【doll_60】兔子
data modify storage dc:index input.doll_60 set value {loot_table:"kaleidoscope:doll/doll_60",template:"doll",\
    events:{\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"snow\"}",sound:"minecraft:entity.rabbit.hurt"}}\
        },\
        right_click:{\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/eat",sound:"minecraft:entity.panda.eat"},item:{id:"minecraft:carrot"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_60"

#【doll_61】悦灵
data modify storage dc:index input.doll_61 set value {loot_table:"kaleidoscope:doll/doll_61",template:"doll",\
    events:{\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"light_blue_concrete\"}",sound:"minecraft:entity.allay.hurt"}}\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.allay.item_taken"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            },\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_61"

#【doll_62】绵羊
data modify storage dc:index input.doll_62 set value {loot_table:"kaleidoscope:doll/doll_62",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.sheep.ambient"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{mode:"inherit"},particle:"block{block_state:\"white_wool\"}",sound:"minecraft:entity.sheep.hurt"}},\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.sheep.ambient"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            },\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/eat",sound:"minecraft:entity.sheep.ambient"},item:{id:"minecraft:wheat"}},\
                {event:"sound",args:{sound:"minecraft:entity.sheep.shear"},item:{id:"minecraft:shear"}},\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/color",color:[1f,1f,1f]},item:{id:"minecraft:white_dye"}},\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/color",color:[0.929f,0.474f,1.05f]},item:{id:"minecraft:orange_dye"}},\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/color",color:[0.737f,0.286f,0.706f]},item:{id:"minecraft:magenta_dye"}},\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/color",color:[0.212f,0.663f,0.816f]},item:{id:"minecraft:light_blue_dye"}},\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/color",color:[0.922f,0.784f,0.22f]},item:{id:"minecraft:yellow_dye"}},\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/color",color:[0.474f,0.737f,0.114f]},item:{id:"minecraft:lime_dye"}},\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/color",color:[0.89f,0.506f,0.623f]},item:{id:"minecraft:pink_dye"}},\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/color",color:[0.263f,0.29f,0.302f]},item:{id:"minecraft:gray_dye"}},\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/color",color:[0.584f,0.584f,0.565f]},item:{id:"minecraft:light_gray_dye"}},\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/color",color:[0.078f,0.572f,0.572f]},item:{id:"minecraft:cyan_dye"}},\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/color",color:[0.506f,0.184f,0.686f]},item:{id:"minecraft:purple_dye"}},\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/color",color:[0.22f,0.25f,0.635f]},item:{id:"minecraft:blue_dye"}},\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/color",color:[0.486f,0.31f,0.184f]},item:{id:"minecraft:brown_dye"}},\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/color",color:[0.349f,0.462f,0.082f]},item:{id:"minecraft:green_dye"}},\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/color",color:[0.655f,0.173f,0.141f]},item:{id:"minecraft:red_dye"}},\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/color",color:[0.11f,0.11f,0.125f]},item:{id:"minecraft:black_dye"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_62"



#【doll_63】海龟
data modify storage dc:index input.doll_63 set value {loot_table:"kaleidoscope:doll/doll_63",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.turtle.ambient"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"lime_concrete\"}",sound:"minecraft:entity.turtle.hurt"}},\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.turtle.ambient"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            },\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/eat",sound:"minecraft:entity.turtle.ambient"},item:{id:"minecraft:seagrass"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_63"

#【doll_64】狼
data modify storage dc:index input.doll_64 set value {loot_table:"kaleidoscope:doll/doll_64",template:"doll",\
    events:{\
        construct:[\
            {\
                event:"random",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.wolf.ambient"}},\
                        {event:"sound",args:{sound:"minecraft:entity.wolf.pant"}},\
                        {event:"sound",args:{sound:"minecraft:entity.wolf.whine"}},\
                    ]\
                }\
            },\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"white_concrete\"}",sound:"minecraft:entity.wolf.hurt"}},\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}},\
                        {\
                        event:"random",\
                            args:{\
                                events:[\
                                    {event:"sound",args:{sound:"minecraft:entity.wolf.ambient"}},\
                                    {event:"sound",args:{sound:"minecraft:entity.wolf.pant"}},\
                                    {event:"sound",args:{sound:"minecraft:entity.wolf.whine"}},\
                                ]\
                            }\
                        },\
                    ]\
                }\
            },\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/eat",sound:"minecraft:entity.panda.eat"},item:{id:"minecraft:bone"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_64"

#【doll_65】铁傀儡
data modify storage dc:index input.doll_65 set value {loot_table:"kaleidoscope:doll/doll_65",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.iron_golem.step"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{mode:"replace",loot_table:"kaleidoscope:doll/doll_65"},particle:"block{block_state:\"white_concrete\"}",sound:"minecraft:entity.iron_golem.hurt"}},\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.iron_golem.repair"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            },\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/pat/iron_golem"},item:{id:"minecraft:poppy"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_65"

#【doll_66】炽足兽
data modify storage dc:index input.doll_66 set value {loot_table:"kaleidoscope:doll/doll_66",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.strider.ambient"}},\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"red_concrete\"}",sound:"minecraft:entity.strider.hurt"}}\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.strider.ambient"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            },\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/eat",sound:"minecraft:entity.strider.eat"},item:{id:"minecraft:warped_fungus"}},\
                {event:"sit",item:{id:"minecraft:saddle"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_66"
