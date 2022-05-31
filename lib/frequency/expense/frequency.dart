import 'package:bottom_picker/bottom_picker.dart';
import 'package:bottom_picker/resources/arrays.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

class AddReminders extends StatefulWidget {
  const AddReminders({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => AddRemindersState();
}

class AddRemindersState extends State<AddReminders> {
  Color buttonBgColor1 = Color(0xff1347AF);
  int index = 1;
  int selectedValue = 1;
  TextEditingController rupeeController = TextEditingController()..text = "₹";
  TextEditingController amountController = TextEditingController()..text = "0";
  bool categoryList = false;
  String month = "Month";
  String count = "Month";
  String datePick = "Day";
  String oneTime = "Monday 01:2022";
  String daily = "12:00 AM";
  String time1 = "12:00 AM";
  String time2 = "12:00 AM";
  String time3 = "12:00 AM";
  String time4 = "12:00 AM";
  String time5 = "12:00 AM";
  String time6 = "12:00 AM";
  String weekly = "12:00 AM";
  String weekData = "Monday ";
  String dateList = "01 ";
  String yearly = "21 April 12:00 AM ";
  String test = "Day";

  bool datePicker = false;
  final weekList = [
    Text('Monday'),
    Text('Tuesday'),
    Text('Wednesday'),
    Text('Thursday'),
    Text('Friday'),
    Text('Saturday'),
    Text('Sunday'),
  ];
  final monthList = [
    Text('1'),
    Text('2'),
    Text('3'),
    Text('4'),
    Text('5'),
    Text('6'),
    Text('7'),
    Text('8'),
    Text('9'),
    Text('10'),
    Text('11'),
    Text('12'),
    Text('13'),
    Text('14'),
    Text('15'),
    Text('16'),
    Text('17'),
    Text('18'),
    Text('19'),
    Text('20'),
    Text('21'),
    Text('22'),
    Text('23'),
    Text('24'),
    Text('25'),
    Text('26'),
    Text('27'),
    Text('28'),
    Text('29'),
    Text('30'),
    Text('31'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: const Text(
            'Add Reminders',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        body: Center(
            child: Container(
                width: MediaQuery.of(context).size.width / 1.1,
                child: ListView(children: [
                  const SizedBox(
                    height: 10,
                  ),

                  ///one time
                  Container(
                      height: MediaQuery.of(context).size.height /
                          24, //height of button
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height /
                                18, //height of button
                            width: MediaQuery.of(context).size.width / 7,
                            child: const Text('Frequency',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                          GestureDetector(
                            child: Row(
                              children: const [
                                Text("One Time",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    )),
                                Icon(Icons.arrow_forward_ios, size: 18)
                              ],
                            ),
                          )
                        ],
                      )),
                  oneTimeDayPicker()  ,
                  oneTimeTimePicker() ,

                  const SizedBox(
                    height: 20,
                  ),

                  ///daily
                  Container(
                      height: MediaQuery.of(context).size.height /
                          24, //height of button
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height /
                                18, //height of button
                            width: MediaQuery.of(context).size.width / 7,
                            child: const Text('Frequency',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                          GestureDetector(
                            child: Row(
                              children: const [
                                Text("Daily",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    )),
                                Icon(Icons.arrow_forward_ios, size: 18)
                              ],
                            ),
                          )
                        ],
                      )),
                  dailyTimePicker()  ,

                  const SizedBox(
                    height: 20,
                  ),

                  ///weekly
                  Container(
                      height: MediaQuery.of(context).size.height /
                          24, //height of button
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height /
                                18, //height of button
                            width: MediaQuery.of(context).size.width / 7,
                            child: const Text('Frequency',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                          GestureDetector(
                            child: Row(
                              children: const [
                                Text("Weekly",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    )),
                                Icon(Icons.arrow_forward_ios, size: 18)
                              ],
                            ),
                          )
                        ],
                      )),
                  weeklyDayPicker() ,
                  weeklyTimePicker() ,

                  const SizedBox(
                    height: 20,
                  ),

                  ///monthly
                  Container(
                      height: MediaQuery.of(context).size.height /
                          24, //height of button
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height /
                                18, //height of button
                            width: MediaQuery.of(context).size.width / 7,
                            child: const Text('Frequency',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                          GestureDetector(
                            child: Row(
                              children: const [
                                Text("Monthly",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    )),
                                Icon(Icons.arrow_forward_ios, size: 18)
                              ],
                            ),
                          )
                        ],
                      )),
                  monthlyDayPicker() ,
                  monthlyTimePicker()  ,

                  const SizedBox(
                    height: 20,
                  ),

                  ///yearly
                  Container(
                      height: MediaQuery.of(context).size.height /
                          24, //height of button
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height /
                                18, //height of button
                            width: MediaQuery.of(context).size.width / 7,
                            child: const Text('Frequency',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                          GestureDetector(
                            child: Row(
                              children: const [
                                Text("Yearly",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    )),
                                Icon(Icons.arrow_forward_ios, size: 18)
                              ],
                            ),
                          )
                        ],
                      )),
                  yearlyDayPicker() ,
                  yearlyTimePicker() ,
                ]))));
  }



