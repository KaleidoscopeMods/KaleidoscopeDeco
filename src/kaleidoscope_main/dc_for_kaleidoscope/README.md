# 简单交互性装饰模型前置(dc)

## 简介
dc是一个轻量级的装饰模型支持库，能够方便的添加简单的可交互模型，并且支持简单的事件（移动，旋转，坐）和自定义触发方式。拥有较好的常态性能。

## 接口
### 索引（Index）
dc采用索引的方式读取模型数据，在添加模型之前，需要注册对应的索引。
#### 索引注册
索引的注册为创建一个函数，按照如下结构写入数据：


```mcfunction
data modify storage dc:index input.<name> set value <data>
data modify storage dc:index keylist append value "<name>"
```
其中<name>为需要注册的索引名称，<data>为索引数据，为一复合标签，格式如下：
> 注：键前方的括号为键值类型，在compound后面带有冒号的为结构模板，只在第一次出现时解析其结构，后面则省略；
```snbt
(compound) :{  //索引数据
    (string) type:<"regular"|"hitbox"|"fixed"|"light"> //(默认为regular)模型类型。hitbox类型拥有碰撞箱，需要额外设置碰撞箱参数，fixed类型拥有1格完整碰撞箱，不可移动和缩放，交互框大小固定为1*1。"light"类型可以提供光照，其他与"fixed"类型相似，不可移动和缩放，交互框大小固定为1*1。只有类型相同的模型才可互相转换。
    (compound) extra_data:{ //（可选）在"type"非"regular"时，需要提供的额外数据。
        当"type"为"hitbox"时：
        (float)width:1f, //碰撞箱宽度
        (float)offset:0f //碰撞箱的偏移量，可为负值。
        当"type"为"fixed"时，没有额外参数。
        当"type"为"light"时：
        (byte) level:15b //（值域0-15，默认值15）光源亮度；
        (boolean) hitbox:0b //（默认0）是否有碰撞箱，设置为1时拥有一个碰撞箱。
    }
    (string) template:"basic",//(可选)模板名称，关于模板的详细信息见下；
    (compound:item) item:{ //显示的模型对应的物品数据，格式与一般物品格式相同，无slot标签。
        (string) id:"minecraft:stone", //物品的id
        (int) count:1 ,//物品的数量
        (compound) components:{//物品组件格式
            ...
            (int) custom_model_data:1, //物品模型覆盖数据，指向资源包中指定的自定义模型数据
            ...
        }
    },
    (string)loot_table:"", //战利品表，可以替换上述的item字段，从战利品表中导入物品数据。会与item中数据合并，如有同名标签，item覆盖loot_table中标签。
    (float array[3]) modsize: [1f,1f,1f], //物品展示实体的长宽高,等效于展示实体中的scale属性
    (compound) interactsize:{ //交互实体体积
        (float) height:1f,
        (float) width:1f 
    },
    (compound)prop:{ //模型属性
        (boolean)height_adaption:0b //设为1时，垂直旋转时碰撞箱高度随之调整
        (enum string) attach:"false" //("false" | "square" | "cubic", 默认为"false") 仅对物品展示框原型的模型生效。放置时是否根据展示框的朝向决定旋转，false为否，square时在展示框朝向侧面时自动吸附；cubic在展示框朝向上下两侧时也自动吸附。
        (enum string) orient: "4" //("fixed"|"0"|"4"|"8"|"16" )模型放置时自动面向玩家旋转的精度，默认为4，为0时固定朝向默认方向，为4时像方块一样有4个方向可旋转，为8时可以45度倾斜放置，以此类推。
    }
    (compound) events:{ //事件
        (compound list:event) construct:[ //放置时默认执行的事件，如播放声音等
            {
                ...
            }
        ],
        (compound list:event) update:[ //在模型更新时执行的事件，旋转、缩放、转换等事件会触发更新行为
            {
                ...
            }
        ],
        (compound list:event) destruct:[ //在模型销毁前执行的事件，等效于在destruct事件前加入其它事件，作为语法糖存在
            {
                ...
            }
        ],
        (compound:click_events) left_click:{ //左键点击事件
            (compound:event(without item))fallback:{ //在没有条件与玩家手持物品相符合时，应用的事件(此处不存在item键)
                (string) event:"destruct", //事件名，详细信息见下
            }
            (compound list:event) criteria:[//条件事件，当玩家手持相应物品点击模型时，触发的事件
                {//一个事件
                    (string) event:"move", //事件名
                    (compound:item) item:{ //触发该事件要求玩家主手持有的物品，id可为物品标签
                        ...
                    },
                    (string)preidcate:"dc:test", //谓词条件，触发该事件需要点击的玩家满足谓词要求的条件，可内联定义
                    (compound) args:{type:"R",distance:-0.2f} //参数，具体格式随事件而决定（部分事件若不带参数，则此项不存在）
                },
                ...
            ]
        }
        (compound:click_events) right_click:{ //右键点击事件
            ...
        }
    
    }
}

```
此后，在自己的数据包下建立一个名为dc的命名空间，并创建一个名为index的函数标签(dc/tags/functions/index.json)，将索引注册函数加入即可。
#### 索引加载
在注册完索引后，该索引还未构建完成，还不可使用。此时需要加载索引。
执行```/reload```指令，然后执行```/function dc:api/install```指令加载索引。
动态构建可能需要花费一定时间，请耐心等待。

