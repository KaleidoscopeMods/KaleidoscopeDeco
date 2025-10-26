import os
import json

def create_files(var_list):
    for var in var_list:
        var_low = var.lower()
        # 定义文件名
        filename1 = os.path.join(path, f"loot_table/doll/s/{var_low}.json")
        filename2 = os.path.join(path, f"recipe/dolls/{var_low}.json")
          
        # 准备JSON内容
        data1 = {
        "pools": [
        {
            "rolls": 1,
            "entries": [
                {
                    "type": "item",
                    "name": "fox_spawn_egg",
                    "functions": [
                        {
                            "function": "set_components",
                            "components": {
                                "minecraft:item_model": f"kaleidoscope:doll/s/{var_low}",
                                "minecraft:item_name": "玩偶",
                                "lore":[
                                    f"§7赞助者：{var}"
                                ],
                                "minecraft:entity_data": {
                                    "id": "minecraft:marker",
                                    "Tags": [
                                        "dc_place"
                                    ],
                                    "data": {
                                        "index": f"doll_s_{var_low}"
                                    }
                                },
                                "equippable": {
                                    "slot": "head",
                                    "equip_sound": {
                                        "sound_id": "kaleidoscope:toy"
                                    }
                                }
                            }
                        }
                    ]
                }
            ]
        }
    ]
}
        data2 = {
    "type": "stonecutting",
    "ingredient": "#wool",
    "result": {
        "id": "fox_spawn_egg",
        "count": 1,
        "components": {
            "minecraft:item_model": f"kaleidoscope:doll/s/{var_low}",
            "minecraft:item_name": "玩偶",
            "lore":[
                f"§7赞助者：{var}"
            ],
            "minecraft:entity_data": {
                "id": "minecraft:marker",
                "Tags": [
                    "dc_place"
                ],
                "data": {
                    "index": f"doll_s_{var_low}"
                }
            },
            "equippable": {
                "slot": "head",
                "equip_sound": {
                    "sound_id": "kaleidoscope:toy"
                }
            }
        }
    }
}
        
        # 写入JSON文件
        with open(filename1, 'w', encoding='utf-8') as file:
            json.dump(data1, file, ensure_ascii=False, indent=4)
        print(f"Created JSON file: {filename1}")
        # 写入JSON文件
        with open(filename2, 'w', encoding='utf-8') as file:
            json.dump(data2, file, ensure_ascii=False, indent=4)
        print(f"Created JSON file: {filename2}")

        #注册索引
        file_path = "data/kaleidoscope/function/doll/index/sponsors.mcfunction"
        text_to_append = f"""
#【{var}】
data modify storage dc:index input.doll_s_{var_low} set value {{loot_table:"kaleidoscope:doll/s/{var_low}",template:"doll"}}
data modify storage dc:index keylist append value "doll_s_{var_low}"
"""
    
        # 打开文件并追加内容
        try:
            with open(file_path, 'a', encoding='utf-8') as file:
                file.write(text_to_append)
            print(f"成功追加内容到文件：{file_path}")
        except Exception as e:
            print(f"写入文件时出错：{e}")

if __name__ == "__main__":
    path="./data/kaleidoscope/"
    var_list = ['Stormsulfur', 'LFly_A', 'LFly_B']
    # 检查目录是否存在
    if not os.path.exists(path):
        print("The specified directory does not exist. Please create it or specify another one.")
    else:
        # 创建JSON文件
        create_files(var_list)