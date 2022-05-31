import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

import '../../decoration.dart';
import 'detail/select_from_warehouse.dart';
import 'detail/select_to_warehouse.dart';
import 'drop/select_product_name.dart';
import 'drop/select_unit.dart';

class CreateStockOrder extends StatefulWidget {
  const CreateStockOrder({Key? key}) : super(key: key);

  @override
  State<CreateStockOrder> createState() => _CreateStockOrderState();
}

class _CreateStockOrderState extends State<CreateStockOrder> {
  bool voucherNo = false;

  String _date = "DD/MM/YYYY";
  TextEditingController fromWarehouseController = TextEditingController();
  TextEditingController toWarehouseController = TextEditingController();
  TextEditingController balanceController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController discountController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  TextEditingController taxTreatmentController = TextEditingController();
  TextEditingController prefixController = TextEditingController();
  TextEditingController seperatorController = TextEditingController();
  TextEditingController suffixController = TextEditingController();

  TextEditingController productNameController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController freeQuantityController = TextEditingController();
  TextEditingController unitController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  FocusNode fromWarehouseFocusNode = FocusNode();
  FocusNode discount = FocusNode();
  FocusNode toWarehouseFocusNode = FocusNode();
  FocusNode salesAccount = FocusNode();
  FocusNode warehouse = FocusNode();
  FocusNode gstTreatment = FocusNode();
  FocusNode pieceOffSupply = FocusNode();
  FocusNode productName = FocusNode();
  FocusNode quantity = FocusNode();
  FocusNode freeQuantity = FocusNode();
  FocusNode unit = FocusNode();
  FocusNode price = FocusNode();

  FocusNode prefix = FocusNode();
  FocusNode seperator = FocusNode();
  FocusNode suffix = FocusNode();
  FocusNode save = FocusNode();

