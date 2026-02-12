#!/usr/bin/env python3
"""
脚本功能：根据内置的ID和名称列表，在脚本所在目录下生成对应的JSON配置文件
用途：适用于Minecraft数据包中的物品配置生成
"""

import json
import os

# 在此处直接指定参数列表
ITEMS = [
    ("oil_splashed_fish", "油泼鱼"),
    ("cold_roasted_meat", "冷肉炙"),
    ("braised_pork_ribs", "红烧排骨"),
    ("candied_potato", "拔丝土豆"),
    ("dough_drop_soup", "疙瘩汤"),
    ("numbing_spicy_chicken", "椒麻鸡"),
    ("spicy_rabbit_head", "麻辣兔头"),
    ("spicy_blood_stew", "毛血旺"),
    ("four_joy_meatball_soup", "四喜丸子汤"),
    ("fried_spring_roll", "炸春卷"),
    ("crimson_fungus_pot_soup", "绯红菌瓦罐汤"),
    ("warped_fungus_pot_soup", "诡异菌瓦罐汤"),
    ("red_mushroom_pot_soup", "红蘑菇瓦罐汤"),
    ("brown_mushroom_pot_soup", "棕蘑菇瓦罐汤")
]

def generate_json_file(item_id, name):
    """生成单个JSON文件"""
    data = {
        "pools": [
            {
                "rolls": 1,
                "entries": [
                    {
                        "type": "item",
                        "name": "item_frame",
                        "functions": [
                            {
                                "function": "set_components",
                                "components": {
                                    "minecraft:item_model": f"kaleidoscope_cookery:meals/{item_id}",
                                    "minecraft:item_name": name,
                                    "lore": [
                                        {"text": "放置食用", "color": "dark_green", "italic": False}
                                    ],
                                    "entity_data": {
                                        "id": "item_frame",
                                        "Tags": ["k_cookery_meal"],
                                        "data": {
                                            "index": item_id
                                        },
                                        "Invisible": True,
                                        "Silent": True
                                    },
                                    "max_stack_size": 1,
                                    "custom_data": f'{{k_meal:"{item_id}"}}'
                                }
                            }
                        ]
                    }
                ]
            }
        ]
    }
    
    # 将数据写入JSON文件
    filename = f"{item_id}.json"
    filepath = os.path.join(os.path.dirname(__file__), filename)
    
    with open(filepath, 'w', encoding='utf-8') as file:
        json.dump(data, file, ensure_ascii=False, indent=4)
    
    print(f"已生成文件: {filename}")

def main():
    # 生成JSON文件
    for item_id, name in ITEMS:
        generate_json_file(item_id, name)

if __name__ == "__main__":
    main()

