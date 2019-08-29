import 'package:flutter/material.dart';
import 'demo/drawer_demo.dart';
import 'demo/listview_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/basic_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/view_demo.dart';
import 'demo/sliver_demo.dart';
import 'demo/navigator_demo.dart';
import 'demo/form_demo.dart';

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

      // home: Home(),
      initialRoute: "/form",
      routes: {
        "/":(context)=>NavigatorDemo(),
        "/about":(context)=>Page(title: "About",),
        "/form":(context) => FormDemo(),
      },
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
      Tab(
        icon: Icon(Icons.view_quilt),
      )
    ];
    TabBar tabBar = TabBar(
      tabs: tabs,
      unselectedLabelColor: Colors.black12,
      indicatorColor: Colors.black54,
      indicatorSize: TabBarIndicatorSize.label,
    );
    List<Widget> tabBarViews = [
      ListViewDemo(),
      BasicDemo(),
      LayoutDemo(),
      SliverDemo(),
    ];
    TabBarView tabBarView = TabBarView(children: tabBarViews);
    return DefaultTabController(
      length: 4,
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
