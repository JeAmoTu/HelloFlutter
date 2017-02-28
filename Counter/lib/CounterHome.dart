import 'package:flutter/material.dart';
import 'package:Counter/Counter.dart';

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scafold is a layout for the major material design widgets.
    // Scafold是Materia Design widget的主要布局
    return new Scaffold(
      appBar: new AppBar(
      // 要在标题之前显示的widget。
        leading: new IconButton(
          icon: new Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: new Text('Example title'),
        // 在标题窗口小部件后显示的widget。
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      // body is the majority of the screen.
      // body是屏幕的主体
      body: new Counter(),
    );
  }
}