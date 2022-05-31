import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class Countdown extends AnimatedWidget {
  Countdown({key, required this.animation})
      : super(key: key, listenable: animation);
  Animation<int> animation;

  @override
  build(BuildContext context) {
    return Text(
      animation.value.toString(),
      style: TextStyle(fontSize: 30.0),
    );
  }
}

class MyApp extends StatefulWidget {
  State createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  late AnimationController _controller;

  static const int kStartValue = 5;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: kStartValue),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),
        onPressed: () {
          _controller.forward(from: 0.0);

        },
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width / 15,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border:
                Border.all(color: const Color(0xffFFFFFF), width: 3),
                shape: BoxShape.circle),
            child: Countdown(
              animation: StepTween(
                begin: kStartValue,
                end: 0,
              ).animate(_controller),
            ),
          ),
          setTime()
        ],
      ),
    );
  }
  setTime(){
    if(kStartValue==0){
      return  Container(
        child: Text("testtt"),
      );

    }
    else if(kStartValue==5){
      return Container(child: Text("text 234"),);
    }
  }
}
