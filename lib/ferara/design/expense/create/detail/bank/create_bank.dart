import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

import '../../../../decoration.dart';
import 'detail/acount_ledger.dart';

class CreateBankExpense extends StatefulWidget {
  const CreateBankExpense({Key? key}) : super(key: key);

  @override
  State<CreateBankExpense> createState() => _CreateCashPaymentState();
}

class _CreateCashPaymentState extends State<CreateBankExpense> {
  bool voucherNo = false;

  String _date = "DD/MM/YYYY";
  TextEditingController accountLedgerController = TextEditingController();
  TextEditingController balanceController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController discountController = TextEditingController();
  TextEditingController netAmountController = TextEditingController();
  TextEditingController noteController = TextEditingController();

  FocusNode accountLedger = FocusNode();
  FocusNode balance = FocusNode();
  FocusNode amount = FocusNode();
  FocusNode discount = FocusNode();
  FocusNode netAmount = FocusNode();
  FocusNode note = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    DateTime dt = DateTime.now();
    final DateFormat formatter = DateFormat('dd-MM-yyyy');
    final String formatted = formatter.format(dt);
    _date = '$formatted';
  }

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
                      colors: <Color>[
                        Color(0xff92ADEE),
                        Color(0xff0634A1)

                      ] )

              ),
              //     padding: const EdgeInsets.all(10),
              child: Container(
                alignment: Alignment.bottomRight,
                height: MediaQuery.of(context).size.height / 10,
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
                      'New Bank Payment',
                      style: TextStyle(color: Colors.white, fontSize: 20),
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
              padding: const EdgeInsets.only(
                  left: 25, bottom: 13, top: 7, right: 25),
              //const EdgeInsets.all(25.0),
              child: ListView(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 1.3,
                    width: MediaQuery.of(context).size.width / 1.1,
                    child: ListView(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 18,
                          width: MediaQuery.of(context).size.width / 1.1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    //  width: MediaQuery.of(context).size.width / 4.7,
                                      child: const Text(
                                        "Voucher No:",
                                      )),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    //   width: MediaQuery.of(context).size.width / 8,
                                    child: const Text(
                                      "sd934",
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                  width:
                                  MediaQuery.of(context).size.width / 2.3,
                                  height:
                                  MediaQuery.of(context).size.height / 20,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        height: MediaQuery.of(context).size.height / 19,
                                        child: const Text(
                                          "Date:",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      datePicker(),

                                    ],
                                  ))
                            ],
                          ),
                        ),
                        accountLedgerDetail(),
                        const SizedBox(
                          height: 10,
                        ),
                        balanceAndAmount(),
                        const SizedBox(
                          height: 10,
                        ),
                        discountAndNetAmount(),
                        const SizedBox(
                          height: 10,
                        ),
                        grandTotal(),
                        const SizedBox(
                          height: 10,
                        ),
                        noteDetail(),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 18,
                    width: MediaQuery.of(context).size.width / 1.1,
                    child: TextButton(
                      child: const Text(
                        'Save',
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                      style: TextButton.styleFrom(
                          primary: const Color(0xffffffff),
                          backgroundColor: const Color(0xff00922C)),
                      onPressed: () {
                        // print('Pressed');
                      },
                    ),
                  ),
                ],
              ))),
    );
  }

  Widget datePicker() {
    return  Container(
      width: MediaQuery.of(context).size.width / 2.9,
      height: MediaQuery.of(context).size.height / 19,
      child: TextField(
        textAlign: TextAlign.center,
        readOnly: true,
        decoration: InputDecoration(
          suffixIcon: const Icon(
            Icons.calendar_today,
            color: Color(0xff000000),
          ),
          border: InputBorder.none,
          hintText: _date,
          hintStyle: const TextStyle(
            color: Color(0xff000000),
            fontSize: 15,
          ),
        ),
        onTap: () {
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
                  //
                  final DateFormat formatter = DateFormat('dd-MM-yyyy');
                  final String formatted = formatter.format(date);
                  print(formatted);
                  _date = '$formatted';
                });
              }, currentTime: DateTime.now(), locale: LocaleType.en);
        },
      ),
    );
  }

  Widget accountLedgerDetail() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 20,
      child: TextField(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SelectExpenseAccountLedger()),
            );
          },
          controller: accountLedgerController,
          focusNode: accountLedger,
          onEditingComplete: () {
            FocusScope.of(context).requestFocus(balance);
          },
          readOnly: true,
          textCapitalization: TextCapitalization.words,
          keyboardType: TextInputType.text,
          decoration: TextFieldStyle.textFieldIcon(context,
              labelTextStr: "Account Ledger", hintTextStr: "Account Ledger")),
    );
  }

  Widget balanceAndAmount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
            width: MediaQuery.of(context).size.width / 2.5,
            height: MediaQuery.of(context).size.height / 20,
            child: TextField(
                controller: balanceController,
                focusNode: balance,
                onEditingComplete: () {
                  FocusScope.of(context).requestFocus(amount);
                },
                onTap: () {},
                keyboardType: TextInputType.number,
                decoration: TextFieldStyle.textField(context,
                    hintTextStr: "Balance", labelTextStr: "Balance"))),
        SizedBox(
          width: MediaQuery.of(context).size.width / 2.5,
          height: MediaQuery.of(context).size.height / 20,
          child: TextField(
              controller: amountController,
              focusNode: amount,
              onEditingComplete: () {
                FocusScope.of(context).requestFocus(discount);
              },
              onTap: () {},
              textCapitalization: TextCapitalization.words,
              keyboardType: TextInputType.number,
              decoration: TextFieldStyle.textField(context,
                  hintTextStr: "Amount", labelTextStr: "Amount")),
        ),
      ],
    );
  }

  Widget discountAndNetAmount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
            width: MediaQuery.of(context).size.width / 2.5,
            height: MediaQuery.of(context).size.height / 20,
            child: TextField(
                controller: discountController,
                focusNode: discount,
                onEditingComplete: () {
                  FocusScope.of(context).requestFocus(netAmount);
                },
                onTap: () {},
                textCapitalization: TextCapitalization.words,
                keyboardType: TextInputType.number,
                decoration: TextFieldStyle.textField(context,
                    hintTextStr: "Discount", labelTextStr: "Discount"))),
        SizedBox(
          width: MediaQuery.of(context).size.width / 2.5,
          height: MediaQuery.of(context).size.height / 20,
          child: TextField(
              controller: netAmountController,
              focusNode: netAmount,
              onEditingComplete: () {
                FocusScope.of(context).requestFocus(note);
              },
              onTap: () {},
              textCapitalization: TextCapitalization.words,
              keyboardType: TextInputType.number,
              decoration: TextFieldStyle.textField(context,
                  hintTextStr: "Net Amount", labelTextStr: "Net Amount")),
        ),
      ],
    );
  }

  Widget grandTotal() {
    return Padding(
      padding: const EdgeInsets.only(left: 11, top: 8, right: 11, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Grand Total:",
            style: TextStyle(color: Color(0xff1A9C01)),
          ),
          Text(
            "1000.00",
            style: TextStyle(color: Color(0xff1A9C01)),
          )
        ],
      ),
    );
  }

  Widget noteDetail() {
    return SizedBox(
        width: MediaQuery.of(context).size.width / 1.1,
        height: MediaQuery.of(context).size.height / 9,
        child: TextField(
            style: const TextStyle(
              decoration: TextDecoration.none,
            ),
            enableSuggestions: false,
            autocorrect: false,
            controller: noteController,
            focusNode: note,
            onTap: () {},
            minLines: 1,
            maxLines: 5,
            textCapitalization: TextCapitalization.words,
            keyboardType: TextInputType.text,
            decoration: TextFieldStyle.textField(context,
                hintTextStr: "Notes", labelTextStr: "Notes")));
  }
}

