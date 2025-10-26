import os
import json

def create_json_files(m, n, path):
    # 遍历从m到n的整数
    for i in range(m, n + 1):
        # 定义文件名
        filename = os.path.join(path, f"doll_{i}.json")
        
        # 准备JSON内容
        data = {
            "model": {
                "type": "model",
                "model": f"kaleidoscope:block/doll/doll_{i}"
            }
        }
        
        # 写入JSON文件
        with open(filename, 'w', encoding='utf-8') as file:
            json.dump(data, file, ensure_ascii=False, indent=4)
        print(f"Created JSON file: {filename}")

if __name__ == "__main__":
    m=2
    n=66
    path="./assets/kaleidoscope/items/doll/"
    
    # 检查目录是否存在
    if not os.path.exists(path):
        print("The specified directory does not exist. Please create it or specify another one.")
    else:
        # 创建JSON文件
        create_json_files(m, n, path)