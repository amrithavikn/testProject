import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import '../decoration.dart';

class Summary extends StatefulWidget {
  const Summary({Key? key}) : super(key: key);

  @override
  State<Summary> createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  String _date = "DD/MM/YYYY";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    DateTime dt = DateTime.now();
    final DateFormat formatter = DateFormat('dd-MM-yyyy');
    final String formatted = formatter.format(dt);
    _date = '$formatted';
  }

  TextEditingController fromDateController = TextEditingController();
  TextEditingController toDateController = TextEditingController();
  FocusNode fromDate = FocusNode();
  FocusNode toDate = FocusNode();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 70),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height / 8,
              width: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: FractionalOffset(0.0, 2.4),
                      end: FractionalOffset(0.4, 0.0),
                      colors: <Color>[Color(0xff92ADEE), Color(0xff0634A1)])),
              child: Container(
                alignment: Alignment.bottomRight,
                height: MediaQuery.of(context).size.height / 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: SvgPicture.asset(
                                'assets/svg/arrow-back.svg',
                                color: const Color(0xffffffff),
                              )),
                          const Text(
                            'Summary',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                          bottomSheet(context);
                      },
                      icon: SvgPicture.asset('assets/svg/filter.svg'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 1.3,
              width: MediaQuery.of(context).size.width / 1.1,
              child: ListView(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 7,

                    color: const Color(0xffF2F3F3),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 40, top: 10, right: 40, bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Gross sale",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff001F68)),
                              ),
                              Text(
                                "Gross sale",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xffA2A2A2)),
                              )
                            ],
                          ),
                         // SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Tax on sales",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff001F68)),
                              ),
                              Text(
                                "Tax on sales",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xffA2A2A2)),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Total sale",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff001F68)),
                              ),
                              Text(
                                "Total sale",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xffA2A2A2)),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    height: MediaQuery.of(context).size.height / 7,

                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 40, top: 10, right: 40, bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Gross return",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff001F68)),
                              ),
                              Text(
                                "Gross return",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xffA2A2A2)),
                              )
                            ],
                          ),
                         // SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Tax on return",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff001F68)),
                              ),
                              Text(
                                "Tax on return",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xffA2A2A2)),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Total return",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff001F68)),
                              ),
                              Text(
                                "Total return",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xffA2A2A2)),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    height: MediaQuery.of(context).size.height / 7,

                    color: const Color(0xffF2F3F3),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 40, top: 10, right: 40, bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Cash Sale",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff001F68)),
                              ),
                              Text(
                                "cash Sale",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xffA2A2A2)),
                              )
                            ],
                          ),
                         // SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Bank sales",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff001F68)),
                              ),
                              Text(
                                "Bank sales",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xffA2A2A2)),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Credit sale",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff001F68)),
                              ),
                              Text(
                                "Credit sale",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xffA2A2A2)),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    height: MediaQuery.of(context).size.height / 9,

                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 40, top: 10, right: 40, bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Cash Receipt",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff001F68)),
                              ),
                              Text(
                                "Cash Receipt",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xffA2A2A2)),
                              )
                            ],
                          ),
                         // SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Bank Receipt",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff001F68)),
                              ),
                              Text(
                                "Bank Receipt",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xffA2A2A2)),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    height: MediaQuery.of(context).size.height / 9,

                    color: const Color(0xffF2F3F3),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 40, top: 10, right: 40, bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Cash Payments",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff001F68)),
                              ),
                              Text(
                                "Cash Payments",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xffA2A2A2)),
                              )
                            ],
                          ),
                         // SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Bank Payments",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff001F68)),
                              ),
                              Text(
                                "Bank Payments",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xffA2A2A2)),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 9,

                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 40, top: 10, right: 40, bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Expense",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff001F68)),
                              ),
                              Text(
                                "Expense",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xffA2A2A2)),
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Net Cash",
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xff000000)),
                              ),
                              Text(
                                "Net Cash",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xffA2A2A2)),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              //   padding: const EdgeInsets.only(left: 8,top: 8,right: 8,bottom: 0),
              child: Container(
                color: Colors.red,
                height: MediaQuery.of(context).size.height / 18,
                width: MediaQuery.of(context).size.width / 1.1,
                child: TextButton(
                  child: const Text(
                    'Print',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  style: TextButton.styleFrom(
                      primary: Color(0xffffffff),
                      backgroundColor: Color(0xff3055AD)),
                  onPressed: () {
                    // print('Pressed');
                  },
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }


  Widget fromDatePicker() {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2.3,
      height: MediaQuery.of(context).size.height / 18,
      child: TextField(
        textAlign: TextAlign.center,

        controller: fromDateController,
        readOnly: true,
        focusNode: fromDate,
        style: const TextStyle(fontSize: 12),
        onEditingComplete: () {
          FocusScope.of(context).requestFocus(toDate);
        },
        decoration: TextFieldStyle.textField(context,
            labelTextStr: "From", hintTextStr: "From"),
        onTap: () {
          _selectDate(context, 1);
        },
      ),
    );
  }

  Widget toDatePicker() {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2.3,
      height: MediaQuery.of(context).size.height / 18,
      child: TextField(
        textAlign: TextAlign.center,
          controller: toDateController,
          readOnly: true,
          focusNode: toDate,
          style: const TextStyle(fontSize: 12),
          onEditingComplete: () {
            FocusScope.of(context).requestFocus();
          },
          decoration: TextFieldStyle.textField(context,
              labelTextStr: "To", hintTextStr: "To"),
          onTap: () {
            _selectDate(context, 2);
          }),
    );
  }

  Future<Null> _selectDate(BuildContext context, type) async {
    DatePicker.showDatePicker(context,
        theme: const DatePickerTheme(
          containerHeight: 200.0,
        ),
        showTitleActions: true,
        minTime: DateTime(2000, 01, 01),
        maxTime: DateTime(2030, 12, 31), onConfirm: (date) {
          print('confirm $date');
          _date = '${date.year} - ${date.month} - ${date.day}';
          setState(() {
            final DateFormat formatter = DateFormat('dd-MM-yyyy');

            final String formatted = formatter.format(date);
            print(formatted);
            _date = '$formatted';
            if (type == 1) {
              fromDateController.text = _date;
            } else if (type == 2) {
              toDateController.text = _date;
            }
          });
        }, currentTime: DateTime.now(), locale: LocaleType.en);
  }

  void bottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter state) {
                return SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'assets/svg/arrow-back.svg',
                                color: Colors.black,
                              )),
                          const Text(
                            "Filter",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [fromDatePicker(), toDatePicker()],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 18,
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: TextButton(
                          child: const Text(
                            'Filter',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          style: TextButton.styleFrom(
                              primary: const Color(0xffffffff),
                              backgroundColor: const Color(0xff00922C)),
                          onPressed: () {
                            Navigator.pop(context);

                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                );
              });
        });
  }
}
