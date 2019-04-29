import 'package:flutter/material.dart';
import 'package:first_app/views/DrawerDemo.dart';
import 'package:first_app/views/BottomNavigationBarDemo.dart';
import 'package:first_app/views/ListViewDemo.dart';


void main() => runApp(App());


class App extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Home(),
            theme: ThemeData(
                primarySwatch: Colors.yellow,
                highlightColor: Color.fromRGBO(255, 255, 255, 0.3),
                splashColor: Color.fromRGBO(255, 255, 255, 0.5),
            ),
        );
    }
}

class Home extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        // 默认的标签控制器，一整套东西
        return DefaultTabController(
            // 只有三个标签
            length: 3,
            child: Scaffold(
                // 整个页面的背景色
                backgroundColor: Colors.grey[100],
                // 首部导航
                appBar: AppBar(
                    // 标题居中
                    centerTitle: true,
                    // 标题左侧的按钮，如果自己写的话会覆盖默认按钮，即点了以后不会触发侧边抽屉。
                    // leading: IconButton(
                    //     icon: Icon(Icons.menu),
                    //     tooltip: 'Navigration',
                    //     onPressed: () => debugPrint('clicked'),
                    // ),
                    // 首部导航标题内容
                    title: Text('oUTSIDEr'),
                    // 标题右侧的按钮，可以是多个按钮
                    actions: < Widget > [
                        IconButton(
                            // 图标
                            icon: Icon(Icons.search),
                            // 长按对应的文本提示
                            tooltip: 'Search',
                            // 触发的函数
                            onPressed: () => debugPrint('clicked'),
                        ),
                    ],
                    // 首部导航的阴影
                    elevation: 0.0,
                    // 首部导航底下的标签栏
                    bottom: TabBar(
                        // 没有被选择的Tab的颜色
                        unselectedLabelColor: Colors.black38,
                        // 被选择的Tab底下的小横杠的颜色
                        indicatorColor: Colors.black,
                        // 被选择的Tab底下的小横杠的宽度
                        indicatorSize: TabBarIndicatorSize.label,
                        // 标签栏的标签列表
                        tabs: < Widget > [
                            Tab(icon: Icon(Icons.school)),
                            Tab(icon: Icon(Icons.settings)),
                            Tab(icon: Icon(Icons.account_box)),
                        ],
                    ),
                ),
                // 导航及导航下的标签栏结束，接下来是body部分，每个标签对应一个页面，因此body是一个tabbarview
                body: TabBarView(
                    // 一个list，每一项对应一个tab
                    children: < Widget > [
                        // Icon(Icons.school, size: 128.0, color: Colors.black12),
                        ListViewDemo(),
                        Icon(Icons.settings, size: 128.0, color: Colors.black12),
                        Icon(Icons.account_box, size: 128.0, color: Colors.black12),
                    ],
                ),
                // 侧边栏
                drawer: DrawerDemo(),
                bottomNavigationBar: BottomNavigationBarDemo()
            )
        );
    }
}