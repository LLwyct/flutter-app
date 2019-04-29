import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        // 返回一个container
        return Container(
            // container背景颜色为white
            color: Colors.white,
            padding: EdgeInsets.all(8),
            // child为一个Drawer组件
            child: Drawer(
                // Drawer的内容为一个ListView
                child: ListView(
                    padding: EdgeInsets.zero,
                    children: < Widget > [
                        // 这是系统提供的一个DrawerHeader组件，但我们不用它，用一个集成度更高的UserAccountDrawerHeader
                        // DrawerHeader(
                        //     child: Text('data'.toUpperCase()),
                        //     decoration: BoxDecoration(
                        //         color: Color.fromRGBO(0, 0, 0, 0.08)
                        //     ),
                        // ),
                        UserAccountsDrawerHeader(
                            // 这些Api真的恐怖，太细节了，就像彩虹六号的地图，玩到70级都不一定能记完
                            accountName: Text(
                                '李玄苍',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                            ),
                            accountEmail: Text('outsider@gmail.com'),
                            currentAccountPicture: CircleAvatar(
                                backgroundImage: NetworkImage('https://tvax1.sinaimg.cn/crop.0.0.1006.1006.180/8573b3fdly8flsjz4d7x3j20ry0ry0wc.jpg'),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.yellow[400],
                                image: DecorationImage(
                                    image: NetworkImage('https://img1.gamersky.com/image2019/04/20190420_ljt_red_220_4/gamersky_044origin_087_20194201659A10.jpg'),
                                    fit: BoxFit.cover,
                                    // colorFilter: ColorFilter.mode(Colors.yellow[100].withOpacity(0.6), BlendMode.hardLight)
                                )
                            ),
                        ),
                        ListTile(
                            title: Text('message', textAlign: TextAlign.left, ),
                            leading: Icon(Icons.message, size: 24),
                            onTap: () => Navigator.pop(context),
                        ),
                        ListTile(
                            title: Text('favourate', textAlign: TextAlign.left, ),
                            leading: Icon(Icons.favorite, size: 24),
                            onTap: () => Navigator.pop(context),
                        ),
                        ListTile(
                            title: Text('settings', textAlign: TextAlign.left, ),
                            leading: Icon(Icons.settings, size: 24),
                            onTap: () => Navigator.pop(context),
                        ),
                    ],
                ),
            ),
        );
    }
}