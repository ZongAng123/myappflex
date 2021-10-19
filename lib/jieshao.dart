// 4.4 弹性布局（Flex）
/**
 * 弹性布局允许子组件按照一定比例来分配父容器空间。弹性布局的概念在其它UI系统中也都存在，
 * 如H5中的弹性盒子布局，Android中 的FlexboxLayout等。Flutter 中的弹性布局主要通过Flex和Expanded来配合实现。
 * */

//Flex
/**
 * Flex
 * Flex组件可以沿着水平或垂直方向排列子组件,Row和Column都继承自Flex,参数基本相同。
 * 所以能使用Flex的地方基本上都可以使用Row或Column。
 * Flex本身功能是很强大的，它也可以和Expanded组件配合实现弹性布局。
 *
 * */


/**
 * Flex({
    ...
    required this.direction, //弹性布局的方向, Row默认为水平方向，Column默认为垂直方向
    List<Widget> children = const <Widget>[],
    })

 *
 * Flex继承自MultiChildRenderObjectWidget，对应的RenderObject为RenderFlex，RenderFlex中实现了其布局算法。
 *
 * */