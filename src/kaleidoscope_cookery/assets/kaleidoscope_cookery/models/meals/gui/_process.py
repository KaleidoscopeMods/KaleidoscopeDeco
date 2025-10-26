#自动处理导入的菜品模型的显示
import os
import json

def process_json_file(file_path):
    with open(file_path, 'r', encoding='utf-8') as file:
        data = json.load(file)
    
    if "display" in data:
        print(f"Processing file: {file_path}")
        del data["display"]
        data["parent"] = "kaleidoscope_cookery:meals/gui/root"
    
    with open(file_path, 'w', encoding='utf-8') as file:
        json.dump(data, file, indent=4)

def scan_and_process_directory(directory_path):
    for root, _, files in os.walk(directory_path):
        for file in files:
            if file.endswith('.json') and file != 'root.json':
                file_path = os.path.join(root, file)
                process_json_file(file_path)

if __name__ == "__main__":
    # 获取当前脚本所在的目录
    script_dir = os.path.dirname(os.path.abspath(__file__))
    scan_and_process_directory(script_dir)



