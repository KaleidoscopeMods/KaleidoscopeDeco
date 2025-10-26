

#【doll_2】烈焰人
data modify storage dc:index input.doll_2 set value {\
    loot_table:"kaleidoscope:doll/doll_2",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.blaze.hurt"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"magma_block\"}",sound:"minecraft:entity.blaze.hurt"}}\
        },\
        right_click:{\
            fallback:{event:"custom",args:{func:"kaleidoscope_plus:doll/events/pat/blaze"}},\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/flame/ignite"},item:{id:"minecraft:flint_and_steel"}},\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/flame/extinguish"},item:{id:"minecraft:water_bucket"}}\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_2"

#【doll_3】末影人
data modify storage dc:index input.doll_3 set value {\
    loot_table:"kaleidoscope:doll/doll_3",template:"doll",\
    events:{\
        construct:[\
            {event:"custom",args:{func:"kaleidoscope_plus:doll/events/pat/enderman/particle"}}\
        ],\
        left_click:{\
            fallback:{event:"group",args:{events:[\
            {event:"custom",args:{func:"kaleidoscope_plus:doll/events/pat/enderman/particle"}},\
            {event:"destruct",args:{item:{},particle:"block{block_state:\"crying_obsidian\"}"}}\
            ]}}\
        },\
        right_click:{\
            fallback:{event:"custom",args:{func:"kaleidoscope_plus:doll/events/pat/enderman"}},\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/tp"},item:{id:"minecraft:ender_pearl"}},\
                {event:"group",args:{events:[\
                    {event:"sound",args:{sound:"minecraft:entity.enderman.hurt"}},\
                    {event:"custom",args:{func:"kaleidoscope_plus:doll/events/tp"}},\
                ]},item:{id:"minecraft:water_bucket"}}\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_3"

#【doll_4】蜘蛛
data modify storage dc:index input.doll_4 set value {loot_table:"kaleidoscope:doll/doll_4",template:"doll",\
    events:{\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"gray_wool\"}",sound:"minecraft:entity.spider.hurt"}}\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_4"

#【doll_5】苦力怕
data modify storage dc:index input.doll_5 set value {loot_table:"kaleidoscope:doll/doll_5",template:"doll",\
    events:{\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"lime_wool\"}"}}\
        },\
        right_click:{\
            fallback:{event:"custom",args:{func:"kaleidoscope_plus:doll/events/pat/creeper"}},\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/explode"},item:{id:"minecraft:flint_and_steel"}}\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_5"

#【doll_6】凋零骷髅
data modify storage dc:index input.doll_6 set value {loot_table:"kaleidoscope:doll/doll_6",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.skeleton.ambient"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"black_wool\"}",sound:"minecraft:entity.skeleton.hurt"}}\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.skeleton.step"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            }\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_6"

#【doll_7】骷髅
data modify storage dc:index input.doll_7 set value {loot_table:"kaleidoscope:doll/doll_7",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.skeleton.ambient"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"white_wool\"}",sound:"minecraft:entity.skeleton.hurt"}}\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.skeleton.step"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            }\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_7"

#【doll_8】流浪者
data modify storage dc:index input.doll_8 set value {loot_table:"kaleidoscope:doll/doll_8",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.skeleton.ambient"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"white_wool\"}",sound:"minecraft:entity.skeleton.hurt"}}\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.skeleton.step"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            }\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_8"

