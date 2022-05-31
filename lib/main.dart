import 'package:flutter/material.dart';
import 'package:test_project/ferara/design/payment/list_payment_pg5.dart';
import 'package:test_project/slide%20page/cutom_swipe.dart';
import 'package:test_project/slide%20page/slide_page.dart';
import 'appbar_test/appbar.dart';
import 'ferara/design/cash_in_hand.dart';
import 'ferara/design/expense/list_expense_pg11.dart';
import 'ferara/design/list_menu_pg1.dart';
import 'ferara/design/list_sales_invoice.dart';
import 'ferara/design/printer_setting.dart';
import 'ferara/design/reciepts/list_receipts_pg8.dart';
import 'ferara/design/sales/sales_list_pg2.dart';
import 'ferara/design/sales_order/sales_order_pg4.dart';
import 'ferara/design/sales_return/sales_return_pg3.dart';
import 'ferara/design/shortcuts.dart';
import 'ferara/design/show_item_list.dart';
import 'appbar_test/silver.dart';
import 'ferara/design/stock_order/list_stock_order_pg13.dart';
import 'slide page/test_Swipe.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: ShortCut(),
    );
  }
}

class _DismissibleApp extends StatefulWidget {
  @override
  _DismissibleAppState createState() => _DismissibleAppState();
}

class _DismissibleAppState extends State<_DismissibleApp> {

  List<String> _values = ['One', 'Two', 'Three', 'Four', 'Five'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Woolha.com Flutter Tutorial'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.separated(
            itemCount: _values.length,
            padding: const EdgeInsets.all(5.0),
            separatorBuilder: (context, index) => Divider(
              color: Colors.black,
            ),
            itemBuilder: (context, index) {
              return Dismissible(
                key: Key('item ${_values[index]}'),
                background: Container(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.favorite, color: Colors.white),
                        Text('Move to favorites', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
                secondaryBackground: Container(
                  color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Icon(Icons.delete, color: Colors.white),
                        Text('Move to trash', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
                confirmDismiss: (DismissDirection direction) async {
                  return await showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Delete Confirmation"),
                        content: const Text("Are you sure you want to delete this item?"),
                        actions: <Widget>[
                          FlatButton(
                              onPressed: () => Navigator.of(context).pop(true),
                              child: const Text("Delete")
                          ),
                          FlatButton(
                            onPressed: () => Navigator.of(context).pop(false),
                            child: const Text("Cancel"),
                          ),
                        ],
                      );
                    },
                  );
                },
                onDismissed: (DismissDirection direction) {
                  if (direction == DismissDirection.startToEnd) {
                    print("Add to favorite");
                  } else {
                    print('Remove item');
                  }

                  setState(() {
                    _values.removeAt(index);
                  });
                },
                child: ListTile(
                  leading: Icon(Icons.local_activity, size: 50),
                  title: Text(_values[index]),
                  subtitle: Text('Description here'),
                ),
              );
            }
        ),
      ),
    );
  }
}
