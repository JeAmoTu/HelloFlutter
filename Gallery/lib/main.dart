import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Text('Flutter Demo Home Page'),
        ),
        body: new Center(
            child: new ListView(
                children: [
                  new Image.asset('images/pic1.jpg'),
                  new Image.asset('images/pic2.jpg'),
                  new Image.asset('images/pic3.jpg'),
                  new Image.asset('images/pic4.jpg'),
                  new Image.asset('images/pic5.jpg'),
                  new Image.asset('images/pic6.jpg'),
                  new Image.asset('images/pic7.jpg'),
                  new Image.asset('images/pic8.jpg'),
                  new Image.asset('images/pic9.jpg'),
                ],
            ),
        ),
    );
  }
}
