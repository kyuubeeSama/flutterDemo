import 'package:flutter/material.dart';

class LabelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("label"),
      ),
      body: Align(
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
            children: <Widget>[
              Text(
                "Hello world! I'm Jack." * 4,
                // 此处的对其方式，只有文本超出一行时才有用
                textAlign: TextAlign.left,
                maxLines: 1,
                // 设置超出部分的效果
                // clip,fade,visible 超出部分不显示，也没有省略号
                // ellipsis 省略号
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                    // 背景色
                    background: Paint()..color = Colors.yellow),
              ),
              Text(
                "Hello world",
                // 设置字体大小
                textScaleFactor: 2.0,
              ),
              // 富文本
              Text.rich(TextSpan(children: [
                TextSpan(text: "hello"),
                TextSpan(
                  text: "this is what i want to say",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                  // 手势识别
                  // recognizer:
                )
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