Widget oneTimeDayPicker(){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height /
              18, //height of button
          width: MediaQuery.of(context).size.width / 10,
          child: const Text('Day',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              )),
        ),
        TextButton(
            onPressed: () {
              DatePicker.showDatePicker(context,
                  showTitleActions: true, onChanged: (date) {
                    print('change $date in time zone ' +
                        date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                    oneTime =
                    '${date.day} - ${date.month} - ${date.year} - ${date.hour} - ${date.minute} - ${date.timeZoneOffset.inDays.toString()}';

                    setState(() {
                      final DateFormat formatter1 =
                      DateFormat('  d MMM y ');
                      final String formatted1 =
                      formatter1.format(date);
                      oneTime = formatted1;
                    });
                  },
                  currentTime: DateTime(2008, 12, 31, 23, 12, 34),
                  locale: LocaleType.en);
            },
            child: Text(
              oneTime,
              style: TextStyle(color: Colors.blue),
            )),
      ],
    );
}
Widget oneTimeTimePicker(){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height /
              18, //height of button
          width: MediaQuery.of(context).size.width / 10,
          child: const Text('Time',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              )),
        ),
        TextButton(
          onPressed: () {
            // print(daily);
            _openTimePicker(context, 1);
          },
          child: Text(time1),
        ),
      ],
    );
}
Widget dailyTimePicker(){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height /
              18, //height of button
          width: MediaQuery.of(context).size.width / 10,
          child: const Text('Time',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              )),
        ),
        TextButton(
          onPressed: () {
            // print(daily);
            _openTimePicker(context, 2);
          },
          child: Text(time2),
        ),
      ],
    );
}
Widget weeklyDayPicker(){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height /
              18, //height of button
          width: MediaQuery.of(context).size.width / 10,
          child: const Text('Day',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              )),
        ),
        TextButton(
            onPressed: () {
              _openSimpleItemPickerWeek(context, weekList);
            },
            child: Text(
              weekData,
              style: TextStyle(color: Colors.blue),
            )),
      ],
    );
}
Widget weeklyTimePicker(){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height /
              18, //height of button
          width: MediaQuery.of(context).size.width / 10,
          child: const Text('Time',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              )),
        ),
        TextButton(
          onPressed: () {
            // print(daily);
            _openTimePicker(context, 3);
          },
          child: Text(time3),
        ),
      ],
    );
}
Widget monthlyDayPicker(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height /
              18, //height of button
          width: MediaQuery.of(context).size.width / 10,
          child: const Text('Day',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              )),
        ),
        TextButton(
            onPressed: () {
              _openSimpleItemPickerMonth(context, monthList);
            },
            child: Text(
              dateList,
              style: TextStyle(color: Colors.blue),
            )),
      ],
    );
}
Widget monthlyTimePicker(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height /
              18, //height of button
          width: MediaQuery.of(context).size.width / 10,
          child: const Text('Time',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              )),
        ),
        TextButton(
          onPressed: () {
            _openTimePicker(context, 4);
          },
          child: Text(time4),
        ),
      ],
    );
}
Widget yearlyDayPicker(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height /
              18, //height of button
          width: MediaQuery.of(context).size.width / 10,
          child: const Text('Day',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              )),
        ),
        TextButton(
            onPressed: () {
              DatePicker.showDatePicker(context,
                  showTitleActions: true, onChanged: (date) {
                    print('change $date in time zone ' +
                        date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                    yearly =
                    '${date.day} - ${date.month} - ${date.year} - ${date.hour} - ${date.minute} - ${date.timeZoneOffset.inDays.toString()}';

                    setState(() {
                      final DateFormat formatter1 =
                      DateFormat('  d MMM y ');
                      final String formatted1 =
                      formatter1.format(date);
                      yearly = formatted1;
                    });
                  },
                  currentTime: DateTime(2008, 12, 31, 23, 12, 34),
                  locale: LocaleType.en);
            },
            child: Text(
              yearly,
              style: TextStyle(color: Colors.blue),
            )),
      ],
    );
}
Widget yearlyTimePicker(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height /
              18, //height of button
          width: MediaQuery.of(context).size.width / 10,
          child: const Text('Time',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              )),
        ),
        TextButton(
          onPressed: () {
            // print(daily);
            _openTimePicker(context, 5);
          },
          child: Text(time5),
        ),
      ],
    );
}
  void _openTimePicker(BuildContext context, type) {
    BottomPicker.time(
      title: 'Daily',
      titleStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
        color: Colors.blue,
      ),
      onSubmit: (index) {
        print(index);
        daily =
            ' ${index.hour} - ${index.minute} - ${index.timeZoneOffset.inDays.toString()}';

        setState(() {
          final DateFormat formatter1 = DateFormat('hh:mm a');
          final String formatted1 = formatter1.format(index);
          daily = formatted1;
          if (type == 1) {
            time1 = daily;
          } else if (type == 2) {
            time2 = daily;
          } else if (type == 3) {
            time3 = daily;
          } else if (type == 4) {
            time4 = daily;
          } else if (type == 5) {
            time5 = daily;
          }
        });
      },
      onClose: () {
        print('Picker closed');
      },
      bottomPickerTheme: BOTTOM_PICKER_THEME.blue,
    ).show(context);
  }

  void _openSimpleItemPickerWeek(BuildContext context, List<Text> weekList) {
    BottomPicker(
      items: weekList,
      title: 'Weekly',
      titleStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      bottomPickerTheme: BOTTOM_PICKER_THEME.morningSalad,
      onSubmit: (index) {
        print(index);
      },
      onClose: () {
        print('Picker closed');
      },
      onChange: (index) {
        setState(() {
          print(index);
          print(weekList[index].data);
          weekData = weekList[index].data!;
        });

      },
      buttonAlignement: MainAxisAlignment.start,
      displayButtonIcon: false,
      displaySubmitButton: false,
    ).show(context);
  }

  void _openSimpleItemPickerMonth(BuildContext context, List<Text> monthList) {
    BottomPicker(
      items: monthList,
      title: 'Monthly',
      titleStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      //  backgroundColor: Colors.yellow.withOpacity(0.6),
      onChange: (index) {
       setState(() {
         print(index);
         print(monthList[index].data);
         dateList = monthList[index].data!;
       });
      },

      onClose: () {
        print('Picker closed');
      },
      buttonAlignement: MainAxisAlignment.start,
      displayButtonIcon: false,
      displaySubmitButton: false,
      pickerTextStyle: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      onSubmit: (index) {
        print(index);
      },
      // displayCloseIcon: true,

      bottomPickerTheme: BOTTOM_PICKER_THEME.blue,
    ).show(context);
  }
}













































