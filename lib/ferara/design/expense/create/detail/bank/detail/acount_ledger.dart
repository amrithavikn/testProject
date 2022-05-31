import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectExpenseAccountLedger extends StatefulWidget {
  const SelectExpenseAccountLedger({Key? key}) : super(key: key);

  @override
  State<SelectExpenseAccountLedger> createState() =>
      _SelectExpenseAccountLedgerState();
}

class _SelectExpenseAccountLedgerState extends State<SelectExpenseAccountLedger> {
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
                        Color(0xff0634A1)])),
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
                      'Account Ledger',
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
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 17,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      shape: const Border( bottom: BorderSide(color: Color(0xffD1D1D1))),

                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "<Ledger Name>",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }))),
    );
  }
}
