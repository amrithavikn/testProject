import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

import '../decoration.dart';

class SalesOrder extends StatefulWidget {
  const SalesOrder({Key? key}) : super(key: key);

  @override
  State<SalesOrder> createState() => _SalesOrderState();
}

class _SalesOrderState extends State<SalesOrder> {


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
        preferredSize: const Size(double.infinity, 120),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 7,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: FractionalOffset(0.0, 2.4),
                          end: FractionalOffset(0.4, 0.0),
                          colors: <Color>[
                            Color(0xff92ADEE),
                            Color(0xff0634A1)
                      ])),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 5,
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon:
                                  SvgPicture.asset('assets/svg/arrow-back.svg'),
                            ),
                            const Text(
                              'Sales Order',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
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
              ],
            ),
            Positioned(
                top: 80,
                child: Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: const Color(0xffCFCFCF)),
                      color: const Color(0xffFFFFFF),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Container(
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xff0634A1)),
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: const TextField(
                              decoration: InputDecoration(
                                fillColor: Color(0xffF3F3F3),
                                filled: true,
                                hintText: 'Search ',
                                suffixIcon: Icon(Icons.search,
                                    color: Color(0xff5B5A5A)),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                    left: 15, bottom: 13, top: 13, right: 15),
                              ),
                            )))))
          ],
        ),
      ),
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.only(
                  left: 25, bottom: 13, top: 7, right: 25),
              //const EdgeInsets.all(25.0),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 17,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      shape: const Border(
                          bottom: BorderSide(color: Color(0xffD1D1D1))),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "<Voucher No>",
                                  style: TextStyle(color: Color(0xff707070)),
                                ),
                                Text(
                                  '<Customer Name>',
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: const [
                                Text("Total",
                                    style: TextStyle(color: Color(0xff707070))),
                                Text(
                                  "<Total>",
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }))),
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
                            Navigator.pop(context);                          },
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