#### 索引使用
加载完成后即可使用该索引生成模型。
可以以任何方式生成一个带有指定数据的标记(marker)或物品展示框(item_frame)**(仅支持1.21.5+)**(即带有dc_place标签，data中指定索引)，即可生成指定的自定义模型。

```mcfunction
/give @s minecraft:cow_spawn_egg[entity_data={id:"minecraft:marker",Tags:["dc_place"],data:{index:"#YOURINDEX#"}}]
```

```mcfunction
/give @s minecraft:item_frame[entity_data={id:"minecraft:item_frame",Tags:["dc_place"],data:{index:"#YOURINDEX#"}}]
```

#### 模型类型
在dc2.0.0以后，引入了三种新的模型类型，其中`Fixed`和`Light`类型为固定模型，推荐通过物品展示框生成。


#### 索引数据继承
在标记实体中可以使用一个inheritance字段，语法和索引注册数据相同，在模型生成的时候会被合并进数据中。可用于特定物品单独设置一些数据。

此处以刷怪蛋为例：

```mcfunction
/give @s minecraft:cow_spawn_egg[entity_data={id:"minecraft:marker",Tags:["dc_place"],data:{index:"#YOURINDEX#",inheritance:{item:{id:"apple"}}}}]
```

### 事件(Event)
目前支持基础事件：旋转，平移，坐，破坏等。
大部分的参数均可缺省，此时应用默认值
若参数属性为optional，则为可选，缺省时应用空值。

#### 破坏（destruct）
销毁模型。

参数：

- (optional)(string) particle：(particle | "self")破坏模型时产生的粒子.
  - 特别地，若为"self",则在破坏时使用展示实体的物品数据生成破坏粒子。
- (optional)(string) sound：破坏模型时播放的音效。
- (optional)(any / compound)item:控制非创造模式下破坏模型产生的掉落物：
  - 若不含该参数，则不产生掉落物；
  - 若传入空值或任意字符串，则产生默认掉落物（索引中item指定的物品，此外包含生成该模型的索引值）
  - 若传入一个复合标签(compound)，则按照其中规则修改掉落物：
    - (string)mode:("add"|"replace"|"inherit") 决定物品数据和合并模式（默认为"add"）：
      - add：将下面参数（item或loot_table）中指定的物品数据和**索引中**的物品数据合并
      - replace：直接使用参数中指定的物品数据，舍弃索引中的物品数据；
        - 注意重新放置时依然从索引中获取物品数据
      - inherit: 舍弃索引中的物品数据,从模型的物品展示实体中动态获取物品数据，然后和参数中指定的物品数据合并。
        - 重新放置时能够继承原先物品展示实体的数据
    - (compound : item)item:指定掉落物的物品数据
    - (string)loot_table:使用战利品表指定掉落物数据，会与item中数据合并，如有同名标签，item覆盖loot_table中标签；
    - (string)func:使用函数修改掉落物数据。以掉落物为执行者执行。


#### 平移（move）
移动模型。

参数：

(string) type: 平移事件类型。接受以下五个值：

"X" | "Y" | "Z" :绝对路径移动，在指定的轴上平移。
"R" : 相对玩家与模型的位置水平移动模型。
"V" : 相对玩家与模型的位置垂直移动模型。
默认值为R。

(float)(range:-2f~2f) distance:平移的距离。值需要在-2到2之间，超出则会被强制设为最近的边界值。
默认值为0f。

若type为"X","Y","Z",则正值向对应轴的正方向移动，负值向对应负方向移动；
若type为"R","V",则正值向远离玩家的方向移动，负值向靠近玩家的方向移动。

