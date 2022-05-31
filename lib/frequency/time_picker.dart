
import 'package:bottom_picker/bottom_picker.dart';
import 'package:bottom_picker/resources/arrays.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';
import 'package:test_project/frequency/bottom_picker.dart';
import 'package:test_project/frequency/test.dart';

class TimePicker extends StatefulWidget {
  @override
  State<TimePicker> createState() => _HomePageState();
}

class _HomePageState extends State<TimePicker> {
  final buttonWidth = 300.0;
  String daily = "12:00 AM";
  String oneTime = "Monday 01:2022";
  String weekly = "12:00 AM";
  String monthly = "12:00 AM";
  String yearly = "21 April 12:00 AM ";
  String listData = "Monday ";
  String dateList = "01 ";
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
        title: Text('Datetime Picker '),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Text("one time"),
              oneTimeDateAndTimePicker(),
              Text("daily"),
              dailyTimePicker(),
              Text("weekly"),
              weeklyDayAndTimePicker(),
              Text("monthly"),
              monthlyDayAndTimePicker(),
              Text("yearly"),
              yearlyDatePicker(),
              ElevatedButton(

                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomTimePicker()),
                    );
                  },
                  child: Text('Bottom Picker')),
              ElevatedButton(

                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomTimePicker()),
                    );
                  },
                  child: Text('Reminder')),



            ],
          ),
        ),
      ),
    );
  }

  void _openSimpleItemPickerWeek(BuildContext context, List<Text> weekList) {
    BottomPicker(
      items: weekList,
      title: 'Weekly',
      titleStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      //backgroundColor: Colors.yellow.withOpacity(0.6),
    //  bottomPickerTheme: BOTTOM_PICKER_THEME.morningSalad,
      onChange: (index) {
        print(index);
        print(weekList[index].data);
        listData=weekList[index].data!;
      },

      onSubmit: (index) {
        print(index);


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
      bottomPickerTheme: BOTTOM_PICKER_THEME.blue,

    ).show(context);
  }
  void _openSimpleItemPickerMonth(BuildContext context, List<Text> monthList) {
    BottomPicker(
      items: monthList,
      title: 'Monthly',
      titleStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
    //  backgroundColor: Colors.yellow.withOpacity(0.6),
      onChange: (index) {
        print(index);
        print(monthList[index].data);
        dateList=monthList[index].data!;
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
   displayCloseIcon: true,
      closeIconColor: Colors.red,

  bottomPickerTheme: BOTTOM_PICKER_THEME.blue,


    ).show(context);
  }

  Widget oneTimeDateAndTimePicker() {
    return TextButton(
        onPressed: () {
          DatePicker.showDatePicker(context, showTitleActions: true,
              onChanged: (date) {
            print('change $date in time zone ' +
                date.timeZoneOffset.inHours.toString());
          }, onConfirm: (date) {
            print('confirm $date');
            oneTime =
                '${date.day} - ${date.month} - ${date.year} - ${date.hour} - ${date.minute} - ${date.timeZoneOffset.inDays.toString()}';

            setState(() {
              final DateFormat formatter1 = DateFormat('  d MMM y ');
              final String formatted1 = formatter1.format(date);
              oneTime = '$formatted1';
            });
          },
              currentTime: DateTime(2008, 12, 31, 23, 12, 34),
              locale: LocaleType.en);
        },
        child: Text(
          '$oneTime',
          style: TextStyle(color: Colors.blue),
        ));
  }

  Widget dailyTimePicker() {
    return SizedBox(
      width: buttonWidth,
      child: ElevatedButton(
        onPressed: () {
          // print(daily);
          _openTimePicker(context);
        },
        child: Text('$daily'),
      ),
    );
  }

  Widget weeklyDayAndTimePicker() {
    return SizedBox(
      width: buttonWidth,
      child: ElevatedButton(
        onPressed: () {

          _openSimpleItemPickerWeek(context, weekList);
        },
        child: Text(listData ),
      ),
    );
  }

  Widget monthlyDayAndTimePicker() {
    return  SizedBox(
      width: buttonWidth,
      child: ElevatedButton(
        onPressed: () {

          _openSimpleItemPickerMonth(context, monthList);

        },
        child: Text( dateList),
      ),
    );
  }

  Widget yearlyDatePicker() {
    return TextButton(
        onPressed: () {
          DatePicker.showDateTimePicker(context, showTitleActions: true,
              onChanged: (date) {
            print('change $date in time zone ' +
                date.timeZoneOffset.inHours.toString());
          }, onConfirm: (date) {
            print('confirm $date');
            yearly =
                '${date.day} - ${date.month} - ${date.year} - ${date.hour} - ${date.minute} - ${date.timeZoneOffset.inDays.toString()}';

            setState(() {
              final DateFormat formatter1 = DateFormat(' EEE d MMM y hh:mm a');
              final String formatted1 = formatter1.format(date);
              yearly = '$formatted1';
            });
          },
              currentTime: DateTime(2008, 12, 31, 23, 12, 34),
              locale: LocaleType.en);
        },
        child: Text(
          '$yearly',
          style: TextStyle(color: Colors.blue),
        ));
  }
  void _openTimePicker(BuildContext context) {
    BottomPicker.time(
      title: 'Daily',
      titleStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
        color: Colors.blue,
      ),
      onSubmit: (index) {
        print(index);
        daily =' ${index.hour} - ${index.minute} - ${index.timeZoneOffset.inDays.toString()}';

        setState(() {
          final DateFormat formatter1 = DateFormat('hh:mm a');
          final String formatted1 = formatter1.format(index);
          daily = '$formatted1';
        });
      },
      onClose: () {
        print('Picker closed');
      },
      bottomPickerTheme: BOTTOM_PICKER_THEME.blue,
    ).show(context);
  }

  void _openTimePickerWeek(BuildContext context) {
    BottomPicker.time(
      title: 'Weekly',
      titleStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
        color: Colors.blue,
      ),
      onSubmit: (index) {
        print(index);
        weekly =' ${index.hour} - ${index.minute} - ${index.timeZoneOffset.inDays.toString()}';

        setState(() {
          final DateFormat formatter1 = DateFormat(' hh:mm a');
          final String formatted1 = formatter1.format(index);
          weekly = '$formatted1';
        });
      },
      onClose: () {
        print('Picker closed');
      },
      bottomPickerTheme: BOTTOM_PICKER_THEME.blue,
    ).show(context);
  }
  void _openTimePickerMonth(BuildContext context) {
    BottomPicker.time(
      title: 'Monthly',
      titleStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
        color: Colors.blue,
      ),
      onSubmit: (index) {
        print(index);
        monthly =' ${index.hour} - ${index.minute} - ${index.timeZoneOffset.inDays.toString()}';

        setState(() {
          final DateFormat formatter1 = DateFormat(' hh:mm a');
          final String formatted1 = formatter1.format(index);
          monthly = '$formatted1';

        });
      },

      onClose: () {

        print('Picker closed');
      },
      bottomPickerTheme: BOTTOM_PICKER_THEME.blue,
    ).show(context);
  }
}
