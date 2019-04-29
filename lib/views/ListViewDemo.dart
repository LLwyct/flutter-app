import 'package:flutter/material.dart';
import '../model/post.dart';

// 创建一个无状态组件类的子类，ListViewDemo返回一个列表构建器，这个列表构建器为为列表的每一项提供一个container组件
class ListViewDemo extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
        return ListView.builder(
            itemCount: 4,
            itemBuilder: _listItemBuilder,
        );
    }

    // container可以设置背景色，margin，child
    Widget _listItemBuilder (BuildContext context, int index) {
        return Container(
            color: Colors.white,
            margin: EdgeInsets.all(8.0),
            child: Column(
                children: <Widget>[
                    Image.asset(posts[index].imageUrl),
                    // AssetImage(posts[index].imageUrl),
                    SizedBox(height: 16.0),
                    Text(
                        posts[index].title,
                        style: Theme.of(context).textTheme.title,
                    ),
                    Text(
                        posts[index].author,
                        style: Theme.of(context).textTheme.subhead,
                    ),
                    SizedBox(height: 8.0),
                ],
            ),
        );
    }
}