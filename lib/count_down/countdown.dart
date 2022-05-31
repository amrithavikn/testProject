// import 'dart:async';
// import 'package:flutter/material.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Countdown Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _timeRemaining = 5;
//   late Timer _timer;
//   bool timerSet=false;
//   @override
//   void initState() {
//     _timer = Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     _timer?.cancel();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("widget.title"),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             Text('$_timeRemaining'),
//             timerSet==true?Text(""):Text("aaaa")
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.add),
//           onPressed: () {
//             _timeRemaining += 5;
//             timerSet=true;
//           }),
//     );
//   }
//
//   void _getTime() {
//     setState(() {
//       _timeRemaining == 0 ? _timeRemaining = 0 : _timeRemaining--;
//     });
//   }
// }
//
