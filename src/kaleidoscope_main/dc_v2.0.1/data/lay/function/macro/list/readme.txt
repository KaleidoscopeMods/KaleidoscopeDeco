列表遍历
传入参数：
(string)func:需调用目标函数路径，仅含需遍历参数；
(string)list:列表路径，参考从(block|entity|storage)nbt路径

执行宏函数：function lay:macro/list/init (参数直接传入)

输出：待遍历的列表元素使用$(value)调用。

!!!注意你遍历的元素类型，本模块不提供检查。