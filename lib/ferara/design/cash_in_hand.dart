import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CashInHand extends StatefulWidget {
  @override
  State<CashInHand> createState() => _CashInHandState();
}

class _CashInHandState extends State<CashInHand> {
  TextEditingController priceController=TextEditingController();
  TextEditingController amountController=TextEditingController();
  TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            showAlert();
          },
        ),
        backgroundColor: const Color(0xff2349A4),
        title: const Text("Cash In Hand"),
      ),
      body: Container(),
    );
  }

  showAlert() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(

          backgroundColor: Color(0xff262626),
          actions: [
            ListView(

           shrinkWrap: true,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Center(
                    child: Text(
                      "Rubideum (RBD)",
                      style: TextStyle(color: Color(0xffC6C6E5)),
                    )),
                const SizedBox(
                  height: 10,
                ),

                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Price',style: TextStyle(color: Color(0xffC4C4C4)),),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/2,

                        child: const TextField(
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Color(0xffffffff)
                          ),

                          decoration: InputDecoration(

                            contentPadding: EdgeInsets.all(12),
                            border: InputBorder.none,

                          //  border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('INR',style: TextStyle(color: Color(0xffECBC59)),),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),

                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Amount',style: TextStyle(color: Color(0xffC4C4C4))),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/2.2,

                        child: const TextField(
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Color(0xffffffff)
                          ),
                          decoration: InputDecoration(

                            contentPadding: EdgeInsets.all(12),
                            border: InputBorder.none,

                            //  border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('RBD',style: TextStyle(color: Color(0xffECBC59)),),
                      )
                    ],
                  ),
                ),

                const SizedBox(
                  height: 8,
                ),

                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Total',style: TextStyle(color: Color(0xffC4C4C4)),),
                    ),
                      Container(
                        width: MediaQuery.of(context).size.width/2,

                        child: const TextField(
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xffffffff)
                          ),
                          decoration: InputDecoration(

                            contentPadding: EdgeInsets.all(12),
                            border: InputBorder.none,

                            //  border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: const Text('INR',style: const TextStyle(color: Color(0xffECBC59)),),
                      )
                    ],
                  ),
                ),


                const SizedBox(
                  height: 10,
                ),
                const Center(
                    child: Text("8,766.90",
                      style: TextStyle(color: Color(0xffECECF5), fontSize: 15),
                    )),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                    child: Text(
                      "Balance",
                      style: const TextStyle(
                        color: Color(0xff9C9CC4),
                      ),
                    )),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 100, top: 0, right: 100, bottom: 0),
                  child: TextButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xffFDAA00)),
                    onPressed: () {},
                    child: const Text(
                      'Buy',
                      style: TextStyle(color: Color(0xff000000)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        )
         ;
      },
    );
  }
}
