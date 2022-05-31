import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SalesInvoice extends StatelessWidget {
  const SalesInvoice({Key? key}) : super(key: key);

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
                  color: const Color(0xff0634A1),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Sales Invoice',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
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
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                        // if you need this
                        side: BorderSide(
                          color: Colors.grey.withOpacity(0.2),
                          width: 1,
                        ),
                      ),
                      child: ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Invoice No",
                                  style: TextStyle(color: Color(0xff7D7D7D)),
                                ),
                                Text(
                                  'Customer Name',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text(
                                  "Date",
                                  style: TextStyle(color: Color(0xff7D7D7D)),
                                ),
                                Text(
                                  "<Amount>",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }))),
    );
  }
}
