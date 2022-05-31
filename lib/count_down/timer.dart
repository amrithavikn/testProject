import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class Countdown extends AnimatedWidget {
  Countdown({ key, required this.animation }) : super(key: key, listenable: animation);
  Animation<int> animation;

  @override
  build(BuildContext context){
    return new Text(
      animation.value.toString(),
      style: new TextStyle(fontSize: 150.0),
    );
  }
}

class MyApp extends StatefulWidget {
  State createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  late AnimationController _controller;

  static const int kStartValue = 4;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
      vsync: this,
      duration: new Duration(seconds: kStartValue),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.play_arrow),
        onPressed: () => _controller.forward(from: 0.0),
      ),
      body: new Container(
        child: new Center(
          child: new Countdown(
            animation: new StepTween(
              begin: kStartValue,
              end: 0,
            ).animate(_controller),
          ),
        ),
      ),
    );
  }
}
