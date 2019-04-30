import 'package:flutter/material.dart';

// ContainerWidget
class BasicalWidgetDemo extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        // 自动充满父组件
        return Container(
            // color: Colors.grey[300],
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/2.jpg'),
                alignment: Alignment.centerLeft,
                fit: BoxFit.cover,
              )
            ),
            padding: EdgeInsets.all(20),
            child: Row(
                // 主轴对齐方式
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    Container(
                        child: Icon(Icons.pool, size: 36, color: Colors.white,),
                        // color: Color.fromRGBO(0, 0, 0, 0.5),
                        padding: EdgeInsets.all(32),
                        margin: EdgeInsets.all(8),
                        height: 100,
                        width: 200,
                        // 修饰Container的装饰效果
                        decoration: BoxDecoration(
                            // 如果用这个color修饰Container，外面的就要删掉
                            color: Color.fromRGBO(0, 128, 128, 0.8),
                            // 单独为上下左右设置边框
                            // border: Border(
                            //   top: BorderSide(
                            //     color: Colors.indigoAccent[200],
                            //     width: 3,
                            //     style: BorderStyle.solid
                            //   )
                            // ),
                            // 四周统一设置边框
                            border: Border.all(
                              color: Colors.indigoAccent[200],
                              width: 3,
                              style: BorderStyle.solid
                            ),
                            // 设置圆角，统一设置
                            // borderRadius: BorderRadius.circular(16),
                            // 单独设置
                            // borderRadius: BorderRadius.only(
                            //   // 左上角
                            //   topLeft: Radius.circular(16)
                            // )
                            // 阴影效果
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 16),
                                color: Color.fromRGBO(0, 0, 0, 0.8),
                                // 阴影模糊程度
                                blurRadius: 20.0,
                                // 阴影扩散程度
                                spreadRadius: -6.0
                              )
                            ],
                            // 形状，若设置为圆形则不能设置圆角属性
                            shape: BoxShape.circle,
                            // 镜像渐变
                            // gradient: RadialGradient(
                            //   colors: [
                            //     Color.fromRGBO(25, 57, 222, 1),
                            //     Color.fromRGBO(222, 25, 11, 1),
                            //   ]
                            // ),
                            // 线性渐变
                            gradient: LinearGradient(
                              colors: [
                                Colors.pinkAccent,
                                Colors.redAccent,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight
                            )
                        ),
                    )
                ],
            ),
        );
    }
}


// 富文本类
class RichTextWidget extends StatelessWidget {
    // 组合类文本，允许不同样式的文本组合到一起
    @override
    Widget build(BuildContext context) {
        return RichText(
            text: TextSpan(
                text: ' licangxuan',
                style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontSize: 36.0,
                    // 斜体
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w100
                ),
                children: [
                    TextSpan(
                        text: '.net',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400
                        ) 
                    )
                ]
            ),
        );
    }
}


// 文本类
class TextWidget extends StatelessWidget {
    final TextStyle _textStyle = TextStyle(
        fontSize: 16.0,
    );
    final String _auther = '李白';
    final String _title = '将进酒';


    @override
    Widget build(BuildContext context) {
        return Text(
            // 插值写法$_value
            '《$_title》是唐代大诗人$_auther沿用乐府古题创作的一首诗。此诗为李白长安放还以后所作，思想内容非常深沉，艺术表现非常成熟，在同题作品中影响最大。诗人豪饮高歌，借酒消愁，抒发了忧愤深广的人生感慨。诗中交织着失望与自信、悲愤与抗争的情怀，体现出强烈的豪纵狂放的个性。',
            // 对齐
            textAlign: TextAlign.left,
            // 字体样式
            style: _textStyle,
            // 文本最大行数
            maxLines: 3,
            // 若溢出的处理办法
            overflow: TextOverflow.ellipsis,   
        );
    }
}