import os

def generate_mcfunction_files(ids, base_path):
    function_dir = os.path.join(base_path)
    
    # 确保目录存在
    os.makedirs(function_dir, exist_ok=True)
    
    for id in ids:
        file_path = os.path.join(function_dir, f"{id}.mcfunction")
        content = """playsound entity.generic.eat player @a
execute as @a[tag=dc_click_temp] run effect give @s saturation 1 2 true"""
        
        with open(file_path, 'w', encoding='utf-8') as file:
            file.write(content)

if __name__ == "__main__":
    base_path = "data/kaleidoscope_meals/function/effect/eat"  # 替换为你的基础路径
    ids = ["chorus_eggs","dongpo_pork","fondant_eyes","frogspawn_jelly","golden_salad","knight_steak","mutton_amethyst","mutton_flame","mutton_ice","sashimi_desert","sashimi_end","sashimi_nether","sashimi_snow","sashimi_tundra","yakitori"]  # 替换为你自己的字符串列表
    
    generate_mcfunction_files(ids, base_path)



