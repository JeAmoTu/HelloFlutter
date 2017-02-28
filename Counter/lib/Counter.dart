import 'package:flutter/material.dart';


/// 用来显示Count计数
/// 成员变量一个int型
/// build返回一个Text控件
/// 也就是CounterDisplay这个类继承于StatelessWidget
/// 本身就是个Widget所以相当于一个Text控件
class CounterDisplay extends StatelessWidget {
  CounterDisplay({this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return new Text('Count: $count');
  }
}


/// Count计数增加
/// build返回一个RaisedButton控件
/// 参数为一个方法 为按钮的点击事件
class CounterIncrementor extends StatelessWidget {
  CounterIncrementor({this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    // return 一个RaisedButton,是有点击效果的button继承于materialButton
    // 参数onPressed如果指定为空的话 按钮将会灰掉 不可点击
    return new RaisedButton(
      onPressed: onPressed,
      child: new Text('Increment'),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => new _CounterState();
}

/// State<T> T好象是要实现状态的控件
class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      ++_counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Row(children: <Widget>[
      new CounterIncrementor(onPressed: _increment),
      new CounterDisplay(count: _counter),
    ]);
  }
}

