import 'package:flutter/material.dart';

//导入包
//应用入口
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 应用名称
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // 设置主题
        primarySwatch: Colors.blue,
      ),
      // 应用首页路由
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// 首页
// statefulWidget 有状态的组件
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// 首页具体实现
class _MyHomePageState extends State<MyHomePage> {
  // 计数器
  int _counter = 0;

  void _incrementCounter() {
    // 自增函数
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    // 系统提供的页面脚手架
    return Scaffold(
      //导航栏
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      // 页面内容
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        // 竖排列
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          // 子组件
          children: <Widget>[
            Text(
              'You have pushed the button this many times:hot reload',
            ),
            // 绑定内容为技术
            Text('$_counter', style: Theme.of(context).textTheme.headline4),
            FlatButton(
              onPressed: () {
                // Navigator 创建栈进行路由管理，类似ios的navigaitoncontroller
                // MaterialPageRoute 模态路由，会根据系统自动设置转场动画
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NewRoute();
                }));
              },
              child: Text("打开新路由"),
              textColor: Colors.blue,
            )
          ],
        ),
      ),
      // 创建按钮
      floatingActionButton: FloatingActionButton(
        // 绑定点击事件
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        // 子组件
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// 创建一个新路由
class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("新路由")),
      body: Center(child: Text("新路由界面")),
    );
  }
}
