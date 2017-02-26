import 'package:flutter/material.dart';
import 'package:HelloFlutter/MyAppBar.dart';

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Material is a conceptual piece of paper on which the UI appears.
    return new Material(
    // Column is a vertical, linear layout.
      child: new Column(
        children: <Widget>[
          new MyAppBar(
            title: new Text(
              'Example title',
              style: Theme
                  .of(context)
                  .primaryTextTheme
                  .title,
            ),
          ),
          new Expanded(
            child: new Center(
              child: new Text('Hello, world!'),
            ),
          )
        ],
      ),
    );
  }
}