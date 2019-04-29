import 'package:flutter/material.dart';


// 一个底部导航栏，继承自有状态组件，因为是可以变化的
class BottomNavigationBarDemo extends StatefulWidget {
    @override
    State < StatefulWidget > createState() {
        return _BottomNavigationBarDemoState();
    }
}


class _BottomNavigationBarDemoState extends State < BottomNavigationBarDemo > {
    int _currentIndex = 0;

    void _onTapHandler(int index) {
        setState(() => _currentIndex = index);
    }

    @override
    Widget build(BuildContext context) {
        return BottomNavigationBar(
            // 用currentIndex激活items里的item
            currentIndex: _currentIndex,
            // 注意!!如果超过3个,底部标签的type会改变,反正改变后类型会默认隐藏,因此要改成type
            type: BottomNavigationBarType.fixed,
            // 激活item的颜色
            fixedColor: Colors.black,
            // 当被点击时,触发函数_onTapHandler来改变currentindex的值,从而改变激活的item
            onTap: _onTapHandler,
            items: [
                BottomNavigationBarItem(
                    title: Text('Explore'),
                    icon: Icon(Icons.explore),
                ),
                BottomNavigationBarItem(
                    title: Text('history'),
                    icon: Icon(Icons.history),
                ),
                BottomNavigationBarItem(
                    title: Text('list'),
                    icon: Icon(Icons.list),
                ),
                BottomNavigationBarItem(
                    title: Text('My'),
                    icon: Icon(Icons.verified_user),
                ),
            ],
        );
    }
}