import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';


class AddRemindersf extends StatefulWidget {
  const AddRemindersf({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => AddRemindersState();
}

class AddRemindersState extends State<AddRemindersf> {
  Color buttonBgColor1 = Color(0xff1347AF);
  int index=1;
  int selectedValue = 1;
  String _date = "Day,Time";
  TextEditingController _textcontroller = TextEditingController();
  TextEditingController rupeeController = TextEditingController()..text ="₹";
  TextEditingController amountController = TextEditingController()..text ="0";
  bool categoryList = false;

  @override
  void initState() {
    super.initState();
    buttonColor();
    DateTime dt = DateTime.now();
    final DateFormat formatter = DateFormat('dd-MM-yyyy');
    final String formatted = formatter.format(dt);
    _date='$formatted';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     //   backgroundColor: Repository.bgColor(context),
        appBar: AppBar(
        //  backgroundColor: Repository.bgColor(context),
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: SvgPicture.asset(
              'assets/svg/arrow-back.svg',
            //  color: Repository.iconColor(context),
            ),
          ),
          title: Text(
            'Add Reminders',
            style: TextStyle(
             // color: Repository.textColor(context),
              fontSize: 18,
            ),
          ),
        ),
        body: Center(
            child: Container(
              width: MediaQuery.of(context).size.width / 1.1,

              child: ListView(children: [

                Container(
                  height: MediaQuery.of(context).size.height / 18, //height of button
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height /
                            18, //height of button
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: TextButton(
                          style: TextButton.styleFrom(

                           // primary: Repository.textColor(context),
                            backgroundColor: index ==1?Color(0xff1347AF): buttonBgColor1,
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            setState(() {
                              index=1;
                              // buttonBgColor1=Color(0xff1347AF);
                              // buttonBgColor2=Color(0xff171717);
                            });
                          },
                          child: Text(
                            "Income",
                            style: TextStyle(
                               // color: Styles.textColor,
                                fontSize: 12),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height /
                            18, //height of button
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: TextButton(
                          style: TextButton.styleFrom(
                          //  primary: Repository.textColor(context),
                            backgroundColor: index ==2?Color(0xff1347AF): buttonBgColor1,
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            setState(() {
                              index=2;
                              // buttonBgColor2=Color(0xff1347AF);
                              // buttonBgColor1=Color(0xff171717);
                            });
                          },
                          child: Text(
                            "Expenses",
                            style: TextStyle
                              (
                              //  color: Styles.textColor,
                                fontSize: 12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                //  color: Repository.textField(context),
                  padding: EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height / 19,
                  //height of button
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: Text(
                    'Reminder Title',
                    style: TextStyle(
                       // color: Repository.textColor(context),
                        fontSize: 13),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height:
                  MediaQuery.of(context).size.height / 17, //height of button
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.centerRight,
                        height: MediaQuery.of(context).size.height / 18, //height of button
                        width: MediaQuery.of(context).size.width / 14,
                        child: TextField(
                          readOnly: true,
                          controller: rupeeController,
                          style: TextStyle(
                            //  color:Repository.textColor(context),
                              fontSize: 30),
                          decoration:   InputDecoration(
                              contentPadding: EdgeInsets.all(4),
                              enabledBorder: InputBorder.none,
                              border: OutlineInputBorder(),
                              focusedBorder: InputBorder.none,
                              hintText: '₹',
                              hintStyle: TextStyle(
                                 // color: Repository.textColor(context)
                              )
                          ),
                        ),
                      ),



                      Container(
                        alignment: Alignment.centerRight,
                        height: MediaQuery.of(context).size.height / 18, //height of button
                        width: MediaQuery.of(context).size.width / 6,
                        child: TextField(
                          controller: amountController,
                          // allow user to enter 5 line in textfield
                          keyboardType: TextInputType.number,
                          // user keyboard will have a button to move cursor to next line

                          style: TextStyle(
                             // color:Styles.textColor2,
                              fontSize: 30),
                          decoration:   InputDecoration(
                              contentPadding: EdgeInsets.all(4),
                              enabledBorder: InputBorder.none,
                              border: OutlineInputBorder(),
                              focusedBorder: InputBorder.none,
                              hintText: '0',
                              hintStyle: TextStyle(
                                 // color: Styles.textColor2
                              )
                          ),
                        ),
                      )
                      // Text(
                      //   "0",
                      //   style: TextStyle(color: Styles.textColor2, fontSize: 35),
                      // ),
                    ],
                  ),
                ),
                Container(
                    height:
                    MediaQuery.of(context).size.height / 18, //height of button
                    width: MediaQuery.of(context).size.width / 1.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.height /
                              18, //height of button
                          width: MediaQuery.of(context).size.width / 5,
                          child: Text(
                            'Frequency',
                            style: TextStyle( fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                               // color: Repository.textColor(context),
                                fontSize: 12.5),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                                alignment: Alignment.center,
                                height: MediaQuery.of(context).size.height /
                                    18, //height of button
                                width: MediaQuery.of(context).size.width / 6,
                                child: Text(
                                  'Monthly',
                                  style: TextStyle(
                                     // color: Repository.textColor(context),
                                      fontSize: 13),
                                )),
                            Container(
                              //when clicking this icon change the frequency
                                height: MediaQuery.of(context).size.height /
                                    18, //height of button
                                width: MediaQuery.of(context).size.width / 14,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_forward_ios,
                                     // color: Repository.iconColor(context),
                                      size: 20,
                                    )))
                          ],
                        ),
                      ],
                    )),
                Container(
                    height:
                    MediaQuery.of(context).size.height / 18, //height of button
                    width: MediaQuery.of(context).size.width / 1.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.height /
                              18, //height of button
                          width: MediaQuery.of(context).size.width / 10,
                          child: Text(
                            'Every',
                            style: TextStyle(fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              //  color: Repository.textColor(context),
                                fontSize: 12.5),
                          ),
                        ),
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
                                                  //  color: Styles.textColor2,
                                                    fontSize: 12.0),
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



                            Container(
                                height: MediaQuery.of(context).size.height /
                                    18, //height of button
                                width: MediaQuery.of(context).size.width / 14,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.arrow_forward_ios,
                                      //  color: Repository.iconColor(context),
                                        size: 18)))
                          ],
                        ),
                      ],
                    )),
                Container(
                    height:
                    MediaQuery.of(context).size.height / 18, //height of button
                    width: MediaQuery.of(context).size.width / 1.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.height /
                              18, //height of button
                          width: MediaQuery.of(context).size.width / 2.6,
                          child: Text(
                            'Stop Repeating After',
                            style: TextStyle(fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              //  color: Repository.textColor(context),
                                fontSize: 12.5),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                                alignment: Alignment.center,
                                height: MediaQuery.of(context).size.height /
                                    18, //height of button
                                width: MediaQuery.of(context).size.width / 9,
                                child: Text(
                                  'Count',
                                  style: TextStyle(
                                      //color: Repository.textColor(context),
                                      fontSize: 12.5),
                                )),
                            Container(
                                height: MediaQuery.of(context).size.height /
                                    18, //height of button
                                width: MediaQuery.of(context).size.width / 14,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.arrow_forward_ios,
                                       // color: Repository.iconColor(context),
                                        size: 20)))
                          ],
                        ),
                      ],
                    )),
                Container(decoration: BoxDecoration(
                    border: Border.all(
                       // color: Repository.borderColor(context)
                    )
                    ,
                   // color: Repository.bgColor(context)
                ),
                  ///dec
                  height: MediaQuery.of(context).size.height / 6, //height of button
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height /
                            20, //height of button
                        width: MediaQuery.of(context).size.width / 1.15,
                        child: Text(
                          'Select Category',
                          style: TextStyle(fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                             // color: Repository.textColor(context),
                              fontSize: 14),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height /
                            18, //height of button
                        width: MediaQuery.of(context).size.width / 1.2,
                       // color: Repository.textField(context),
                        child: ListTile(
                          onTap: () {
                            setState(() {
                              categoryList = true;
                            });
                          },
                       //   tileColor:                            Repository.textField(context),
                          title: Text(
                            'Select Category',
                            style: TextStyle(fontSize: 12,
                             //   color: Styles.textColor2
                            ),
                          ),
                        ),
                      ),
                      categoryList == true
                          ? Container(
                          height: MediaQuery.of(context).size.height /
                              17, //height of button
                          width: MediaQuery.of(context).size.width / 1.1,
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: 7,
                              itemBuilder: (BuildContext context, int index) {
                                return ListTile(
                                  onTap: () {
                                    setState(() {
                                      categoryList = false;
                                    });
                                  },
                                  title: Text(
                                    'Food',
                                    style: TextStyle(
                                      //  color: Repository.textColor(context)
                                    ),
                                  ),
                                );
                              }))
                          : Container(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  height: MediaQuery.of(context).size.height / 15, //height of button
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: Text(
                    'Notes',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                       // color: Repository.textColor(context),
                        fontSize: 13),
                  ),
                ),
                Container(
               //   color: Repository.textField(context),
                  height: MediaQuery.of(context).size.height / 7, //height of button
                  width: MediaQuery.of(context).size.width / 1.1,

                  child: TextField(
                    minLines: 1,
                    maxLines: 5,
                    // allow user to enter 5 line in textfield
                    keyboardType: TextInputType.multiline,
                    // user keyboard will have a button to move cursor to next line
                    controller: _textcontroller,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                    style: TextStyle(
                       // color: Repository.textColor(context)
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 13,
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height /
                            13, //height of button
                        width: MediaQuery.of(context).size.width / 4,
                        decoration:  BoxDecoration(
                        //  color: Styles.green,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                            categoryList = false;
                          },
                          icon: const Icon(
                            Icons.check,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            )));
  }
  buttonColor() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var p = prefs.getBool('isDark') ?? true;
    print(p);

    setState(() {
      if (p == true){
        buttonBgColor1 = Color(0xff171717);

      }
      else{
        //buttonBgColor1=Color(0xff1347AF);
        buttonBgColor1=Color(0xffECECEC);

      }
    });

  }
}
