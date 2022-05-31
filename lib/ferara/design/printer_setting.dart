import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class PrinterSetting extends StatefulWidget {
  const PrinterSetting({Key? key}) : super(key: key);

  @override
  State<PrinterSetting> createState() => _PrinterSettingState();
}

class _PrinterSettingState extends State<PrinterSetting> {
  bool bluetooth = false;
  bool slNO = false;
  bool productCode = false;
  bool productName = false;
  bool productDescription = false;
  bool description = false;
  bool serialNo = false;
  bool itemCode = false;
  bool hsnCode = false;
  bool quantity = false;
  bool unit = false;
  bool rate = false;
  bool tax = false;
  bool discount = false;
  bool tenderCash = false;
  Color template1Color = const Color(0xff009253);
  Color template2Color = const Color(0xffFFFFFF);
  Color template3Color = const Color(0xffFFFFFF);
  Color template4Color = const Color(0xffFFFFFF);
  Color template5Color = const Color(0xffFFFFFF);
  Color template1Text = const Color(0xffffffff);
  Color template2Text = const Color(0xffC8C8C8);
  Color template3Text = const Color(0xffC8C8C8);
  Color template4Text = const Color(0xffC8C8C8);
  Color template5Text = const Color(0xffC8C8C8);
  TextEditingController heading1Controller = TextEditingController();
  TextEditingController heading2Controller = TextEditingController();
  TextEditingController heading3Controller = TextEditingController();
  TextEditingController heading4Controller = TextEditingController();
  TextEditingController noteController = TextEditingController();
  TextEditingController termsController = TextEditingController();
  FocusNode head1FocusNode = FocusNode();
  FocusNode head2FocusNode = FocusNode();
  FocusNode head3FocusNode = FocusNode();
  FocusNode head4FocusNode = FocusNode();
  FocusNode notesFocusNode = FocusNode();
  FocusNode termsFocusNode = FocusNode();

