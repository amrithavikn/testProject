// import 'package:date_picker_timeline/date_picker_timeline.dart';
// import 'package:flutter/material.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Date Picker Timeline Demo'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, this.title}) : super(key: key);
//   final String? title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   DatePickerController _controller = DatePickerController();
//
//   DateTime _selectedValue = DateTime.now();
//
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.replay),
//           onPressed: () {
//             _controller.animateToSelection();
//           },
//         ),
//         appBar: AppBar(
//           title: Text(widget.title!),
//         ),
//         body: Container(
//           padding: EdgeInsets.all(20.0),
//           color: Colors.blueGrey[100],
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text("You Selected:"),
//               Padding(
//                 padding: EdgeInsets.all(10),
//               ),
//               Text(_selectedValue.toString()),
//               Padding(
//                 padding: EdgeInsets.all(20),
//               ),
//               Container(
//                 child: DatePicker(
//                   DateTime.now(),
//                   width: 60,
//                   height: 80,
//                   controller: _controller,
//                   initialSelectedDate: DateTime.now(),
//                   selectionColor: Colors.black,
//                   selectedTextColor: Colors.white,
//                   inactiveDates: [
//                     DateTime.now().add(Duration(days: 3)),
//                     DateTime.now().add(Duration(days: 4)),
//                     DateTime.now().add(Duration(days: 7))
//                   ],
//                   onDateChange: (date) {
//                     // New date selected
//                     setState(() {
//                       _selectedValue = date;
//                     });
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ));
//   }
// }
//
//
//
//
//
//
//
//
// // import 'package:flutter/material.dart';
// // import 'package:test_project/calender.dart';
// // import 'package:test_project/sample/bottom_screen.dart';
// // import 'package:test_project/otp/test_otp.dart';
// // import 'package:test_project/search/search.dart';
// //
// // import 'frequency/expense/frequency.dart';
// // import 'frequency/range.dart';
// // import 'frequency/time_picker.dart';
// // import 'sample/navigation.dart';
// // import 'otp/otp_field.dart';
// //
// //
// // void main() {
// //   runApp(MyApp());
// // }
// //
// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter Demo',
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //         visualDensity: VisualDensity.adaptivePlatformDensity,
// //       ),
// //       home: Calender(),
// //       //home: HomePage(),
// //     );
// //   }
// // }
// //
// //
//
//
//
//
//
//
// // import 'package:adaptive_theme/adaptive_theme.dart';
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter/widgets.dart';
// // import 'package:test_project/cupertino.dart';
// // import 'package:test_project/material.dart';
// //
// // void main() async {
// //   WidgetsFlutterBinding.ensureInitialized();
// //   final savedThemeMode = await AdaptiveTheme.getThemeMode();
// //   // print("vvvvvvvvvvvvvvvvvvvvv");
// //   // print(savedThemeMode);
// //   // print("vvvvvvvvvvvvvvvvvvvvv");
// //
// //   runApp(MyApp(savedThemeMode: savedThemeMode));
// // }
// //
// // class MyApp extends StatefulWidget {
// //   final AdaptiveThemeMode? savedThemeMode;
// //
// //   const MyApp({Key? key, this.savedThemeMode}) : super(key: key);
// //
// //   @override
// //   _MyAppState createState() => _MyAppState();
// // }
// //
// // class _MyAppState extends State<MyApp> {
// //   bool isMaterial = true;
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return AnimatedSwitcher(
// //       duration: Duration(seconds: 1),
// //       child: isMaterial
// //           ? MaterialExample(
// //           savedThemeMode: widget.savedThemeMode,
// //           onChanged: () => setState(() => isMaterial = false))
// //           : CupertinoExample(
// //           savedThemeMode: widget.savedThemeMode,
// //           onChanged: () => setState(() => isMaterial = true)),
// //     );
// //   }
// // }
// //
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//