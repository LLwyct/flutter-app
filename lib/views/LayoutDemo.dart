import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // aspectratio会自动填充父元素宽度，根据设定的宽高比自动扩充高度。
        AspectRatio(
          aspectRatio: 16/9,
          child: Container(
            color: Colors.black87,
          ),
        ),
        SizedBox(
          height: 100,
          width: 200,
          child: Container(
            child: Icon(Icons.poll, size: 50),
            alignment: Alignment.topRight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(255, 75, 43, 0.9),
                  Color.fromRGBO(255, 65, 108, 0.95),
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black87,
                  offset: Offset(0, 10),
                  blurRadius: 10,
                  spreadRadius: -3
                )
              ]
            ),
          ),
        ),
        // 这里的sizedbox可当divider用
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 100,
          width: 200,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(255, 75, 43, 1),
                  Color.fromRGBO(255, 65, 108, 1),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}