//
// import 'package:bottom_picker/bottom_picker.dart';
// import 'package:bottom_picker/resources/arrays.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
// import 'package:intl/intl.dart';
// import 'package:test_project/frequency/expense/select_frequency.dart';
// import 'package:test_project/frequency/time_picker.dart';
//
//
// class AddReminders extends StatefulWidget {
//   const AddReminders({Key? key}) : super(key: key);
//
//   @override
//   State<StatefulWidget> createState() => AddRemindersState();
// }
//
// class AddRemindersState extends State<AddReminders> {
//   Color buttonBgColor1 = Color(0xff1347AF);
//   int index = 1;
//   int selectedValue = 1;
//   TextEditingController rupeeController = TextEditingController()..text = "₹";
//   TextEditingController amountController = TextEditingController()..text = "0";
//   bool categoryList = false;
//   String month = "Month";
//   String count = "Month";
//   String datePick = "Day";
//   String oneTime = "Monday 01:2022";
//   String daily = "12:00 AM";
//   String weekly = "12:00 AM";
//   String listData = "Monday ";
//   String dateList = "01 ";
//   String yearly = "21 April 12:00 AM ";
//   String test="Day";
//
//   bool datePicker=false;
//   final weekList = [
//     Text('Monday'),
//     Text('Tuesday'),
//     Text('Wednesday'),
//     Text('Thursday'),
//     Text('Friday'),
//     Text('Saturday'),
//     Text('Sunday'),
//   ];
//   final monthList = [
//     Text('1'),
//     Text('2'),
//     Text('3'),
//     Text('4'),
//     Text('5'),
//     Text('6'),
//     Text('7'),
//     Text('8'),
//     Text('9'),
//     Text('10'),
//     Text('11'),
//     Text('12'),
//     Text('13'),
//     Text('14'),
//     Text('15'),
//     Text('16'),
//     Text('17'),
//     Text('18'),
//     Text('19'),
//     Text('20'),
//     Text('21'),
//     Text('22'),
//     Text('23'),
//     Text('24'),
//     Text('25'),
//     Text('26'),
//     Text('27'),
//     Text('28'),
//     Text('29'),
//     Text('30'),
//     Text('31'),
//
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           elevation: 0.0,
//           title: const Text(
//             'Add Reminders',
//             style: TextStyle(
//               fontSize: 18,
//             ),
//           ),
//         ),
//         body: Center(
//             child: Container(
//                 width: MediaQuery.of(context).size.width / 1.1,
//                 child: ListView(children: [
//                   const SizedBox(
//                     height: 10,
//                   ),
//
//                   Container(
//                       height: MediaQuery.of(context).size.height /
//                           18, //height of button
//                       width: MediaQuery.of(context).size.width / 1.1,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Container(
//                             alignment: Alignment.center,
//                             height: MediaQuery.of(context).size.height /
//                                 18, //height of button
//                             width: MediaQuery.of(context).size.width / 7,
//                             child: const Text('Frequency',
//                                 style: TextStyle(
//                                   fontFamily: 'Poppins',
//                                   fontWeight: FontWeight.w600,
//                                 )),
//                           ),
//                           GestureDetector(
//                             onTap: ()async{
//
//                               final result = await Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) =>
//                                         SelectFrequency()), // MaterialPageRoute(builder: (context) => SignUpPage()),
//                               );
//
//                               if (result != null) {
//                                 setState(() {
//                                   month = result;
//                                 });
//                               } else {}
//                             },
//
//
//                             child: Row(
//                               children: [
//                                 Text(month,
//                                     style: const TextStyle(
//                                       fontFamily: 'Poppins',
//                                       fontWeight: FontWeight.w600,
//                                     )),
//                                 Icon(Icons.arrow_forward_ios,
//                                     size: 18)
//                               ],
//                             ),
//                           )
//                         ],
//                       )),
//                   Container(
//                       height: MediaQuery.of(context).size.height /
//                           18, //height of button
//                       width: MediaQuery.of(context).size.width / 1.1,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Container(
//                             alignment: Alignment.center,
//                             height: MediaQuery.of(context).size.height /
//                                 18, //height of button
//                             width: MediaQuery.of(context).size.width / 10,
//                             child: const Text('Every',
//                                 style: TextStyle(
//                                   fontFamily: 'Poppins',
//                                   fontWeight: FontWeight.w600,
//                                 )),
//                           ),
//                           GestureDetector(
//                             onTap: ()  {
//                               //  datePicker=true;
//                             },
//                             child: Row(
//                               children:  const [
//                                 Text("Day",
//                                     style: TextStyle(
//                                       fontFamily: 'Poppins',
//                                       fontWeight: FontWeight.w600,
//                                     )),
//                                 Icon(Icons.arrow_forward_ios,
//                                     size: 18)
//                               ],
//                             ),
//
//                           ),
//
//                           // datePicker==true?TextButton(
//                           //     onPressed: () {
//                           //       DatePicker.showDatePicker(context, showTitleActions: true,
//                           //           onChanged: (date) {
//                           //             print('change $date in time zone ' +
//                           //                 date.timeZoneOffset.inHours.toString());
//                           //           }, onConfirm: (date) {
//                           //             print('confirm $date');
//                           //             oneTime =
//                           //             '${date.day} - ${date.month} - ${date.year} - ${date.hour} - ${date.minute} - ${date.timeZoneOffset.inDays.toString()}';
//                           //
//                           //             setState(() {
//                           //               final DateFormat formatter1 = DateFormat('  d MMM y ');
//                           //               final String formatted1 = formatter1.format(date);
//                           //               oneTime = '$formatted1';
//                           //             });
//                           //           },
//                           //           currentTime: DateTime(2008, 12, 31, 23, 12, 34),
//                           //           locale: LocaleType.en);
//                           //     },
//                           //     child: Text(
//                           //       '$oneTime',
//                           //       style: TextStyle(color: Colors.blue),
//                           //     )):Container()
//
//
//                         ],
//                       )),
//                   Container(
//                       height: MediaQuery.of(context).size.height /
//                           18, //height of button
//                       width: MediaQuery.of(context).size.width / 1.1,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Container(
//                             alignment: Alignment.center,
//                             height: MediaQuery.of(context).size.height /
//                                 18, //height of button
//                             width: MediaQuery.of(context).size.width / 10,
//                             child: const Text('Time',
//                                 style: TextStyle(
//                                   fontFamily: 'Poppins',
//                                   fontWeight: FontWeight.w600,
//                                 )),
//                           ),
//                           GestureDetector(
//                             onTap: (){
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(builder: (context) => TimePicker( )),
//                               );
//                             },
//                             child: Row(
//                               children: const [
//                                 Text('Time',
//                                     style: TextStyle(
//                                       fontFamily: 'Poppins',
//                                       fontWeight: FontWeight.w600,
//                                     )),
//                                 Icon(Icons.arrow_forward_ios,
//                                     size: 18)
//                               ],
//                             ),
//                           )
//                         ],
//                       )),
//                   Container(
//                       height: MediaQuery.of(context).size.height /
//                           18, //height of button
//                       width: MediaQuery.of(context).size.width / 1.1,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Container(
//                             alignment: Alignment.center,
//                             height: MediaQuery.of(context).size.height /
//                                 18, //height of button
//                             width: MediaQuery.of(context).size.width / 3,
//                             child: const Text('Stop Repeating After',
//                                 style: TextStyle(
//                                   fontFamily: 'Poppins',
//                                   fontWeight: FontWeight.w600,
//                                 )),
//                           ),
//                           GestureDetector(
//                             onTap: (){
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(builder: (context) => TimePicker( )),
//                               );
//                             },
//                             child: Row(
//                               children: const [
//                                 Text('Count',
//                                     style: TextStyle(
//                                       fontFamily: 'Poppins',
//                                       fontWeight: FontWeight.w600,
//                                     )),
//                                 Icon(Icons.arrow_forward_ios,
//                                     size: 18)
//                               ],
//                             ),
//                           )
//                         ],
//                       )),
//
//
//                 ]))));
//   }
// //  selectDate(String test){
// //     if(test=="OneTime"){
// //       return oneTimeDatePicker();
// //     }
// //     else if (test=="Daily"){
// //       return dailyTimePicker();
// //     }
// // }
//   Widget oneTimeDatePicker(){
//     return  TextButton(
//         onPressed: () {
//           DatePicker.showDatePicker(context, showTitleActions: true,
//               onChanged: (date) {
//                 print('change $date in time zone ' +
//                     date.timeZoneOffset.inHours.toString());
//               }, onConfirm: (date) {
//                 print('confirm $date');
//                 oneTime =
//                 '${date.day} - ${date.month} - ${date.year} - ${date.hour} - ${date.minute} - ${date.timeZoneOffset.inDays.toString()}';
//
//                 setState(() {
//                   final DateFormat formatter1 = DateFormat('  d MMM y ');
//                   final String formatted1 = formatter1.format(date);
//                   oneTime = '$formatted1';
//                 });
//               },
//               currentTime: DateTime(2008, 12, 31, 23, 12, 34),
//               locale: LocaleType.en);
//         },
//         child: Text(
//           '$oneTime',
//           style: TextStyle(color: Colors.blue),
//         ));
//   }
//   Widget dailyTimePicker() {
//     return SizedBox(
//       child: ElevatedButton(
//         onPressed: () {
//           // print(daily);
//           _openTimePicker(context);
//         },
//         child: Text('$daily'),
//       ),
//     );
//   }
//   void _openTimePicker(BuildContext context) {
//     BottomPicker.time(
//       title: 'Daily',
//       titleStyle: const TextStyle(
//         fontWeight: FontWeight.bold,
//         fontSize: 15,
//         color: Colors.blue,
//       ),
//       onSubmit: (index) {
//         print(index);
//         daily =' ${index.hour} - ${index.minute} - ${index.timeZoneOffset.inDays.toString()}';
//
//         setState(() {
//           final DateFormat formatter1 = DateFormat('hh:mm a');
//           final String formatted1 = formatter1.format(index);
//           daily = '$formatted1';
//         });
//       },
//       onClose: () {
//         print('Picker closed');
//       },
//       bottomPickerTheme: BOTTOM_PICKER_THEME.blue,
//     ).show(context);
//   }
//   Widget weeklyDayAndTimePicker() {
//     return SizedBox(
//       child: ElevatedButton(
//         onPressed: () {
//
//           _openSimpleItemPickerWeek(context, weekList);
//         },
//         child: Text(listData ),
//       ),
//     );
//   }
//   void _openSimpleItemPickerWeek(BuildContext context, List<Text> weekList) {
//     BottomPicker(
//       items: weekList,
//       title: 'Weekly',
//       titleStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
//       //backgroundColor: Colors.yellow.withOpacity(0.6),
//       //  bottomPickerTheme: BOTTOM_PICKER_THEME.morningSalad,
//       onChange: (index) {
//         print(index);
//         print(weekList[index].data);
//         listData=weekList[index].data!;
//       },
//
//       onSubmit: (index) {
//         print(index);
//
//
//       },
//       onClose: () {
//         print('Picker closed');
//       },
//       buttonAlignement: MainAxisAlignment.start,
//       displayButtonIcon: false,
//       displaySubmitButton: false,
//       pickerTextStyle: const TextStyle(
//         color: Colors.black,
//         fontWeight: FontWeight.bold,
//       ),
//       bottomPickerTheme: BOTTOM_PICKER_THEME.blue,
//
//     ).show(context);
//   }
//   Widget monthlyDayAndTimePicker() {
//     return  SizedBox(
//       child: ElevatedButton(
//         onPressed: () {
//
//           _openSimpleItemPickerMonth(context, monthList);
//
//         },
//         child: Text( dateList),
//       ),
//     );
//   }
//   void _openSimpleItemPickerMonth(BuildContext context, List<Text> monthList) {
//     BottomPicker(
//       items: monthList,
//       title: 'Monthly',
//       titleStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
//       //  backgroundColor: Colors.yellow.withOpacity(0.6),
//       onChange: (index) {
//         print(index);
//         print(monthList[index].data);
//         dateList=monthList[index].data!;
//       },
//
//       onClose: () {
//
//         print('Picker closed');
//       },
//       buttonAlignement: MainAxisAlignment.start,
//       displayButtonIcon: false,
//       displaySubmitButton: false,
//       pickerTextStyle: const TextStyle(
//         color: Colors.black,
//         fontWeight: FontWeight.bold,
//       ),
//       onSubmit: (index) {
//         print(index);
//       },
//       // displayCloseIcon: true,
//
//       bottomPickerTheme: BOTTOM_PICKER_THEME.blue,
//
//
//     ).show(context);
//   }
//   Widget yearlyDatePicker() {
//     return TextButton(
//         onPressed: () {
//           DatePicker.showDateTimePicker(context, showTitleActions: true,
//               onChanged: (date) {
//                 print('change $date in time zone ' +
//                     date.timeZoneOffset.inHours.toString());
//               }, onConfirm: (date) {
//                 print('confirm $date');
//                 yearly =
//                 '${date.day} - ${date.month} - ${date.year} - ${date.hour} - ${date.minute} - ${date.timeZoneOffset.inDays.toString()}';
//
//                 setState(() {
//                   final DateFormat formatter1 = DateFormat(' EEE d MMM y hh:mm a');
//                   final String formatted1 = formatter1.format(date);
//                   yearly = '$formatted1';
//                 });
//               },
//               currentTime: DateTime(2008, 12, 31, 23, 12, 34),
//               locale: LocaleType.en);
//         },
//         child: Text(
//           '$yearly',
//           style: TextStyle(color: Colors.blue),
//         ));
//   }
// }
//
//
