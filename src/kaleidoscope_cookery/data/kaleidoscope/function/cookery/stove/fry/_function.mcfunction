

## 开始按钮处理
scoreboard players set @s k_stove_start_excp 0

# 物品合法性检测
function kaleidoscope:cookery/stove/fry/legal


#按钮按下处理
execute if entity @a[scores={k_stove_start=1..},distance=..5] unless items block ~ ~ ~ container.20 *[custom_data~{kaleidoscope_stove_bg:1b}] if entity @s[tag=!k_stove_fry_start] unless data entity @s data.recipe run function kaleidoscope:cookery/stove/fry/start_button
execute if entity @a[scores={k_stove_start=1..},distance=..5] unless items block ~ ~ ~ container.20 *[custom_data~{kaleidoscope_stove_bg:1b}] if entity @s[tag=!k_stove_fry_start] if data entity @s data.recipe run function kaleidoscope:cookery/stove/fry/restart_button
execute if entity @a[scores={k_stove_start=1..},distance=..5] unless items block ~ ~ ~ container.20 *[custom_data~{kaleidoscope_stove_bg:1b}] if entity @s[tag=k_stove_fry_start] run function kaleidoscope:cookery/stove/fry/off_button

execute if entity @a[scores={k_stove_discard=1..},distance=..5] unless items block ~ ~ ~ container.21 *[custom_data~{kaleidoscope_stove_bg:1b}] run function kaleidoscope:cookery/stove/fry/discard_button

execute if entity @a[scores={k_stove_stir=1..},distance=..5] unless items block ~ ~ ~ container.5 *[custom_data~{kaleidoscope_stove_bg:1b}] run function kaleidoscope:cookery/stove/fry/stir

execute unless score @s k_stove_pot_vision matches 0..1 run scoreboard players set @s k_stove_pot_vision 1

execute if entity @a[scores={k_stove_pot_vision_trigger=1..},distance=..5] unless items block ~ ~ ~ container.7 *[custom_data~{kaleidoscope_stove_bg:1b}] run function kaleidoscope:cookery/stove/fry/pot

## 炒菜流程

#炒菜状态
execute unless data entity @s data.recipe run scoreboard players set @s k_stove_fry_status 0

#流程
execute if entity @s[tag=k_stove_fry_start] run function kaleidoscope:cookery/stove/fry/process/main
execute if entity @s[tag=!k_stove_fry_start] run function kaleidoscope:cookery/stove/fry/process/off

## 盛出处理

#按钮按下处理
execute if entity @a[scores={k_stove_out=1..},distance=..5] unless items block ~ ~ ~ container.15 *[custom_data~{kaleidoscope_stove_bg:1b}] run function kaleidoscope:cookery/stove/fry/out/main

#误放入处理
function kaleidoscope:cookery/stove/fry/check_init

#gui处理

function kaleidoscope:cookery/stove/fry/replace/5
function kaleidoscope:cookery/stove/fry/replace/26
function kaleidoscope:cookery/stove/fry/replace/24
function kaleidoscope:cookery/stove/fry/replace/6
function kaleidoscope:cookery/stove/fry/replace/15

function kaleidoscope:cookery/stove/fry/replace/20

function kaleidoscope:cookery/stove/fry/replace/21

function kaleidoscope:cookery/stove/fry/replace/7

#外观处理
execute if score @s k_stove_pot_vision matches 1 run data modify entity @s item.components."minecraft:custom_model_data".flags[0] set value true
execute if score @s k_stove_pot_vision matches 0 run data modify entity @s item.components."minecraft:custom_model_data".flags[0] set value false
execute if entity @s[tag=k_stove_fry_start] run data modify entity @s item.components."minecraft:custom_model_data".flags[1] set value true
execute unless entity @s[tag=k_stove_fry_start] run data modify entity @s item.components."minecraft:custom_model_data".flags[1] set value false
execute if data entity @s data.recipe run data modify entity @s item.components."minecraft:custom_model_data".flags[2] set value true
execute unless data entity @s data.recipe run data modify entity @s item.components."minecraft:custom_model_data".flags[2] set value false

execute if data entity @s data.pot_type store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run data get entity @s data.pot_type



#禁用
execute unless predicate kaleidoscope:cookery/stove_enable run function kaleidoscope:cookery/stove/enable/disable