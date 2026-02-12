import os
import json
import copy

def generate_mcfunction(id, name, x, loot=None):
    # 获取当前脚本所在的目录
    file_path = os.path.dirname(os.path.abspath(__file__)) + f"/{id}.mcfunction"
    
    with open(file_path, 'w', encoding='utf-8') as file:
        for i in range(x + 1):
            if i == 0:
                file.write(f"# 【{id}】{name}\n")
                id_with_i = id
            else:
                file.write(f"# 【{id}_{i}】\n")
                id_with_i = id + "_" + f"{i}"
            
            if loot == None:
                reclaim = {
                    "fallback": {
                        "event": "group",
                        "args": {
                            "events": [
                                {"event": "custom", "args": {"func": "kaleidoscope:cookery/events/reclaim_plate"}},
                                {"event": "destruct"}
                            ]
                        }
                    }
                }
            else:
                reclaim = {
                    "fallback": {
                        "event": "group",
                        "args": {
                            "events": [
                                {"event": "custom", "args": {"func": "kaleidoscope:cookery/events/reclaim_plate","loot":loot}},
                                {"event": "destruct"}
                            ]
                        }
                    }
                }

            if i == x:
                item_mode = "replace"
                item_id = "bowl"
                right_click_event = copy.deepcopy(reclaim) 
            elif i == 0:
                item_mode = ""
                item_id = ""
                right_click_event = {
                    "fallback": {
                        "event": "trans",
                        "args": {"index": f"{id}_1", "func": f"kaleidoscope_meals:effect/eat/{id}"}
                    }
                }
            else:
                item_mode = "replace"
                item_id = "bowl"
                right_click_event = {
                    "fallback": {
                        "event": "trans",
                        "args": {"index": f"{id}_{i+1}", "func": f"kaleidoscope_meals:effect/eat/{id}"}
                    }
                }

            reclaim["fallback"]["args"]["events"][1] = {"event":"destruct","args":{"particle":"self","sound":"minecraft:block.wood.break"}}
            reclaim["fallback"]["args"]["events"][0]["args"]["func"] = "kaleidoscope:cookery/events/summon_plate"
            
            file.write(f'data modify storage dc:index input.{id_with_i} set value {{ \\' + "\n")
            file.write('    modsize:[1f,1f,1f], \\' + "\n")
            file.write('    interactsize:{height:0.3f,width:1f}, \\' + "\n")
            file.write(f'    loot_table:"kaleidoscope_meals:{id}", \\' + "\n")
            file.write('    item:{ \\' + "\n")
            file.write('        components:{ \\' + "\n")
            file.write(f'            "minecraft:item_model":"kaleidoscope_cookery:meals/{id}", \\' + "\n")
            file.write(f'            "minecraft:custom_model_data":{{floats:[{i}]}} \\' + "\n")
            file.write('        }, \\' + "\n")
            file.write('    }, \\' + "\n")
            file.write('    template:"kaleidoscope", \\' + "\n")
            file.write('    events:{ \\' + "\n")
            file.write('        "construct":[ \\' + "\n")
            file.write('            {event:"sound",args:{sound:"minecraft:block.wood.place"}}, \\' + "\n")
            file.write('        ], \\' + "\n")
            file.write('        left_click:{ \\' + "\n")
            if item_mode:
                file.write(json.dumps(reclaim, ensure_ascii=False, indent=4)[1:-1].replace('\n', '\\\n            ') + "")
            else:
                file.write(f'            fallback:{{event:"destruct",args:{{item:{{}},particle:"block{{block_state:\\"oak_planks\\"}}",sound:"minecraft:block.wood.break"}}}} \\' + "\n")
            file.write('        }, \\' + "\n")
            file.write('        right_click:{ ' + "")
            file.write(json.dumps(right_click_event, ensure_ascii=False, indent=4)[1:-1].replace('\n', '\\\n            ') + "")
            file.write('} \\' + "\n")
            file.write('    } \\' + "\n")
            file.write('} ' + "\n")
            file.write(f'data modify storage dc:index keylist append value "{id_with_i}" ' + "\n\n")

if __name__ == "__main__":
    id = "brown_mushroom_pot_soup"  
    name = "棕蘑菇瓦罐汤"  
    x = 2  
    loot = None

    generate_mcfunction(id, name, x, loot)



#kaleidoscope_meals:reclaim/