#【doll_9】史莱姆
data modify storage dc:index input.doll_9 set value {loot_table:"kaleidoscope:doll/doll_9",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.slime.jump"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"lime_concrete\"}",sound:"minecraft:entity.slime.squish"}}\
        },\
        right_click:{\
            fallback:{event:"custom",args:{func:"kaleidoscope_plus:doll/events/pat/slime"}}\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_9"

#【doll_10】岩浆怪
data modify storage dc:index input.doll_10 set value {loot_table:"kaleidoscope:doll/doll_10",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.magma_cube.jump"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"red_concrete\"}",sound:"minecraft:entity.magma_cube.squish"}}\
        },\
        right_click:{\
            fallback:{event:"custom",args:{func:"kaleidoscope_plus:doll/events/pat/magma_cube"}}\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_10"

#【doll_11】潜影贝
data modify storage dc:index input.doll_11 set value {loot_table:"kaleidoscope:doll/doll_11",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.shulker.open"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"shulker_box\"}",sound:"minecraft:entity.shulker.hurt_closed"}}\
        },\
        right_click:{\
            fallback:{event:"trans",args:{index:doll_11_1,func:"kaleidoscope_plus:doll/events/shulker/start"}}\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_11"

#【doll_11_1】缩壳潜影贝
data modify storage dc:index input.doll_11_1 set value {loot_table:"kaleidoscope_plus:doll/doll_11_1",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.shulker.open"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{loot_table:"kaleidoscope:doll/doll_11",mode:"replace"},particle:"block{block_state:\"shulker_box\"}",sound:"minecraft:entity.shulker.hurt_closed"}}\
        },\
        right_click:{\
            fallback:{event:"custom",args:{func:"kaleidoscope_plus:doll/events/shulker"}}\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_11_1"


#【doll_12】恶魂
data modify storage dc:index input.doll_12 set value {interactsize:{height:1f,width:0.6f},loot_table:"kaleidoscope:doll/doll_12",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.ghast.ambient"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"white_concrete\"}",sound:"minecraft:entity.ghast.ambient"}}\
        },\
        right_click:{\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/pat/blaze"},item:{id:"minecraft:fire_charge"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_12"

#【doll_13】远古守卫者
data modify storage dc:index input.doll_13 set value {interactsize:{height:0.8f,width:0.8f},loot_table:"kaleidoscope:doll/doll_13",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.elder_guardian.flop"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{mode:"replace",loot_table:"kaleidoscope:doll/doll_13"},particle:"block{block_state:\"end_stone_bricks\"}",sound:"minecraft:entity.elder_guardian.flop"}}\
        },\
        right_click:{\
            fallback:{event:"custom",args:{func:"kaleidoscope_plus:doll/events/pat/guardian"}}\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_13"

#【doll_14】守卫者
data modify storage dc:index input.doll_14 set value {interactsize:{height:0.8f,width:0.8f},loot_table:"kaleidoscope:doll/doll_14",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.elder_guardian.flop"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{mode:"replace",loot_table:"kaleidoscope:doll/doll_14"},particle:"block{block_state:\"minecraft:prismarine_bricks\"}",sound:"minecraft:entity.elder_guardian.flop"}}\
        },\
        right_click:{\
            fallback:{event:"custom",args:{func:"kaleidoscope_plus:doll/events/pat/guardian"}}\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_14"

#【doll_15】僵尸猪灵
data modify storage dc:index input.doll_15 set value {loot_table:"kaleidoscope:doll/doll_15",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.zombified_piglin.ambient"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"pink_wool\"}",sound:"minecraft:entity.zombified_piglin.hurt"}}\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.zombified_piglin.ambient"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            }\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_15"

#【doll_16】疣猪兽
data modify storage dc:index input.doll_16 set value {loot_table:"kaleidoscope:doll/doll_16",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.hoglin.ambient"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"pink_wool\"}",sound:"minecraft:entity.hoglin.step"}}\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.hoglin.ambient"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            },\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/eat",sound:"minecraft:entity.hoglin.ambient"},item:{id:"minecraft:crimson_fungus"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_16"

#【doll_17】僵尸疣猪兽
data modify storage dc:index input.doll_17 set value {loot_table:"kaleidoscope:doll/doll_17",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.zoglin.ambient"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"pink_wool\"}",sound:"minecraft:entity.zoglin.step"}}\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.zoglin.ambient"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            }\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_17"

#【doll_18】洞穴蜘蛛
data modify storage dc:index input.doll_18 set value {loot_table:"kaleidoscope:doll/doll_18",template:"doll",\
    events:{\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"blue_terracotta\"}",sound:"minecraft:entity.spider.hurt"}}\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_18"

#【doll_19】幻翼
data modify storage dc:index input.doll_19 set value {loot_table:"kaleidoscope:doll/doll_19",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.cat.purreow"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"blue_wool\"}",sound:"minecraft:entity.cat.purr"}}\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.cat.stray_ambient"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            }\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_19"

