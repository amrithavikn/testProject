import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';





class Swipe extends StatefulWidget {


  @override
  State<Swipe> createState() => _SwipeState();
}

class _SwipeState extends State<Swipe> {
  final PageController controller = PageController();

  int buttonStatus=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
body: Column(
  children: [

    SizedBox(
        height: MediaQuery.of(context).size.height / 3,
        width: MediaQuery.of(context).size.width / 1.1,
  child: ListView(
    scrollDirection: Axis.horizontal,
    children: <Widget>[
      GestureDetector(
        onTap: (){
          print("test");
          buttonStatus=1;
        },
        child:  Container(
          height: MediaQuery.of(context).size.height / 10,
          width: MediaQuery.of(context).size.width / 1.2,
          color: Colors.purple[600],
          child: const Center(child: Text('Item 1', style: TextStyle(fontSize: 18, color: Colors.white),)),
        ) ,
      )
    ,
      GestureDetector(
        onTap: (){
          buttonStatus=2;

        },
        child: Container(
          height: MediaQuery.of(context).size.height / 10,
          width: MediaQuery.of(context).size.width / 1.2,
          color: Colors.purple[500],
          child: const Center(child: Text('Item 2', style: TextStyle(fontSize: 18, color: Colors.white),)),
        ),
      )
      ,
      GestureDetector(
        onTap: (){
          buttonStatus=3;

        },
        child:Container(
          height: MediaQuery.of(context).size.height / 10,
          width: MediaQuery.of(context).size.width / 1.2,color: Colors.purple[400],
          child: const Center(child: Text('Item 3', style: TextStyle(fontSize: 18, color: Colors.white),)),
        ) ,
      )
      ,
      GestureDetector(
        onTap: (){
          buttonStatus=4;
        },
        child: Container(
          height: MediaQuery.of(context).size.height / 10,
          width: MediaQuery.of(context).size.width / 1.2,
          color: Colors.purple[300],
          child: const Center(child: Text('Item 4', style: TextStyle(fontSize: 18, color: Colors.white),)),
        ) ,
      )
     ,
    ],
  ),
    ),

    SizedBox(
      height: MediaQuery.of(context).size.height / 17,
      width: MediaQuery.of(context).size.width / 1.1,
      child: selectMenuButton(),
    ),
  ],
),

    );

  }

  selectMenuButton() {
    return ListView(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide( width: 3),
                ),
              ),
              child: TextButton(
                child: const Text(
                  'Accounts',
                  style: TextStyle(),
                ),
                style: TextButton.styleFrom(
                ),
                onPressed: () {
                  setState(() {
                    buttonStatus = 1;
                  });
                  // print('Pressed');
                },
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide( width: 3),
                ),
              ),
              child: TextButton(
                child: const Text(
                  'Finances',
                  style: TextStyle(),
                ),
                style: TextButton.styleFrom(

                //    backgroundColor: Repository.bgColor(context)
                ),
                onPressed: () {
                  setState(() {
                    buttonStatus = 2;
                  });
                  // print('Pressed');
                },
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide( width: 3),
                ),
              ),
              child: TextButton(
                child: const Text(
                  'SAles',
                  style: TextStyle(),
                ),
                style: TextButton.styleFrom(

                //    backgroundColor: Repository.bgColor(context)
                ),
                onPressed: () {
                  setState(() {
                    buttonStatus = 3;
                  });
                  // print('Pressed');
                },
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide( width: 3),
                ),
              ),
              child: TextButton(
                child: const Text(
                  'Inventory',
                  style: TextStyle(),
                ),
                style: TextButton.styleFrom(

                //    backgroundColor: Repository.bgColor(context)
                ),
                onPressed: () {
                  setState(() {
                    buttonStatus = 4;
                  });
                  // print('Pressed');
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  selectMenuButtonDetail(int buttonStatus) {
    if (buttonStatus == 1) {
      return accountDetailInMenu();
    } else if (buttonStatus == 2) {
      return financeDetailInMenu();
    }
    else if(buttonStatus ==3){
      return salesDetailInMenu();
    }
  }

  Widget accountDetailInMenu() {
    return  ListView(
      itemExtent: MediaQuery.of(context).size.height / 17,
      children: [
        ListTile(
          title: Text(
            'Accounts',
          ),
        ),
        ListTile(
          title: Text(
            'Ledger',
          ),


        ),
      ],
    );
  }

  Widget financeDetailInMenu() {
    return ListView(
      itemExtent: MediaQuery.of(context).size.height / 17,
      children: [
        ListTile(
          title: Text(
            'Finances',
          ),
        ),
        ListTile(
          title: Text(
            'Payments',
          ),
          onTap: () {

          },
        ),
        ListTile(
          title: Text(
            'Receipts',
          ),
          onTap: () {
          },
        ),

      ],
    );
  }

  Widget salesDetailInMenu() {
    return ListView(
      itemExtent: MediaQuery.of(context).size.height / 17,
      children: [
        ListTile(
          title: Text(
            'Sales',
          ),
        ),
        ListTile(
          title: Text(
            'Sales Invoice',
          ),
          onTap: () {

          },
        ),
        ListTile(
          title: Text(
            'Sales Return',
          ),
          onTap: () {
          },
        ),



      ],
    );
  }

 }