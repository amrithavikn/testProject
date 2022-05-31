import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';



class ExampleApp extends StatelessWidget {
  const ExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TextScreen(),
    );
  }
}

class TextScreen extends StatefulWidget {
  const TextScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<TextScreen> createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  DateTime dateTime = DateTime.now();
  bool showDate = false;
  bool showTime = false;
  bool showDateTime = false;
  String _date = "Day,Time";
  String time = "Day,Time";
  @override
  void initState(){
    DateTime dt = DateTime.now();
    final DateFormat formatter = DateFormat('dd-MM-yyyy');
    final String formatted = formatter.format(dt);
    _date='$formatted';
  }

  // Select for Date
  Future<DateTime> _selectDate(BuildContext context) async {
    final selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (selected != null && selected != selectedDate) {
      setState(() {
        selectedDate = selected;
      });
    }
    return selectedDate;
  }

// Select for Time
  Future<TimeOfDay> _selectTime(BuildContext context) async {
    final selected = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (selected != null && selected != selectedTime) {
      setState(() {
        selectedTime = selected;
      });
    }
    return selectedTime;
  }
  // select date time picker

  Future _selectDateTime(BuildContext context) async {
    final date = await _selectDate(context);
    if (date == null) return;

    final time = await _selectTime(context);

    if (time == null) return;
    setState(() {
      dateTime = DateTime(
        date.year,
        date.month,
        date.day,
        time.hour,
        time.minute,
      );
    });
  }

  String getDate() {
    // ignore: unnecessary_null_comparison
    if (selectedDate == null) {
      return 'select date';
    } else {
      return DateFormat('MMM d, yyyy').format(selectedDate);
    }
  }

  String getDateTime() {
    // ignore: unnecessary_null_comparison
    if (dateTime == null) {
      return 'select date timer';
    } else {
      return DateFormat('dd HH: ss a').format(dateTime)
      //return DateFormat('yyyy-MM-dd HH: ss a').format(dateTime)
      ;
    }
  }

  String getTime(TimeOfDay tod) {
    final now = DateTime.now();

    final dt = DateTime(now.year, now.month, now.day, tod.hour, tod.minute);
    final format = DateFormat.jm();
    return format.format(dt);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date Timer Picker'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  _selectDate(context);
                  showDate = true;
                },
                child: const Text('Date Picker'),
              ),
            ),
            showDate ? Center(child: Text(getDate())) : const SizedBox(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  _selectTime(context);
                  showTime = true;
                },
                child: const Text('Timer Picker'),
              ),
            ),
            showTime
                ? Center(child: Text(getTime(selectedTime)))
                : const SizedBox(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  _selectDateTime(context);
                  showDateTime = true;
                },
                child: const Text('Select Day and Time'),
              ),
            ),
            showDateTime
                ? Center(child: Text(getDateTime()))
          //  Center(child: Text(getDateTime()))
                : const SizedBox(),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 18,
                  width: MediaQuery.of(context).size.width / 4,
                  child: TextButton(


                    onPressed: () {
                      DatePicker.showDatePicker(context,
                          theme: const DatePickerTheme(
                            containerHeight: 200.0,
                          ),
                          showTitleActions: true,
                          minTime: DateTime(2000, 01, 01),
                          maxTime: DateTime(2022, 12, 31), onConfirm: (date) {
                            print('confirm $date');
                            _date = '${date.year} - ${date.month} - ${date.day}';
                            setState(() {

                              final DateFormat formatter = DateFormat('dd-MM-yyyy');
                              // final DateFormat formatter = DateFormat('yyyy-MM-dd');
                              final String formatted = formatter.format(date);
                              print(formatted);
                              //  DateTime  = dateFormat.parse("2019-07-19 8:40:23");
                              _date='$formatted';
                            });
                          },
                          currentTime: DateTime.now(), locale: LocaleType.en);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height / 19, //height
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    " $_date",
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 12.0),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    // color: Colors.white,
                  ),
                ),




              ],
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  TimeAndDatePicker()),
              );
            }, child: Text("old"))

          ],
        ),
      ),
    );
  }
}



class CustomPicker extends CommonPickerModel {
  String digits(int value, int length) {
    return '$value'.padLeft(length, "0");
  }

  CustomPicker({DateTime? currentTime, LocaleType? locale})
      : super(locale: locale) {
    this.currentTime = currentTime ?? DateTime.now();
    this.setLeftIndex(this.currentTime.hour);
    this.setMiddleIndex(this.currentTime.minute);
    this.setRightIndex(this.currentTime.second);
  }

  @override
  String? leftStringAtIndex(int index) {
    if (index >= 0 && index < 24) {
      return this.digits(index, 2);
    } else {
      return null;
    }
  }

  @override
  String? middleStringAtIndex(int index) {
    if (index >= 0 && index < 60) {
      return this.digits(index, 2);
    } else {
      return null;
    }
  }

  @override
  String? rightStringAtIndex(int index) {
    if (index >= 0 && index < 60) {
      return this.digits(index, 2);
    } else {
      return null;
    }
  }

  @override
  String leftDivider() {
    return "|";
  }

  @override
  String rightDivider() {
    return "|";
  }

  @override
  List<int> layoutProportions() {
    return [1, 2, 1];
  }