  FocusNode fromWarehouse = FocusNode();
  FocusNode toWarehouse = FocusNode();
  FocusNode balance = FocusNode();
  FocusNode amount = FocusNode();
  FocusNode note = FocusNode();
  FocusNode taxTreatment = FocusNode();

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
                      colors: <Color>[Color(0xff92ADEE), Color(0xff0634A1)])),
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
                      'New Stock Order',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      //              padding: const EdgeInsets.only(left: 25, bottom: 13, top: 7, right: 25),
      body: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, bottom: 0, top: 0, right: 25),

                child: Container(
                  height: MediaQuery.of(context).size.height / 1.3,
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: ListView(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    child: const Text(
                                      "Voucher No:",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    )),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      voucherNo = true;
                                    });
                                  },
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          child: const Text(
                                            "sd934",
                                          ),
                                        ),
                                        const Icon(
                                          Icons.arrow_drop_down,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    datePicker(),
                                    const Icon(
                                      Icons.calendar_today,
                                    )
                                  ],
                                ))
                          ],
                        ),
                      ),
                      voucherNo == true
                          ? Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height:
                                MediaQuery.of(context).size.height /
                                    18,
                                width:
                                MediaQuery.of(context).size.width /
                                    3.7,
                                child: TextField(
                                  textCapitalization:
                                  TextCapitalization.words,
                                  keyboardType: TextInputType.number,
                                  controller: prefixController,
                                  focusNode: prefix,
                                  onEditingComplete: () {
                                    FocusScope.of(context)
                                        .requestFocus(seperator);
                                  },
                                  style: const TextStyle(),
                                  decoration: TextFieldStyle.textField(
                                      context,
                                      labelTextStr: "Prefix",
                                      hintTextStr: "Prefix"),
                                ),
                              ),
                              Container(
                                height:
                                MediaQuery.of(context).size.height /
                                    18,
                                width:
                                MediaQuery.of(context).size.width /
                                    3.7,
                                child: TextField(
                                  textCapitalization:
                                  TextCapitalization.words,
                                  keyboardType: TextInputType.number,
                                  controller: seperatorController,
                                  focusNode: seperator,
                                  onEditingComplete: () {
                                    FocusScope.of(context)
                                        .requestFocus(suffix);
                                  },
                                  style: const TextStyle(),
                                  decoration: TextFieldStyle.textField(
                                      context,
                                      labelTextStr: "Seperator",
                                      hintTextStr: "Seperator"),
                                ),
                              ),
                              Container(
                                height:
                                MediaQuery.of(context).size.height /
                                    18,
                                width:
                                MediaQuery.of(context).size.width /
                                    3.7,
                                child: TextField(
                                  onTap: () {},
                                  keyboardType: TextInputType.number,
                                  controller: suffixController,
                                  focusNode: suffix,
                                  onEditingComplete: () {
                                    FocusScope.of(context)
                                        .requestFocus(save);
                                  },
                                  style: const TextStyle(
                                    //  color: Repository.textColor(context)
                                  ),
                                  decoration: TextFieldStyle.textField(
                                      context,
                                      labelTextStr: "Suffix",
                                      hintTextStr: "Suffix"),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height:
                            MediaQuery.of(context).size.height / 18,
                            width:
                            MediaQuery.of(context).size.width / 1.1,
                            child: TextButton(
                              focusNode: save,
                              child: const Text(
                                'Save',
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                              style: TextButton.styleFrom(
                                  primary: Colors.white,
                                  backgroundColor: Colors.green),
                              onPressed: () {
                                setState(() {
                                  voucherNo = false;
                                });
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      )
                          : Container(),
                      fromWarehouseDetail(),
                      const SizedBox(
                        height: 10,
                      ),
                      toWarehouseDetail(),
                      const SizedBox(
                        height: 10,
                      ),
                      productNameButtonDetails(),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 11,
                        width: MediaQuery.of(context).size.width / 1.1,
                        decoration: BoxDecoration(
                            color: Color(0xffF0F0F0),
                            border: Border.all(color: Color(0xffD9D9D9))),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8,top: 14,right: 8,bottom: 4),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    '<Product Name>',

                                  ),
                                  Text(
                                    '<Price>*<Qty>',
                                    style: TextStyle( color: Color(0xff434343)),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8,top: 4,right: 8,bottom: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    '<Total>',
                                  ),
                                  Text(
                                    '<Description>',
                                    style: TextStyle(
                                        color: Color(0xff434343)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),







                      const SizedBox(
                        height: 10,
                      ),
                      numberOfProducts(),
                      const SizedBox(
                        height: 10,
                      ),totalQuantity(), const SizedBox(
                        height: 10,
                      ),
                      noteDetail(),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
              saveAndPrintButton()
            ],
          )),
    );
  }

  Widget datePicker() {
    return Container(
      padding: const EdgeInsets.all(2),
      width: MediaQuery.of(context).size.width / 4,
      height: MediaQuery.of(context).size.height / 18,
      child: TextField(
        textAlign: TextAlign.center,
        readOnly: true,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: '$_date',
          hintStyle: const TextStyle(
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

  Widget fromWarehouseDetail() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 20,
      child: TextField(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SelectFromWareHouse()),
            );
          },
          controller: fromWarehouseController,
          focusNode: fromWarehouse,
          onEditingComplete: () {
            FocusScope.of(context).requestFocus(balance);
          },
          readOnly: true,
          textCapitalization: TextCapitalization.words,
          keyboardType: TextInputType.text,
          decoration: TextFieldStyle.textFieldIcon(context,
              labelTextStr: "From Warehouse", hintTextStr: "From Warehouse")),
    );
  }

  Widget toWarehouseDetail() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 20,
      child: TextField(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SelectToWareHouse()),
            );
          },
          controller: toWarehouseController,
          focusNode: toWarehouse,
          onEditingComplete: () {
            FocusScope.of(context).requestFocus(balance);
          },
          readOnly: true,
          textCapitalization: TextCapitalization.words,
          keyboardType: TextInputType.text,
          decoration: TextFieldStyle.textFieldIcon(context,
              labelTextStr: "To Warehouse", hintTextStr: "To Warehouse")),
    );
  }

  Widget productNameButtonDetails() {
    return Row(
      children: [
        Container(
            height: MediaQuery.of(context).size.height / 17,
            width: MediaQuery.of(context).size.width / 1.4,
            child: TextButton(
              style: TextButton.styleFrom(
                  primary: Color(0xff1A1A1A),
                  backgroundColor: Color(0xffEFEFEF)),
              child: const Text(
                'Product Name',
              ),
              onPressed: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (_) {
                      return bottomSheetScreen();
                    });
              },
            )),
        Container(
            height: MediaQuery.of(context).size.height / 17,
            color: const Color(0xff000000),
            width: MediaQuery.of(context).size.width / 7.5,
            child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/svg/barcode.svg')))
      ],
    );
  }

  Widget bottomSheetScreen() {
    return Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                child: Form(
                    child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    productNameDetail(),
                    const SizedBox(
                      height: 15,
                    ),
                    unitDetails(),
                    const SizedBox(
                      height: 15,
                    ),
                    quantityAndPriceDetail(),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 18,
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                        ),
                        child: const Text(
                          'Done',
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                )))));
  }

  Widget productNameDetail() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 20,
      child: TextField(
        readOnly: true,
        onTap: () async {
          var result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProductName()),
          );

          print(result);

          if (result != null) {
            setState(() {
              productNameController.text = result;
            });
          } else {}
        },





        textCapitalization: TextCapitalization.words,
        keyboardType: TextInputType.text,
        controller: productNameController,
        focusNode: productName,
        onEditingComplete: () {
          FocusScope.of(context).requestFocus(quantity);
        },
        decoration: TextFieldStyle.textFieldIcon(context,
            labelTextStr: "Product Name", hintTextStr: "Product Name"),
      ),
    );
  }

  Widget unitDetails() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 20,
      child: TextField(
        readOnly: true,
        onTap: () async {
          var result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SelectUnit()),
          );

          print(result);

          if (result != null) {
            setState(() {
              unitController.text = result;
            });
          } else {}
        },
        textCapitalization: TextCapitalization.words,
        keyboardType: TextInputType.text,
        controller: unitController,
        focusNode: unit,
        onEditingComplete: () {
          FocusScope.of(context).requestFocus(quantity);
        },
        decoration: TextFieldStyle.textFieldIcon(context,
            labelTextStr: "Unit", hintTextStr: "Unit"),
      ),
    );
  }

  Widget quantityAndPriceDetail() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 2.3,
          height: MediaQuery.of(context).size.height / 20,
          child: TextField(
            readOnly: true,
            keyboardType: TextInputType.number,
            controller: quantityController,
            focusNode: quantity,
            onEditingComplete: () {
              FocusScope.of(context).requestFocus(price);
            },
            decoration: TextFieldStyle.textField(context,
                labelTextStr: "Quantity", hintTextStr: "Quantity"),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 2.3,
          height: MediaQuery.of(context).size.height / 20,
          child: TextField(
            readOnly: true,
            keyboardType: TextInputType.number,
            controller: priceController,
            focusNode: price,
            onEditingComplete: () {
              // FocusScope.of(context).requestFocus(taxtType);
            },
            decoration: TextFieldStyle.textField(context,
                labelTextStr: "Price", hintTextStr: "Price"),
          ),
        ),
      ],
    );
  }




  Widget numberOfProducts() {
    return Padding(
      padding: const EdgeInsets.only(left: 11, top: 8, right: 11, bottom: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "No of products:",
            style: TextStyle(fontSize: 16),
          ),
          Text(
            "1000.00",
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
  Widget totalQuantity() {
    return Padding(
      padding: const EdgeInsets.only(left: 11, top: 4, right: 11, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Total Quantity:",
            style: TextStyle(fontSize: 16),
          ),
          Text(
            "1000.00",
            style: TextStyle(fontSize: 16),
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

  Widget saveAndPrintButton() {
    return Container(
     color: const Color(0xffF5F5F5),
      width: MediaQuery.of(context).size.width / 1,

      height: MediaQuery.of(context).size.height / 12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 18,
            width: MediaQuery.of(context).size.width / 2.7,
            child: TextButton(
              child: const Text(
                'Save',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              style: TextButton.styleFrom(
                  primary: Color(0xffffffff), backgroundColor: Color(0xff00922C)),
              onPressed: () {
                // print('Pressed');
              },
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2.7,
            height: MediaQuery.of(context).size.height / 18,
            child: TextButton(
              child: const Text(
                'Save & Print',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              style: TextButton.styleFrom(
                  primary: const Color(0xffffffff), backgroundColor: Color(0xff0D4CE1)),
              onPressed: () {
                // print('Pressed');
              },
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height / 17,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.share, ),
              ))
        ],
      ),
    );
  }

}
