import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuList extends StatefulWidget {
  const MenuList({Key? key}) : super(key: key);

  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 110),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                Container(
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Menu',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SvgPicture.asset('assets/svg/menu.svg',color: Color(0xffffffff),)
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
                top: 75,
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
                                    color: Color(0xff0634A1)),
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
              child: ListView(
                itemExtent: MediaQuery.of(context).size.height / 15,
                children: [

                  ///alignment not correct
                  ListTile(
                      title: Row(
                    children: [
                      SvgPicture.asset('assets/svg/money.svg'),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text('Sales'),
                    ],
                  )),
                  ListTile(
                      title: Row(
                    children: [
                      SvgPicture.asset('assets/svg/return.svg'),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text('Sales Return'),
                    ],
                  )),
                  ListTile(
                      title: Row(
                    children: [
                      SvgPicture.asset('assets/svg/orders.svg'),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text('Sales Order'),
                    ],
                  )),
                  ListTile(
                      title: Row(
                    children: [
                      SvgPicture.asset('assets/svg/payment.svg'),
                      const SizedBox(
                        width: 15,
                      ),
                      const   Text('Payment'),
                    ],
                  )),
                  ListTile(
                      title: Row(
                        children: [
                          Container(

                              width: MediaQuery.of(context).size.width/14,

                              child: SvgPicture.asset('assets/svg/reciept.svg',)),
                          const SizedBox(
                            width: 15,
                          ),
                          const   Text('Receipt'),
                        ],
                      )),
                  ListTile(
                      title: Row(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width/14,

                              child: SvgPicture.asset('assets/svg/expense.svg')),
                          const SizedBox(
                            width: 15,
                          ),
                          const    Text('Expense'),
                        ],
                      )),
                  ListTile(
                      title: Row(
                    children: [
                      SvgPicture.asset('assets/svg/stockorder.svg'),
                      const SizedBox(
                        width: 15,
                      ),
                      const     Text('Stock Order'),
                    ],
                  )),
                  ListTile(
                      title: Row(
                    children: [
                      SvgPicture.asset('assets/svg/transfer.svg'),
                      const SizedBox(
                        width: 15,
                      ),
                      const   Text('Stock Transfer'),
                    ],
                  )),
                  ListTile(
                      title: Row(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width/14,

                              child: SvgPicture.asset('assets/svg/summary.svg')),
                          const SizedBox(
                            width: 15,
                          ),
                          const  Text('Sales Summary'),
                        ],
                      )),
                ],
              ))),
    );
  }
}
