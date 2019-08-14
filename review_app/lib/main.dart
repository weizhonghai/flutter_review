import 'package:flutter/material.dart';
import 'model/post.dart';
import 'demo/listview_demo.dart';
import 'demo/hello.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.yellow),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // 设置导航标题
        title: Text("NINGHAO"),
        // 控制阴影大小，默认为 4.0
        elevation: 0,
      ),
      body: ListViewDemo(),
    );
  }
}




