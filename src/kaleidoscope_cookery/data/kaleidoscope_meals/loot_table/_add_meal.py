#!/usr/bin/env python3
"""
脚本功能：根据内置的ID和名称列表，在脚本所在目录下生成对应的JSON配置文件
用途：适用于Minecraft数据包中的物品配置生成
"""

import json
import os

# 在此处直接指定参数列表
ITEMS = [
    ("apple_platter", "苹果拼盘"),
    ("berry_platter", "浆果拼盘"),
    ("melon_platter", "西瓜拼盘"),
    ("chrous_platter", "紫颂果拼盘"),
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