  int templateIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 75),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  height: MediaQuery.of(context).size.height / 8,
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
                    //mainAxisAlignment: MainAxisAlignment.c,
                    children: const [
                      Text(
                        'Printer Settings',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 13, bottom: 13, top: 7, right: 13),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 1.3,
              child: ListView(
                children: [
                  bluetoothPrinter(),
                  const SizedBox(
                    height: 10,
                  ),
                  templateView(),
                  const SizedBox(
                    height: 10,
                  ),
                  previewButton(),
                  const SizedBox(
                    height: 10,
                  ),
                  heading1Detail(),
                  const SizedBox(
                    height: 10,
                  ),
                  heading2Detail(),
                  const SizedBox(
                    height: 10,
                  ),
                  heading3Detail(),
                  const SizedBox(
                    height: 10,
                  ),
                  heading4Detail(),
                  const SizedBox(
                    height: 10,
                  ),
                  serialNumberDetail(),
                  const SizedBox(
                    height: 10,
                  ),
                  productCodeDetail(),
                  const SizedBox(
                    height: 10,
                  ),
                  productNameDetail(),
                  const SizedBox(
                    height: 10,
                  ),
                  productDescriptionDetail(),
                  const SizedBox(
                    height: 10,
                  ),
                  descriptionDetail(),
                  const SizedBox(
                    height: 10,
                  ),
                  serialNoDetail(),
                  const SizedBox(
                    height: 10,
                  ),
                  itemCodeDetail(),
                  const SizedBox(
                    height: 10,
                  ),
                  hsnCodeDetail(),
                  const SizedBox(
                    height: 10,
                  ),
                  quantityDetail(),
                  const SizedBox(
                    height: 10,
                  ),
                  rateDetail(),
                  const SizedBox(
                    height: 10,
                  ),
                  unitDetail(),
                  const SizedBox(
                    height: 10,
                  ),
                  taxDetail(),
                  const SizedBox(
                    height: 10,
                  ),
                  discountDetail(),
                  const SizedBox(
                    height: 10,
                  ),
                  pageDetail(),
                  const SizedBox(
                    height: 10,
                  ),
                  tenderCashDetail(),
                  const SizedBox(
                    height: 10,
                  ),
                  noteDetail(),
                  const SizedBox(
                    height: 10,
                  ),
                  termsAndCondition(),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            confirmationButtons(),
          ],
        ),

        //const EdgeInsets.all(25.0),
      )),
    );
  }

  Widget bluetoothPrinter() {
    return Container(
        height: MediaQuery.of(context).size.height / 12,
        width: MediaQuery.of(context).size.width / 1.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: const Color(0xffE9E9E9)),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 13, bottom: 0, top: 0, right: 13),
          //  padding: const EdgeInsets.all(6.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Bluetooth thermal printer"),
              FlutterSwitch(
                width: 40.0,
                height: 20.0,
                valueFontSize: 30.0,
                toggleSize: 15.0,
                value: bluetooth,
                borderRadius: 20.0,
                padding: 1.0,
                activeColor: const Color(0xff009253),
                inactiveToggleColor: const Color(0xff009253),
                inactiveColor: const Color(0xffDEDEDE),
                // showOnOff: true,
                onToggle: (val) {
                  setState(() {
                    bluetooth = val;
                  });
                },
              ),
            ],
          ),
        ));
  }

  Widget templateView() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: const Color(0xffEEEEEE),
      ),
      padding: const EdgeInsets.all(6),
      height: MediaQuery.of(context).size.height / 10,
      width: MediaQuery.of(context).size.width / 1.1,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                templateIndex = 1;
                templateViewColor(templateIndex);
              });
            },
            child: Container(
              height: MediaQuery.of(context).size.height / 13,
              width: MediaQuery.of(context).size.width / 5.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: template1Color,
              ),
              alignment: Alignment.center,
              child: Text(
                "1",
                style: TextStyle(
                    color: template1Text,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                templateIndex = 2;
                templateViewColor(templateIndex);
                //templateViewColor=
              });
            },
            child: Container(
              height: MediaQuery.of(context).size.height / 13,
              width: MediaQuery.of(context).size.width / 5.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: template2Color,
              ),
              alignment: Alignment.center,
              child: Text(
                "2",
                style: TextStyle(
                    color: template2Text,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                templateIndex = 3;
                templateViewColor(templateIndex);
                //templateViewColor=
              });
            },
            child: Container(
              height: MediaQuery.of(context).size.height / 13,
              width: MediaQuery.of(context).size.width / 5.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: template3Color,
              ),
              alignment: Alignment.center,
              child: Text(
                "3",
                style: TextStyle(
                    color: template3Text,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                templateIndex = 4;
                templateViewColor(templateIndex);
                //templateViewColor=
              });
            },
            child: Container(
              height: MediaQuery.of(context).size.height / 13,
              width: MediaQuery.of(context).size.width / 5.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: template4Color,
              ),
              alignment: Alignment.center,
              child: Text(
                "4",
                style: TextStyle(
                    color: template4Text,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                templateIndex = 5;
                templateViewColor(templateIndex);
                //templateViewColor=
              });
            },
            child: Container(
              height: MediaQuery.of(context).size.height / 13,
              width: MediaQuery.of(context).size.width / 5.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: template5Color,
              ),
              alignment: Alignment.center,
              child: Text(
                "5",
                style: TextStyle(
                    color: template5Text,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  templateViewColor(int templateIndex) async {
    if (templateIndex == 1) {
      template1Color = const Color(0xff009253);
      template2Color = const Color(0xffFFFFFF);
      template3Color = const Color(0xffFFFFFF);
      template4Color = const Color(0xffFFFFFF);
      template5Color = const Color(0xffFFFFFF);

      template1Text = const Color(0xffffffff);
      template2Text = const Color(0xffC8C8C8);
      template3Text = const Color(0xffC8C8C8);
      template4Text = const Color(0xffC8C8C8);
      template5Text = const Color(0xffC8C8C8);
    } else if (templateIndex == 2) {
      template1Color = const Color(0xffFFFFFF);
      template2Color = const Color(0xff009253);
      template3Color = const Color(0xffFFFFFF);
      template4Color = const Color(0xffFFFFFF);
      template5Color = const Color(0xffFFFFFF);

      template1Text = const Color(0xffC8C8C8);
      template2Text = const Color(0xffffffff);
      template3Text = const Color(0xffC8C8C8);
      template4Text = const Color(0xffC8C8C8);
      template5Text = const Color(0xffC8C8C8);
    } else if (templateIndex == 3) {
      template1Color = const Color(0xffFFFFFF);
      template2Color = const Color(0xffFFFFFF);
      template3Color = const Color(0xff009253);
      template4Color = const Color(0xffFFFFFF);
      template5Color = const Color(0xffFFFFFF);

      template1Text = const Color(0xffC8C8C8);
      template2Text = const Color(0xffC8C8C8);
      template3Text = const Color(0xffffffff);
      template4Text = const Color(0xffC8C8C8);
      template5Text = const Color(0xffC8C8C8);
    } else if (templateIndex == 4) {
      template1Color = const Color(0xffFFFFFF);
      template2Color = const Color(0xffFFFFFF);
      template3Color = const Color(0xffFFFFFF);
      template4Color = const Color(0xff009253);
      template5Color = const Color(0xffFFFFFF);

      template1Text = const Color(0xffC8C8C8);
      template2Text = const Color(0xffC8C8C8);
      template3Text = const Color(0xffC8C8C8);
      template4Text = const Color(0xffffffff);
      template5Text = const Color(0xffC8C8C8);
    } else if (templateIndex == 5) {
      template1Color = const Color(0xffFFFFFF);
      template2Color = const Color(0xffFFFFFF);
      template3Color = const Color(0xffFFFFFF);
      template4Color = const Color(0xffFFFFFF);
      template5Color = const Color(0xff009253);

      template1Text = const Color(0xffC8C8C8);
      template2Text = const Color(0xffC8C8C8);
      template3Text = const Color(0xffC8C8C8);
      template4Text = const Color(0xffC8C8C8);
      template5Text = const Color(0xffffffff);
    }
  }

  Widget previewButton() {
    return Padding(
      padding:
          const EdgeInsets.only(left: 8.0, top: 0.0, right: 8.0, bottom: 0),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: const Color(0xff202020),
          ),
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height / 17,
          child: const Text(
            'Preview',
            style: TextStyle(
              color: Color(0xffFFFFFF),
            ),
          )),
    );
  }

  Widget heading1Detail() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 20,
      child: TextField(
        textCapitalization: TextCapitalization.words,
        keyboardType: TextInputType.text,
        controller: heading1Controller,
        focusNode: head1FocusNode,
        onEditingComplete: () {
          FocusScope.of(context).requestFocus(head2FocusNode);
        },
        style: const TextStyle(color: Color(0xff000000)),
        decoration: const InputDecoration(
          filled: true,
          fillColor: Color(0xffF1F1F1),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Color(0xffF1F1F1)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Color(0xffF1F1F1)),
          ),
          contentPadding: EdgeInsets.all(7),
          hintText: "Heading 1",
          hintStyle: TextStyle(
            color: Color(0xff000000),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget heading2Detail() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 20,
      child: TextField(
        textCapitalization: TextCapitalization.words,
        keyboardType: TextInputType.text,
        controller: heading2Controller,
        focusNode: head2FocusNode,
        onEditingComplete: () {
          FocusScope.of(context).requestFocus(head3FocusNode);
        },
        style: const TextStyle(color: Color(0xff000000)),
        decoration: const InputDecoration(
          filled: true,
          fillColor: Color(0xffF1F1F1),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Color(0xffF1F1F1)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Color(0xffF1F1F1)),
          ),
          contentPadding: EdgeInsets.all(7),
          hintText: "Heading 2",
          hintStyle: TextStyle(
            color: Color(0xff000000),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget heading3Detail() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 20,
      child: TextField(
        textCapitalization: TextCapitalization.words,
        keyboardType: TextInputType.text,
        controller: heading3Controller,
        focusNode: head3FocusNode,
        onEditingComplete: () {
          FocusScope.of(context).requestFocus(head4FocusNode);
        },
        style: const TextStyle(color: Color(0xff000000)),
        decoration: const InputDecoration(
          filled: true,
          fillColor: Color(0xffF1F1F1),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Color(0xffF1F1F1)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Color(0xffF1F1F1)),
          ),
          contentPadding: EdgeInsets.all(7),
          hintText: "Heading 3",
          hintStyle: TextStyle(
            color: Color(0xff000000),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget heading4Detail() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 20,
      child: TextField(
        textCapitalization: TextCapitalization.words,
        keyboardType: TextInputType.text,
        controller: heading4Controller,
        focusNode: head4FocusNode,
        onEditingComplete: () {
          //  FocusScope.of(context).requestFocus(head2FocusNode);
        },
        style: const TextStyle(color: Color(0xff000000)),
        decoration: const InputDecoration(
          filled: true,
          fillColor: Color(0xffF1F1F1),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Color(0xffF1F1F1)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Color(0xffF1F1F1)),
          ),
          contentPadding: EdgeInsets.all(7),
          hintText: "Heading 4",
          hintStyle: TextStyle(
            color: Color(0xff000000),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget serialNumberDetail() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 30,
      child: Padding(
        padding: const EdgeInsets.only(left: 12, bottom: 0, top: 0, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "SI No",
            ),
            FlutterSwitch(
              width: 40.0,
              height: 20.0,
              valueFontSize: 30.0,
              toggleSize: 15.0,
              value: slNO,
              borderRadius: 20.0,
              padding: 1.0,
              activeColor: const Color(0xff009253),
              inactiveToggleColor: const Color(0xff009253),
              inactiveColor: const Color(0xffDEDEDE),
              // showOnOff: true,
              onToggle: (val) {
                setState(() {
                  slNO = val;
                  // generalSwitch(index);
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget productCodeDetail() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 30,
      child: Padding(
        padding: const EdgeInsets.only(left: 12, bottom: 0, top: 0, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Product Code",
            ),
            FlutterSwitch(
              width: 40.0,
              height: 20.0,
              valueFontSize: 30.0,
              toggleSize: 15.0,
              value: productCode,
              borderRadius: 20.0,
              padding: 1.0,
              activeColor: const Color(0xff009253),
              inactiveToggleColor: const Color(0xff009253),
              inactiveColor: const Color(0xffDEDEDE),
              // showOnOff: true,
              onToggle: (val) {
                setState(() {
                  productCode = val;
                  // generalSwitch(index);
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget productNameDetail() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 30,
      child: Padding(
        padding: const EdgeInsets.only(left: 12, bottom: 0, top: 0, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Product Name",
            ),
            FlutterSwitch(
              width: 40.0,
              height: 20.0,
              valueFontSize: 30.0,
              toggleSize: 15.0,
              value: productName,
              borderRadius: 20.0,
              padding: 1.0,
              activeColor: const Color(0xff009253),
              inactiveToggleColor: const Color(0xff009253),
              inactiveColor: const Color(0xffDEDEDE),
              // showOnOff: true,
              onToggle: (val) {
                setState(() {
                  productName = val;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget productDescriptionDetail() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 30,
      child: Padding(
        padding: const EdgeInsets.only(left: 12, bottom: 0, top: 0, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Product Description",
            ),
            FlutterSwitch(
              width: 40.0,
              height: 20.0,
              valueFontSize: 30.0,
              toggleSize: 15.0,
              value: productDescription,
              borderRadius: 20.0,
              padding: 1.0,
              activeColor: const Color(0xff009253),
              inactiveToggleColor: const Color(0xff009253),
              inactiveColor: const Color(0xffDEDEDE),
              // showOnOff: true,
              onToggle: (val) {
                setState(() {
                  productDescription = val;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget descriptionDetail() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 30,
      child: Padding(
        padding: const EdgeInsets.only(left: 12, bottom: 0, top: 0, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Description",
            ),
            FlutterSwitch(
              width: 40.0,
              height: 20.0,
              valueFontSize: 30.0,
              toggleSize: 15.0,
              value: description,
              borderRadius: 20.0,
              padding: 1.0,
              activeColor: const Color(0xff009253),
              inactiveToggleColor: const Color(0xff009253),
              inactiveColor: const Color(0xffDEDEDE),
              // showOnOff: true,
              onToggle: (val) {
                setState(() {
                  description = val;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget serialNoDetail() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 30,
      child: Padding(
        padding: const EdgeInsets.only(left: 12, bottom: 0, top: 0, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Serial No",
            ),
            FlutterSwitch(
              width: 40.0,
              height: 20.0,
              valueFontSize: 30.0,
              toggleSize: 15.0,
              value: serialNo,
              borderRadius: 20.0,
              padding: 1.0,
              activeColor: const Color(0xff009253),
              inactiveToggleColor: const Color(0xff009253),
              inactiveColor: const Color(0xffDEDEDE),
              onToggle: (val) {
                setState(() {
                  serialNo = val;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget itemCodeDetail() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 30,
      child: Padding(
        padding: const EdgeInsets.only(left: 12, bottom: 0, top: 0, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Item Code",
            ),
            FlutterSwitch(
              width: 40.0,
              height: 20.0,
              valueFontSize: 30.0,
              toggleSize: 15.0,
              value: itemCode,
              borderRadius: 20.0,
              padding: 1.0,
              activeColor: const Color(0xff009253),
              inactiveToggleColor: const Color(0xff009253),
              inactiveColor: const Color(0xffDEDEDE),
              onToggle: (val) {
                setState(() {
                  itemCode = val;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget hsnCodeDetail() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 30,
      child: Padding(
        padding: const EdgeInsets.only(left: 12, bottom: 0, top: 0, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "HSN Code",
            ),
            FlutterSwitch(
              width: 40.0,
              height: 20.0,
              valueFontSize: 30.0,
              toggleSize: 15.0,
              value: hsnCode,
              borderRadius: 20.0,
              padding: 1.0,
              activeColor: const Color(0xff009253),
              inactiveToggleColor: const Color(0xff009253),
              inactiveColor: const Color(0xffDEDEDE),
              onToggle: (val) {
                setState(() {
                  hsnCode = val;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget quantityDetail() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 30,
      child: Padding(
        padding: const EdgeInsets.only(left: 12, bottom: 0, top: 0, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Quantity",
            ),
            FlutterSwitch(
              width: 40.0,
              height: 20.0,
              valueFontSize: 30.0,
              toggleSize: 15.0,
              value: quantity,
              borderRadius: 20.0,
              padding: 1.0,
              activeColor: const Color(0xff009253),
              inactiveToggleColor: const Color(0xff009253),
              inactiveColor: const Color(0xffDEDEDE),
              onToggle: (val) {
                setState(() {
                  quantity = val;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget rateDetail() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 30,
      child: Padding(
        padding: const EdgeInsets.only(left: 12, bottom: 0, top: 0, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Rate",
            ),
            FlutterSwitch(
              width: 40.0,
              height: 20.0,
              valueFontSize: 30.0,
              toggleSize: 15.0,
              value: rate,
              borderRadius: 20.0,
              padding: 1.0,
              activeColor: const Color(0xff009253),
              inactiveToggleColor: const Color(0xff009253),
              inactiveColor: const Color(0xffDEDEDE),
              onToggle: (val) {
                setState(() {
                  rate = val;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget unitDetail() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 30,
      child: Padding(
        padding: const EdgeInsets.only(left: 12, bottom: 0, top: 0, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Unit",
            ),
            FlutterSwitch(
              width: 40.0,
              height: 20.0,
              valueFontSize: 30.0,
              toggleSize: 15.0,
              value: unit,
              borderRadius: 20.0,
              padding: 1.0,
              activeColor: const Color(0xff009253),
              inactiveToggleColor: const Color(0xff009253),
              inactiveColor: const Color(0xffDEDEDE),
              onToggle: (val) {
                setState(() {
                  unit = val;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget taxDetail() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 30,
      child: Padding(
        padding: const EdgeInsets.only(left: 12, bottom: 0, top: 0, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Tax",
            ),
            FlutterSwitch(
              width: 40.0,
              height: 20.0,
              valueFontSize: 30.0,
              toggleSize: 15.0,
              value: tax,
              borderRadius: 20.0,
              padding: 1.0,
              activeColor: const Color(0xff009253),
              inactiveToggleColor: const Color(0xff009253),
              inactiveColor: const Color(0xffDEDEDE),
              onToggle: (val) {
                setState(() {
                  tax = val;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget discountDetail() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 30,
      child: Padding(
        padding: const EdgeInsets.only(left: 12, bottom: 0, top: 0, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Discount",
            ),
            FlutterSwitch(
              width: 40.0,
              height: 20.0,
              valueFontSize: 30.0,
              toggleSize: 15.0,
              value: discount,
              borderRadius: 20.0,
              padding: 1.0,
              activeColor: const Color(0xff009253),
              inactiveToggleColor: const Color(0xff009253),
              inactiveColor: const Color(0xffDEDEDE),
              onToggle: (val) {
                setState(() {
                  discount = val;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget pageDetail() {
    return const Padding(
      padding: EdgeInsets.only(left: 12, bottom: 0, top: 0, right: 12),
      child: Text(
        "Page Details",
        style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget tenderCashDetail() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 30,
      child: Padding(
        padding: const EdgeInsets.only(left: 12, bottom: 0, top: 0, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Tender Cash",
            ),
            FlutterSwitch(
              width: 40.0,
              height: 20.0,
              valueFontSize: 30.0,
              toggleSize: 15.0,
              value: tenderCash,
              borderRadius: 20.0,
              padding: 1.0,
              activeColor: const Color(0xff009253),
              inactiveToggleColor: const Color(0xff009253),
              inactiveColor: const Color(0xffDEDEDE),
              onToggle: (val) {
                setState(() {
                  tenderCash = val;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget noteDetail() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 20,
      child: TextField(
        textCapitalization: TextCapitalization.words,
        keyboardType: TextInputType.text,
        controller: noteController,
        focusNode: notesFocusNode,
        onEditingComplete: () {
          FocusScope.of(context).requestFocus(termsFocusNode);
        },
        style: const TextStyle(color: Color(0xff000000)),
        decoration: const InputDecoration(
          filled: true,
          fillColor: Color(0xffF1F1F1),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Color(0xffF1F1F1)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Color(0xffF1F1F1)),
          ),
          contentPadding: EdgeInsets.all(7),
          hintText: "Notes",
          hintStyle: TextStyle(
            color: Color(0xff000000),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget termsAndCondition() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 20,
      child: TextField(
        textCapitalization: TextCapitalization.words,
        keyboardType: TextInputType.text,
        controller: termsController,
        focusNode: termsFocusNode,
        onEditingComplete: () {
          //  FocusScope.of(context).requestFocus(head4FocusNode);
        },
        style: const TextStyle(color: Color(0xff000000)),
        decoration: const InputDecoration(
          filled: true,
          fillColor: Color(0xffF1F1F1),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Color(0xffF1F1F1)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Color(0xffF1F1F1)),
          ),
          contentPadding: EdgeInsets.all(7),
          hintText: "Terms and Condition",
          hintStyle: TextStyle(
            color: Color(0xff000000),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget confirmationButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 18,
          width: MediaQuery.of(context).size.width / 2.3,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color(0xff131313),
            ),
            child: const Text(
              'Done',
              style: TextStyle(color: Color(0xffFFFFFF)),
            ),
            onPressed: () {
              ;
            },
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 18,
          width: MediaQuery.of(context).size.width / 2.3,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff00922C),
              ),
              child: const Text(
                'Cancel',
                style: TextStyle(color: Color(0xffFFFFFF)),
              ),
              onPressed: () {}),
        )
      ],
    );
  }
}
