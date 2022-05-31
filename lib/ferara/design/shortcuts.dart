import 'package:flutter/material.dart';
import 'package:test_project/ferara/design/payment/list_payment_pg5.dart';
import 'package:test_project/ferara/design/reciepts/list_receipts_pg8.dart';
import 'package:test_project/ferara/design/sales/sales_list_pg2.dart';
import 'package:test_project/ferara/design/sales_order/sales_order_pg4.dart';
import 'package:test_project/ferara/design/sales_return/sales_return_pg3.dart';
import 'package:test_project/ferara/design/stock_order/list_stock_order_pg13.dart';
import 'package:test_project/ferara/design/stock_transfer/list_stock_transfer_pg18.dart';
import 'package:test_project/ferara/design/test_sales.dart';

import 'expense/list_expense_pg11.dart';
import 'list_menu_pg1.dart';
import 'summary/summary_list_pg22.dart';
import 'textfield_undrline.dart';

class ShortCut extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("ShortCuts"),
     ),
     body:  GridView(
         gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
           maxCrossAxisExtent: 150,
           mainAxisExtent: 50,
           mainAxisSpacing: 20,
           crossAxisSpacing: 20,
           childAspectRatio: 1 / 2,
         ),
         children: [
     SizedBox(
     width: MediaQuery.of(context).size.width / 3,
       height: MediaQuery.of(context).size.height / 20,
       child: ElevatedButton(
         onPressed: () {
           Navigator.push(
             context,
             MaterialPageRoute(builder: (context) => ExpenseList()),
           );
         },
         style: ElevatedButton.styleFrom(
           primary: Colors.blue, // Background color
           onPrimary: Colors.white, // Text Color (Foreground color)
         ),
         child: const Text(
           'Expense',
           style: TextStyle(fontSize: 15),
         ),
       ),
   ),
     SizedBox(
     width: MediaQuery.of(context).size.width / 3,
       height: MediaQuery.of(context).size.height / 20,
       child: ElevatedButton(
         onPressed: () {
           Navigator.push(
             context,
             MaterialPageRoute(builder: (context) => Payment()),
           );
         },
         style: ElevatedButton.styleFrom(
           primary: Colors.blue, // Background color
           onPrimary: Colors.white, // Text Color (Foreground color)
         ),
         child: const Text(
           'Payment',
           style: TextStyle(fontSize: 15),
         ),
       ),
   ),
     SizedBox(
     width: MediaQuery.of(context).size.width / 3,
       height: MediaQuery.of(context).size.height / 20,
       child: ElevatedButton(
         onPressed: () {
           Navigator.push(
             context,
             MaterialPageRoute(builder: (context) => Receipts()),
           );
         },
         style: ElevatedButton.styleFrom(
           primary: Colors.blue, // Background color
           onPrimary: Colors.white, // Text Color (Foreground color)
         ),
         child: const Text(
           'Receipts',
           style: TextStyle(fontSize: 15),
         ),
       ),
   ),

     SizedBox(
     width: MediaQuery.of(context).size.width / 3,
       height: MediaQuery.of(context).size.height / 20,
       child: ElevatedButton(
         onPressed: () {
           Navigator.push(
             context,
             MaterialPageRoute(builder: (context) => MenuList()),
           );
         },
         style: ElevatedButton.styleFrom(
           primary: Colors.blue, // Background color
           onPrimary: Colors.white, // Text Color (Foreground color)
         ),
         child: const Text(
           'Menu List',
           style: TextStyle(fontSize: 15),
         ),
       ),
   ),

     SizedBox(
     width: MediaQuery.of(context).size.width / 3,
       height: MediaQuery.of(context).size.height / 20,
       child: ElevatedButton(
         onPressed: () {
           Navigator.push(
             context,
             MaterialPageRoute(builder: (context) => SalesList()),
           );
         },
         style: ElevatedButton.styleFrom(
           primary: Colors.blue, // Background color
           onPrimary: Colors.white, // Text Color (Foreground color)
         ),
         child: const Text(
           'Sale',
           style: TextStyle(fontSize: 15),
         ),
       ),
   ),

     SizedBox(
     width: MediaQuery.of(context).size.width / 3,
       height: MediaQuery.of(context).size.height / 20,
       child: ElevatedButton(
         onPressed: () {
           Navigator.push(
             context,
             MaterialPageRoute(builder: (context) => SalesOrder()),
           );
         },
         style: ElevatedButton.styleFrom(
           primary: Colors.blue, // Background color
           onPrimary: Colors.white, // Text Color (Foreground color)
         ),
         child: const Text(
           'SalesOrder',
           style: TextStyle(fontSize: 15),
         ),
       ),
   ),

     SizedBox(
     width: MediaQuery.of(context).size.width / 3,
       height: MediaQuery.of(context).size.height / 20,
       child: ElevatedButton(
         onPressed: () {
           Navigator.push(
             context,
             MaterialPageRoute(builder: (context) => SalesReturn()),
           );
         },
         style: ElevatedButton.styleFrom(
           primary: Colors.blue, // Background color
           onPrimary: Colors.white, // Text Color (Foreground color)
         ),
         child: const Text(
           'SalesReturn',
           style: TextStyle(fontSize: 15),
         ),
       ),
   ),
     SizedBox(
     width: MediaQuery.of(context).size.width / 3,
       height: MediaQuery.of(context).size.height / 20,
       child: ElevatedButton(
         onPressed: () {
           Navigator.push(
             context,
             MaterialPageRoute(builder: (context) => StockOrderList()),
           );
         },
         style: ElevatedButton.styleFrom(
           primary: Colors.blue, // Background color
           onPrimary: Colors.white, // Text Color (Foreground color)
         ),
         child: const Text(
           'Stock Order',
           style: TextStyle(fontSize: 15),
         ),
       ),
   ),
     SizedBox(
     width: MediaQuery.of(context).size.width / 3,
       height: MediaQuery.of(context).size.height / 20,
       child: ElevatedButton(
         onPressed: () {
           Navigator.push(
             context,
             MaterialPageRoute(builder: (context) => StockTransferList()),
           );
         },
         style: ElevatedButton.styleFrom(
           primary: Colors.blue, // Background color
           onPrimary: Colors.white, // Text Color (Foreground color)
         ),
         child: const Text(
           'Stock Transfer',
           style: TextStyle(fontSize: 15),
         ),
       ),
   ),
     SizedBox(
     width: MediaQuery.of(context).size.width / 3,
       height: MediaQuery.of(context).size.height / 20,
       child: ElevatedButton(
         onPressed: () {
           Navigator.push(
             context,
             MaterialPageRoute(builder: (context) => Summary()),
           );
         },
         style: ElevatedButton.styleFrom(
           primary: Colors.blue, // Background color
           onPrimary: Colors.white, // Text Color (Foreground color)
         ),
         child: const Text(
           'Summary',
           style: TextStyle(fontSize: 15),
         ),
       ),
   ),
  SizedBox(
     width: MediaQuery.of(context).size.width / 3,
       height: MediaQuery.of(context).size.height / 20,
       child: ElevatedButton(
         onPressed: () {
           Navigator.push(
             context,
             MaterialPageRoute(builder: (context) => TestSales()),
           );
         },
         style: ElevatedButton.styleFrom(
           primary: Colors.blue, // Background color
           onPrimary: Colors.white, // Text Color (Foreground color)
         ),
         child: const Text(
           'Sales Filter',
           style: TextStyle(fontSize: 15),
         ),
       ),
   ),





         ]));
  }

}