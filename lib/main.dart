import 'package:flutter/material.dart';
import './demo/1drawer_demo.dart';
import './demo/2bottom_navigation_bar_demo.dart';
import './demo/3listview_demo.dart';
import './demo/4basic_demo.dart';
import './demo/5layout_demo.dart';
// import './demo/6view_demo.dart';
import './demo/7sliver_demo.dart';
import './demo/8navigator_demo.dart';
void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 定义主题组件
    return MaterialApp(
        // 隐藏debug条幅
        debugShowCheckedModeBanner: false,
       // initialRoute 或者home属性二选一
        //  home: NavigatorDemo(),
         // 设置初始路由
         initialRoute: '/',
         routes:{
          //  '/':(context)=> NavigatorDemo(),
           '/':(context)=> Home(),
           '/about':(context)=>Page(title:'我是About')
         },
        // home: Home(),
        // home: SliverDemo(),
        theme: ThemeData(
            primaryColor: Colors.yellow,
            highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
            splashColor: Colors.white70));
  }
}

class Home extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      // Scaffold提供页面结构
      child: Scaffold(
        // backgroundColor:Colors.grey[100],
        appBar: AppBar(
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: '导航',
          //   onPressed: ()=>debugPrint('导航按钮被按下了~')
          // ),
          title: Text('我是标题'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('Search 按钮被按下了'),
            ),
            IconButton(
              icon: Icon(Icons.more_horiz),
              tooltip: 'Search',
              onPressed: () => debugPrint('更多 按钮被按下了'),
            )
          ],
          //阴影效果
          elevation: 4.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.view_quilt)),
            ],
          ),
        ),
        // body:Hello()
        // 列表视图组件
        // body:ListViewDemo()
        body: TabBarView(
          children: <Widget>[
            // Icon(Icons.local_florist, size: 128.0, color: Colors.green),
            LayoutDemo(),
            BasicDemo(),
            ListViewDemo(),
            // ViewDemo()
            SliverDemo(),
            // Icon(Icons.change_history, size: 128.0, color: Colors.red),
            // Icon(Icons.directions_bike, size: 128.0, color: Colors.black12)
          ],
        ),
        // 左侧抽屉
        // drawer: Container(
        //   color: Colors.white,
        //   padding: EdgeInsets.all(8.0),
        //   width: 300.0,
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[
        //       Text('我是抽屉啊老弟')
        //     ],
        //   ),
        // )
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("hello flutter",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              color: Colors.green)),
    );
  }
}
