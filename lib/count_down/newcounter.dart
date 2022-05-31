import 'package:flutter/material.dart';
import 'dart:async';



class AppState extends StatefulWidget {
  AppUpdate createState() => AppUpdate();
}

class AppUpdate extends State<AppState> {
  late Timer _timer;
  String sampleText = 'Some OLD Sample Text...';

  updateText() {
    _timer =  Timer(const Duration(seconds: 5), () {
      setState(() {
        sampleText = 'New Text With Delay...';
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: <Widget>[
              Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Text('$sampleText', style: TextStyle(fontSize: 21))),



              RaisedButton(
                onPressed: () => updateText(),
                child: Text('Click Here '),
                textColor: Colors.white,
                color: Colors.green,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              ),
            ])));
  }
}