#### 旋转(rotate)
旋转模型。

参数：

(string) type：旋转事件类型。接受以下两个值：
"H":水平旋转；"V":垂直旋转。
默认值为H。

(float)(range:-180f~180f) angle:旋转的角度。值需要在-180到180之间，超出则被强制设为最近的边界值。
默认值为0。

#### 坐(sit)
可以坐上模型。

参数：

- (optional)(empty compound)orient:总是为空标签，当存在时，玩家坐上的瞬间朝向会被校正为模型朝向。
- (optional)(compound)offset:当存在时，相对标记位置以局部坐标对玩家坐的位置进行偏移，不存在时则直接坐在展示实体上（模型的一半位置）。
  - (float)x：左侧偏移，值域-3到3，下同；
  - (float)y：上侧偏移；
  - (float)z：前侧偏移。

#### 声音(sound)
发出声音。

参数：
(string) sound：播放的音效。

#### 转换（trans）
将一个模型转换为另一个已注册的模型，将会使用对应模型的所有数据覆盖原有数据。
参数：
(string)index:要转换的模型的索引，若该参数不存在，则事件注册将失败；若该参数指向为注册的索引名，则不会做出任何修改。
(optional)(string)func:转换后以标记实体为执行者执行的函数。可选。

> 在这个事件的函数中，标记实体可以使用@s选中；绑定的展示实体和交互实体分别具有`dc_trans_display`和`dc_trans_interaction`标签。

#### 缩放(scale)
可以放大和缩小模型。

参数：
(float) scale:模型大小的变化值，正值为放大，负值为缩小
限制：scale本身没有范围限制，但放大缩小后模型有如下限制：
    - 模型放大倍数在0.1到10之间
    - 交互实体宽高任一不能小于0.1
    - 展示实体高不能大于10

备注：
该事件会调用更新模块自动更新模型

#### 预制事件(pre)

预制事件是一类特殊事件，为带有固定的参数的特定普通事件。因此不需要额外指定arg（指定了也没有效果）。用于简化操作。

在使用中，在events里填写"pre/<预制事件名>"即可。

目前已有的预制事件：
- move_r_1px：水平移动1像素（推）
- move_r_-1px：水平移动-1像素（拉）
- move_y_1px：竖直移动1像素（上）
- move_y_-1px：竖直移动-1像素（下）
- rotate_h_225：水平旋转22.5度（顺时针）
- rotate_h_-225：水平旋转-22.5度（逆时针）
- rotate_v_225：垂直旋转22.5度（顺时针）
- rotate_v_-225：垂直旋转-22.5度（逆时针）
- scale_02：缩放0.2倍（大）
- scale_-02：缩放-0.2倍（小）

#### 调试事件：更新(update)
1.更新模型的数据结构到dc的版本，2.并且和当前的索引信息同步

参数：无

备注：
- 更新完成后会向互动玩家输出一条更新完成的信息，将$silent_update 的dc_options计分项设为1可以不输出该信息
- 使用调试棒左键模型可以触发更新事件

#### 调试事件：信息(info)
向玩家聊天栏输出模型的属性信息，包括该模型的uid，索引，缩放倍数，版本，上次更新时间，当前时间等。

参数：无

备注：
- 使用调试棒右键模型可以触发信息事件

#### 流程控制事件：组(group)
按照顺序依次执行一系列事件。

参数：
(list)events，为一个列表，里面的每一项均为一个事件，不含item字段。

备注：
对列表内的事件暂无检查

#### 流程控制事件：随机(random)
在一系列事件中按照权重挑选一个事件执行。

参数：
(list)events，列表，每一项为一个事件，不含item字段，可以包含一个weight字段，为整数，表示其在列表中的权重。

备注：
对列表内的事件暂无检查

#### 特殊事件：广播(broadcast)
仅限`fixed`和`light`类型的模型使用；

参数：无

对上下前后左右6个方块的`fixed`和`light`类型的模型广播更新事件，指定位置的模型会进行一次更新操作（执行一次`update`事件）；  
用于方块型模型的连接，作者可以使用该事件修改应用的模型，以连接相邻的方块。

#### 保留字：`__nothing__`
什么都不做。可在创建空事件时使用。

#### 自定义事件(custom)
此事件支持引用外部函数作为事件执行。

参数：
(string) func:自定义事件函数路径。事件定义规范见下。
(*args) [args]: 可选，其他需要传入的参数，随事件类型而定。