#【doll_20】监守者
data modify storage dc:index input.doll_20 set value {loot_table:"kaleidoscope:doll/doll_20",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.warden.heartbeat"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"sculk\"}",sound:"minecraft:entity.warden.attack_impact"}}\
        },\
        right_click:{\
            fallback:{event:"custom",args:{func:"kaleidoscope_plus:doll/events/pat/warden"}}\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_20"

#【doll_21】蠹虫+末影螨
data modify storage dc:index input.doll_21 set value {interactsize:{height:0.3f,width:1f},loot_table:"kaleidoscope:doll/doll_21",template:"doll"}
data modify storage dc:index keylist append value "doll_21"

#【doll_22】劫掠兽
data modify storage dc:index input.doll_22 set value {loot_table:"kaleidoscope:doll/doll_22",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.ravager.step"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"light_gray_wool\"}",sound:"minecraft:entity.ravager.stunned"}}\
        },\
        right_click:{\
            fallback:{event:"custom",args:{func:"kaleidoscope_plus:doll/events/pat/ravanger"}},\
            criteria:[\
                {event:"sit",item:{id:"minecraft:saddle"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_22"

#【doll_23】溺尸
data modify storage dc:index input.doll_23 set value {loot_table:"kaleidoscope:doll/doll_23",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.drowned.step"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"prismarine\"}",sound:"minecraft:entity.drowned.step"}}\
        },\
        right_click:{\
            fallback:{event:"custom",args:{func:"kaleidoscope_plus:doll/events/pat/drowned"}},\
            criteria:[\
                {event:"group",args:{events:[\
                    {event:"custom",args:{func:"kaleidoscope_plus:doll/events/snowballs",item:{id:"trident",count:1,components:{"minecraft:item_model":"kaleidoscope:kplus/trident"}}}},\
                    {event:"sound",args:{sound:"minecraft:entity.drowned.shoot"}}\
                ]},item:{id:"minecraft:trident"}}\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_23"

#【doll_24】村民
data modify storage dc:index input.doll_24 set value {loot_table:"kaleidoscope:doll/doll_24",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.villager.ambient"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"terracotta\"}",sound:"minecraft:entity.villager.hurt"}}\
        },\
        right_click:{\
            fallback:{event:"custom",args:{func:"kaleidoscope_plus:doll/events/pat/villager"}},\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/pat/villager/emerald"},item:{id:"minecraft:emerald"}}\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_24"

#【doll_25】雪傀儡
data modify storage dc:index input.doll_25 set value {loot_table:"kaleidoscope:doll/doll_25",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:block.snow.fall"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"snow\"}",sound:"minecraft:entity.snow_golem.hurt"}}\
        },\
        right_click:{\
            criteria:[\
                {event:"group",args:{events:[\
                    {event:"custom",args:{func:"kaleidoscope_plus:doll/events/snowballs",item:{id:"snowball",count:1}}},\
                    {event:"sound",args:{sound:"minecraft:entity.snow_golem.shoot"}}\
                ]},item:{id:"minecraft:snowball"}},\
                {event:"group",args:{events:[\
                    {event:"trans",args:{index:doll_25_1}},\
                    {event:"sound",args:{sound:"minecraft:block.snow.place"}}\
                ]},item:{id:"minecraft:carved_pumpkin"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_25"

#【doll_25_1】雪傀儡（南瓜头）
data modify storage dc:index input.doll_25_1 set value {loot_table:"kaleidoscope_plus:doll/doll_25_1",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:block.snow.fall"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"snow\"}",sound:"minecraft:entity.snow_golem.hurt"}}\
        },\
        right_click:{\
            criteria:[\
                {event:"group",args:{events:[\
                    {event:"custom",args:{func:"kaleidoscope_plus:doll/events/snowballs",item:{id:"snowball",count:1}}},\
                    {event:"sound",args:{sound:"minecraft:entity.snow_golem.shoot"}}\
                ]},item:{id:"minecraft:snowball"}},\
                {event:"group",args:{events:[\
                    {event:"trans",args:{index:doll_25}},\
                    {event:"sound",args:{sound:"minecraft:entity.snow_golem.shear"}}\
                ]},item:{id:"minecraft:shears"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_25_1"

#【doll_26】僵尸
data modify storage dc:index input.doll_26 set value {loot_table:"kaleidoscope:doll/doll_26",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.zombie.step"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"green_wool\"}",sound:"minecraft:entity.zombie.hurt"}}\
        },\
        right_click:{\
            criteria:[\
                {event:"random",args:{events:[\
                    {event:"sound",args:{sound:"minecraft:entity.zombie.attack_wooden_door"},weight:4},\
                    {event:"sound",args:{sound:"minecraft:entity.zombie.break_wooden_door"},weight:1}\
                ]},item:{id:"#minecraft:wooden_doors"}},\
                {event:"sound",args:{sound:"minecraft:entity.zombie.attack_iron_door"},item:{id:"minecraft:iron_door"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_26"

#【doll_27】尸壳
data modify storage dc:index input.doll_27 set value {loot_table:"kaleidoscope:doll/doll_27",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.husk.step"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"brown_terracotta\"}",sound:"minecraft:entity.husk.hurt"}}\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_27"

#【doll_28】唤魔者
data modify storage dc:index input.doll_28 set value {loot_table:"kaleidoscope:doll/doll_28",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.evoker.ambient"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"light_gray_wool\"}",sound:"minecraft:entity.evoker.hurt"}}\
        },\
        right_click:{\
            fallback:{event:"custom",args:{func:"kaleidoscope_plus:doll/events/pat/evoker"}},\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/pat/evoker/wololo"},item:{id:"minecraft:blue_wool"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_28"

#【doll_29】幻术师
data modify storage dc:index input.doll_29 set value {loot_table:"kaleidoscope:doll/doll_29",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.illusioner.ambient"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{mode:"replace",loot_table:"kaleidoscope:doll/doll_29"},particle:"block{block_state:\"blue_wool\"}",sound:"minecraft:entity.illusioner.hurt"}}\
        },\
        right_click:{\
            fallback:{event:"custom",args:{func:"kaleidoscope_plus:doll/events/pat/illusioner"}}\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_29"

#【doll_30】掠夺者
data modify storage dc:index input.doll_30 set value {loot_table:"kaleidoscope:doll/doll_30",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.pillager.ambient"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"light_gray_wool\"}",sound:"minecraft:entity.pillager.hurt"}}\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.pillager.ambient"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            }\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_30"

#【doll_31】卫道士
data modify storage dc:index input.doll_31 set value {loot_table:"kaleidoscope:doll/doll_31",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.vindicator.ambient"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"light_gray_wool\"}",sound:"minecraft:entity.vindicator.hurt"}}\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.vindicator.ambient"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            }\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_31"

#【doll_32】女巫
data modify storage dc:index input.doll_32 set value {loot_table:"kaleidoscope:doll/doll_32",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.witch.ambient"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"white_terracotta\"}",sound:"minecraft:entity.witch.hurt"}}\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.witch.ambient"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            },\
            criteria:[\
                {event:"custom",args:{func:"kaleidoscope_plus:doll/events/potion"},item:{id:"minecraft:potion"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_32"

#【doll_33】僵尸村民
data modify storage dc:index input.doll_33 set value {loot_table:"kaleidoscope:doll/doll_33",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.zombie_vilager.step"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"green_wool\"}",sound:"minecraft:entity.zombie_vilager.hurt"}}\
        },\
        right_click:{\
            criteria:[\
                {event:"random",args:{events:[\
                    {event:"sound",args:{sound:"minecraft:entity.zombie.attack_wooden_door"},weight:4},\
                    {event:"sound",args:{sound:"minecraft:entity.zombie.break_wooden_door"},weight:1}\
                ]},item:{id:"#minecraft:wooden_doors"}},\
                {event:"sound",args:{sound:"minecraft:entity.zombie.attack_iron_door"},item:{id:"minecraft:iron_door"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_33"

#【doll_34】猪灵
data modify storage dc:index input.doll_34 set value {loot_table:"kaleidoscope:doll/doll_34",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.piglin.ambient"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"white_terracotta\"}",sound:"minecraft:entity.piglin.step"}}\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.piglin.ambient"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            },\
            criteria:[\
                {event:"group",args:{\
                    events:[\
                        {event:"random",args:{\
                            events:[\
                                {event:"sound",args:{sound:"minecraft:entity.piglin.jealous"}},\
                                {event:"sound",args:{sound:"minecraft:entity.piglin.admiring_item"}}\
                            ]\
                            }\
                        },\
                        {event:"custom",args:{func:"kaleidoscope_plus:doll/events/pat/piglin"}}\
                    ]\
                },item:{id:"gold_ingot"}},\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_34"

#【doll_35】猪灵蛮兵
data modify storage dc:index input.doll_35 set value {loot_table:"kaleidoscope:doll/doll_35",template:"doll",\
    events:{\
        construct:[\
            {event:"sound",args:{sound:"minecraft:entity.piglin_brute.ambient"}}\
        ],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{},particle:"block{block_state:\"white_terracotta\"}",sound:"minecraft:entity.piglin_brute.step"}}\
        },\
        right_click:{\
            fallback:{\
                event:"group",\
                args:{\
                    events:[\
                        {event:"sound",args:{sound:"minecraft:entity.piglin_brute.ambient"}},\
                        {event:"custom",args:{func:"kaleidoscope:doll/events/note"}}\
                    ]\
                }\
            }\
        }\
    }\
}
data modify storage dc:index keylist append value "doll_35"