  @override
  DateTime finalTime() {
    return currentTime.isUtc
        ? DateTime.utc(
        currentTime.year,
        currentTime.month,
        currentTime.day,
        this.currentLeftIndex(),
        this.currentMiddleIndex(),
        this.currentRightIndex())
        : DateTime(
        currentTime.year,
        currentTime.month,
        currentTime.day,
        this.currentLeftIndex(),
        this.currentMiddleIndex(),
        this.currentRightIndex());
  }
}

class TimeAndDatePicker extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Datetime Picker'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextButton(
                onPressed: () {
                  DatePicker.showDatePicker(context,
                      showTitleActions: true,
                      minTime: DateTime(2018, 3, 5),
                      maxTime: DateTime(2019, 6, 7),
                      theme: const DatePickerTheme(
                          headerColor: Colors.orange,
                          backgroundColor: Colors.blue,
                          itemStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                          doneStyle:
                          TextStyle(color: Colors.white, fontSize: 16)),
                      onChanged: (date) {
                        print('change $date in time zone ' +
                            date.timeZoneOffset.inHours.toString());
                      }, onConfirm: (date) {
                        print('confirm $date');
                      }, currentTime: DateTime.now(), locale: LocaleType.en);
                },
                child: Text(
                  'show date picker(custom theme &date time range)',
                  style: TextStyle(color: Colors.blue),
                )),
            TextButton(
                onPressed: () {
                  DatePicker.showTimePicker(context, showTitleActions: true,
                      onChanged: (date) {
                        print('change $date in time zone ' +
                            date.timeZoneOffset.inHours.toString());
                      }, onConfirm: (date) {
                        print('confirm $date');
                      }, currentTime: DateTime.now());
                },
                child: Text(
                  'show time picker',
                  style: TextStyle(color: Colors.blue),
                )),
            TextButton(
                onPressed: () {
                  DatePicker.showTime12hPicker(context, showTitleActions: true,
                      onChanged: (date) {
                        print('change $date in time zone ' +
                            date.timeZoneOffset.inHours.toString());
                      }, onConfirm: (date) {
                        print('confirm $date');
                      }, currentTime: DateTime.now());
                },
                child: Text(
                  'show 12H time picker with AM/PM',
                  style: TextStyle(color: Colors.blue),
                )),
            TextButton(
                onPressed: () {
                  DatePicker.showDateTimePicker(context,
                      showTitleActions: true,
                      minTime: DateTime(2020, 5, 5, 20, 50),
                      maxTime: DateTime(2020, 6, 7, 05, 09), onChanged: (date) {
                        print('change $date in time zone ' +
                            date.timeZoneOffset.inHours.toString());
                      }, onConfirm: (date) {
                        print('confirm $date');
                      }, locale: LocaleType.zh);
                },
                child: Text(
                  'show date time picker (Chinese)',
                  style: TextStyle(color: Colors.blue),
                )),
            TextButton(
                onPressed: () {
                  DatePicker.showDateTimePicker(context, showTitleActions: true,
                      onChanged: (date) {
                        print('change $date in time zone ' +
                            date.timeZoneOffset.inHours.toString());
                      }, onConfirm: (date) {
                        print('confirm $date');
                      }, currentTime: DateTime(2008, 12, 31, 23, 12, 34));
                },
                child: Text(
                  'show date time picker (English-America)',
                  style: TextStyle(color: Colors.blue),
                )),
            TextButton(
                onPressed: () {
                  DatePicker.showDateTimePicker(context, showTitleActions: true,
                      onChanged: (date) {
                        print('change $date in time zone ' +
                            date.timeZoneOffset.inHours.toString());
                      }, onConfirm: (date) {
                        print('confirm $date');
                      },
                      currentTime: DateTime(2008, 12, 31, 23, 12, 34),
                      locale: LocaleType.en);
                },
                child: Text(
                  'show date time picker (Dutch)',
                  style: TextStyle(color: Colors.blue),
                )),
            TextButton(
                onPressed: () {
                  DatePicker.showDateTimePicker(context, showTitleActions: true,
                      onChanged: (date) {
                        print('change $date in time zone ' +
                            date.timeZoneOffset.inHours.toString());
                      }, onConfirm: (date) {
                        print('confirm $date');
                      },
                      currentTime: DateTime(2008, 12, 31, 23, 12, 34),
                      locale: LocaleType.ru);
                },
                child: Text(
                  'show date time picker (Russian)',
                  style: TextStyle(color: Colors.blue),
                )),
            TextButton(
                onPressed: () {
                  DatePicker.showDateTimePicker(context, showTitleActions: true,
                      onChanged: (date) {
                        print('change $date in time zone ' +
                            date.timeZoneOffset.inHours.toString());
                      }, onConfirm: (date) {
                        print('confirm $date');
                      },
                      currentTime: DateTime.utc(2019, 12, 31, 23, 12, 34),
                      locale: LocaleType.de);
                },
                child: Text(
                  'show date time picker in UTC (German)',
                  style: TextStyle(color: Colors.blue),
                )),
            TextButton(
                onPressed: () {
                  DatePicker.showPicker(context, showTitleActions: true,
                      onChanged: (date) {
                        print('change $date in time zone ' +
                            date.timeZoneOffset.inHours.toString());
                      }, onConfirm: (date) {
                        print('confirm $date');
                      },
                      pickerModel: CustomPicker(currentTime: DateTime.now()),
                      locale: LocaleType.en);
                },
                child: Text(
                  'show custom time picker,\nyou can custom picker model like this',
                  style: TextStyle(color: Colors.blue),
                )),
          ],
        ),
      ),
    );
  }
}