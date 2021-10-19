import 'package:flutter/material.dart';

//4.4 弹性布局（Flex）
/**
 * 弹性布局允许子组件按照一定比例来分配父容器空间。弹性布局的概念在其它UI系统中也都存在，
 * 如 H5 中的弹性盒子布局，Android中 的FlexboxLayout等。Flutter 中的弹性布局主要通过Flex和Expanded来配合实现。
 * */

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    /**
     * Expanded
     * Expanded 只能作为 Flex 的孩子（否则会报错），它可以按比例“扩伸”Flex子组件所占用的空间。
     * 因为 Row和Column 继都承自Flex，所以 Expanded 也可以作为它们的孩子。
     * */
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          // Flex的两个子widget按1：2来占据水平空间
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                    height: 30.0,
                      color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 2,
                    child: Container(
                      height: 30.0,
                      color: Colors.green,
                    ),
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(top: 20.0),
              child: SizedBox(
                height: 100.0,
              //  Flex的三个子widget，在垂直方向按2：1：1来占用100像素的空间
                child: Flex(
                    direction: Axis.vertical,
                    children: [
                      Expanded(
                        flex: 2,
                        //flex参数为弹性系数,如果为0或null,则child是没有弹性的，即不会被扩伸占用的空间
                        //如果大于0，所有的Expanded按照其 flex 的比例来分割主轴的全部空闲空间

                          child: Container(
                            height: 30.0,
                            color: Colors.red,
                       ),
                      ),
                      Spacer( //pacer的功能是占用指定比例的空间，实际上它只是Expanded的一个包装类
                        flex: 1,
                      ),
                      Expanded(
                        flex: 1,
                          child: Container(
                            height: 30.0,
                            color: Colors.green,
                          ),
                      ),

                    /**
                     * 小结
                     * 弹性布局比较简单,唯一需要注意的就是Row、Column以及Flex的关系。
                     * */

                    ],
                ),
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
