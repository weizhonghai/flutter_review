import 'package:flutter/material.dart';
import 'demo/drawer_demo.dart';
import 'demo/listview_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.yellow,
          highlightColor: Color.fromRGBO(
            255,
            255,
            255,
            0.5,
          ),
          splashColor: Colors.white70),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> tabs = [
      Tab(
        icon: Icon(Icons.local_florist),
      ),
      Tab(
        icon: Icon(Icons.change_history),
      ),
      Tab(
        icon: Icon(Icons.directions_bike),
      ),
    ];
    TabBar tabBar = TabBar(
      tabs: tabs,
      unselectedLabelColor: Colors.black12,
      indicatorColor: Colors.black54,
      indicatorSize: TabBarIndicatorSize.label,
    );
    List<Widget> tabBarViews = [
      ListViewDemo(),
      Icon(
        Icons.change_history,
        size: 128,
        color: Colors.black12,
      ),
      Icon(
        Icons.directions_bike,
        size: 128,
        color: Colors.black12,
      ),
    ];
    TabBarView tabBarView = TabBarView(children: tabBarViews);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: DrawerDemo(),
        appBar: AppBar(
          // 设置导航标题
          title: Text("NINGHAO"),
          // bottom: tabBar,
          // 控制阴影大小，默认为 4.0
          elevation: 0,
          bottom: tabBar,
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: "Navigration",
            onPressed: () => debugPrint("Navigration button is pressed"),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: "Search",
              onPressed: () => debugPrint("Search button is pressed"),
            )
          ],
        ),
        body: tabBarView,
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