> 自定义事件规范：
> 自定义事件的路径为一个文件夹，其下包含一个execute.mcfunction文件用于执行，一个可选的check.mcfunction文件用于参数检查，以及其他可选的辅助函数。
> 在索引构建时，会调用check函数检查参数的合法性；在交互条件触发时，会执行execute函数执行事件。

> 一些你需要知道的接口信息：
> 1. 执行函数可以为宏函数，参数会以函数宏的形式传入，可以直接调用；
> 如果不想使用宏方法调用，可以访问```storage dc events.temp.target.args```路径。
> 2. 检查函数执行时，参数会储存在```storage dc:temp event.args```路径下，可以检查并修改该路径中的参数信息，完成后，修改过的信息会合并至索引数据下。检测到参数未正确设置等问题时，可以将#check的dc_temp计分项设为1，此时该事件将不会被加入索引的事件列表中。
> 3. 本包的每个模型由三个实体组成，一个带有```dc_pivot```标签的标记实体，一个带有```dc_display```标签的展示实体，一个带有```dc_interaction```标签的交互实体；
>   函数以标记实体为执行者，以其位置为执行位置。此外，展示实体的y坐标比标记实体的高0.5个方块，在移动模型时需要注意。
>   可以用```dc_custom_pivot```，```dc_custom_display```，```dc_custom_interaction```来分别选中交互的模型的标记，展示实体，交互实体。
> 4. 执行（任意）事件时，触发点击事件的玩家拥有```dc_click_temp```标签，可以用此标签找到对应的玩家。


### 模板(Template)
为辅助构建模型数据的开发工具，为部分的索引数据，在索引构建时会合并到索引数据中。
可以将索引中重复的部分注册为模板，减少重复代码的使用。
#### 模板注册
新建一个函数，按照如下格式写入模板数据：

```mcfunction
data modify storage dc:template <name> set value <data>
```
name为模板名，data为模板数据，为索引的一部分（不完整）数据，格式参照索引数据格式,不包含template选项(即不支持嵌套模板调用)，且所有键均为可选。

完成模板注册后，在dc命名空间下建立一个一个名为template的函数标签(dc/tags/functions/template.json)，把模板函数加入。
最后执行```/reload```指令。
#### 模板使用
在注册索引时，把注册好的模板的名字写在索引的template选项下即可。
#### 已有模板
dc内置了两个简单的模板，可以在注册索引时调用。
basic:

```snbt
{   
    modsize:[1f,1f,1f],
    interactsize:{height:1f,width:1f},
    events:{
        left_click:{
            fallback:{event:"destruct"},
            criteria:[]
        },
        right_click:{
            fallback:{event:"__nothing__"},
            criteria:[]
        }
    }
}
```
基础模型模板，左键破坏模型。

default:
```snbt
{
    modsize:[1f,1f,1f],
    interactsize:{height:1f,width:1f},
    events:{
        left_click:{
            criteria:[
                {
                    event:"move",
                    item:{id:"minecraft:stick"},
                    args:{distance:-0.2f}
                },
                {
                    event:"rotate",
                    item:{id:"minecraft:shears"},
                    args:{angle:-45.0f}
                },
                {
                    event:"rotate",
                    item:{id:"minecraft:blaze_rod"},
                    args:{type:"V",angle:-22.5f}
                }
            ],
            fallback:{event:"destruct"},
        },
        right_click:{
            criteria:[
                {
                    event:"move",
                    item:{id:"minecraft:stick"},
                    args:{type:"R",distance:0.2f}
                },
                {
                    event:"rotate",
                    item:{id:"minecraft:shears"},
                    args:{angle:45.0f}
                },
                {   
                    event:"rotate",
                    item:{id:"minecraft:blaze_rod"},
                    args:{type:"V",angle:22.5f}
                }
            ],
            fallback:{event:"__nothing__"}
        }
    }
}
```
默认模型模板，在基础模板基础上，增加了手持木棍移动模型，手持剪刀水平旋转模型，手持烈焰棒垂直旋转模型的事件。其中左右键点击能够施加相反的效果。

### 设置
在dc_options计分板内有一些设置选项。

已有设置：
$auto_install：设为1，在reload时自动加载模型索引数据;<br>
$silent_update：设为1，在更新模型时不再向玩家输出信息;
$silent_register：设为1，在注册新模型时不再向玩家输出信息;

可视化设置界面：输入```/function dc:menu/main```,呼出设置页面，可以可视化调整上述选项。



args:{particle:"item{item:{id:\"spruce_planks\"},sound:"minecraft:ambient.basalt_deltas.additions"}}