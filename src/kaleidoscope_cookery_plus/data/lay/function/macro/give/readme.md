使用方法：
使用函数function lay:macro/give/init初始化，

### give模块暂时弃用
~~give：动态给予玩家物品
把物品数据按照物品通用数据格式merge到 lay Item这个路径，然后执行函数function lay:macro/give/give
或者自定义路径，直接调用宏函数function lay:macro/give/give_;
接受参数entity，为一目标选择器，若缺省该参数则默认为@s~~

replace：替换指定槽位物品
首先初始化；
可指定替换方块或实体槽位，方块需在lay Item路径中增加pos参数，格式同坐标，以及slot参数，格式同item replace；实体需增加entity参数，为目标选择器，以及slot参数。
若均指定，只执行方块。