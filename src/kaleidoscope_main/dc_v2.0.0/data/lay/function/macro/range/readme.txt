格式：传入参数：max,min,step,func,path

min,max,step：整型，代表最大值（不含），最小值和步长。其中max>=min,step>1;
func:目标函数路径，为目标宏函数；
path：一个storage路径（包含命名空间），为func中宏函数调用的参数列表，若仅有需遍历的变量则填写lay range;