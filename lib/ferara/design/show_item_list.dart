import 'package:flutter/material.dart';
import 'package:test_project/ferara/design/search.dart';

import 'cash_in_hand.dart';

class ShowItemList extends StatefulWidget {
  @override
  State<ShowItemList> createState() => _ShowItemListState();
}

class _ShowItemListState extends State<ShowItemList> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  int backPage = 0;
  int inPage = 0;
  Color buttonColor1=const Color(0xff2349A4);
  Color buttonColor2=const Color(0xff979797);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,

      key: _scaffoldKey,
      appBar: selectAppBarDetail(backPage),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.56,
            width:MediaQuery.of(context).size.width / 1 ,
            child: selectDashboard(backPage),
          ),
          bottomIconList(),
          bottomBarDetail(),
        ],
      ),
    );
  }
  selectAppBarDetail(int backPage) {
    if (backPage == 0) {
      return selectInPageAppBar(inPage);
    } else if (backPage == 1) {
      return backPageAppBar();
    }
  }

  selectInPageAppBar(int inPage) {
    if (inPage == 0) {
      return PreferredSize(
        preferredSize: const Size(double.infinity, 120),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                Container(
                 height: MediaQuery.of(context).size.height /7,
                 // height: 100,
                  width: double.infinity,
                  color: const Color(0xff2349A4),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'ItemList',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 75,
              child: Container(
                height: MediaQuery.of(context).size.height /13,
                width: MediaQuery.of(context).size.width /1.1,

                // height: 62,
                //width: 330,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 1, spreadRadius: 1),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffffffff),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff2349A4),
                        ),
                        alignment: Alignment.center,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_back_ios_new,
                            size: 15,
                          ),
                          color: Colors.white,
                        ),
                      ),
                      const Text('SL00001'),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff2349A4),
                        ),
                        alignment: Alignment.center,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          ),
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    } else if (inPage == 1) {
      return PreferredSize(
        preferredSize: const Size(double.infinity, 120),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height /8,
                  width: double.infinity,
                  color: const Color(0xff2349A4),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Retrieve',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 105,
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 17,
                width: MediaQuery.of(context).size.width / 1.1,
                child: const TextField(
                  readOnly: true,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.search,
                      color: Color(0xff2F54AC),
                    ),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff0052A3))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: Color(0xff0052A3))),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    } else if (inPage == 2) {
      return PreferredSize(
        preferredSize: const Size(double.infinity, 120),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height /7,
                  width: double.infinity,
                  color: const Color(0xff2349A4),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'page 3',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 75,
              child: Container(
                height: MediaQuery.of(context).size.height /13,
                width: MediaQuery.of(context).size.width /1.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff2349A4),
                        ),
                        alignment: Alignment.center,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_back_ios_new,
                            size: 15,
                          ),
                          color: Colors.white,
                        ),
                      ),
                      const Text('SL00001'),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff2349A4),
                        ),
                        alignment: Alignment.center,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          ),
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    } else if (inPage == 3) {
      return PreferredSize(
        preferredSize: const Size(double.infinity, 120),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height /7,
                  width: double.infinity,
                  color: const Color(0xff2349A4),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'page 4',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 75,
              child: Container(
                height: MediaQuery.of(context).size.height /13,
                width: MediaQuery.of(context).size.width /1.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff2349A4),
                        ),
                        alignment: Alignment.center,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_back_ios_new,
                            size: 15,
                          ),
                          color: Colors.white,
                        ),
                      ),
                      const Text('SL00001'),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff2349A4),
                        ),
                        alignment: Alignment.center,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          ),
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
  Widget backPageAppBar() {
    return PreferredSize(
      preferredSize: const Size(double.infinity, 120),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height /7,
                width: double.infinity,
                color: const Color(0xff2349A4),
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Payment',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 75,
            child: Container(
              height: MediaQuery.of(context).size.height /13,
              width: MediaQuery.of(context).size.width /1.1,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 1, spreadRadius: 1),
                ],
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffffffff),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff2349A4),
                      ),
                      alignment: Alignment.center,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          size: 15,
                        ),
                        color: Colors.white,
                      ),
                    ),
                    const Text('SL00001'),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff2349A4),
                      ),
                      alignment: Alignment.center,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  selectDashboard(int page) {
    if (page == 0) {
      return selectPageList(inPage);
    } else if (page == 1) {
      return paymentPageBackgroundDetail();
    }
  }

  selectPageList(int inPage) {
    if (inPage == 0) {
      return firstInPage();
    } else if (inPage == 1) {
      return secondInPage();
    } else if (inPage == 2) {
      return Container(
        color: Colors.yellow[50],
      );
    } else if (inPage == 3) {
      return Container(
        color: Colors.purpleAccent[50],
      );
    }
  }
  Widget firstInPage() {
    return ListView(
      children: [
        selectCashMethodField(),
        SizedBox(
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width / 1.1,
          child: listviewTableOrder(),
        ),
        searchField(),
      ],
    );
  }
  Widget searchField() {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 17,
          width: MediaQuery.of(context).size.width / 1.1,
          child: TextField(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Search()),
              );
            },
            readOnly: true,
            decoration: const InputDecoration(
              suffixIcon: Icon(
                Icons.search,
                color: Color(0xff5B5A5A),
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff0052A3))),

              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  borderSide: BorderSide(color: Color(0xff0052A3))),
              border: OutlineInputBorder(),

              //  hintText: 'Enter Your Name'
            ),
          ),
        )
      ],
    );
  }
  Widget selectCashMethodField() {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 17,
          width: MediaQuery.of(context).size.width / 1.1,
          child: TextField(
            onTap: () {
              //
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CashInHand()),
              );
            },
            readOnly: true,
            decoration: const InputDecoration(
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down,
                  color: Color(0xff2F54AC),
                ),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff0052A3))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: Color(0xff0052A3))),
                hintText: 'Cash In Hand',
                hintStyle: TextStyle(color: Color(0xff818181))),
          ),
        )
      ],
    );
  }
  Widget listviewTableOrder() {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, i) {
                    return Dismissible(
                      key: UniqueKey(),
                      direction: DismissDirection.startToEnd,
                      background: Container(
                        color: Colors.red,
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const <Widget>[
                              Icon(Icons.delete, color: Colors.white),
                              Text('Remove',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'poppins')),
                            ],
                          ),
                        ),
                      ),
                      child: Card(
                        elevation: 0.0,
                        color: Colors.white,
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0xfff1f1f1),
                              border: Border.all(
                                color: const Color(0xffD9D9D9),
                              ),
                              borderRadius:
                              const BorderRadius.all(Radius.circular(5))),
                          child: ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          2.5,
                                      child: const Text(
                                        "product name",
                                        //overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff2349A4),
                                            fontFamily: 'poppins'),
                                      ),
                                    ),
                                    const Text(
                                      "Tax: " "120",
                                      style: TextStyle(
                                          fontSize: 9, fontFamily: 'poppins'),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text(
                                          "asd",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'poppins'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 5.0, right: 5),
                                          child: Text(
                                            "-",
                                            style: TextStyle(
                                                fontSize: 9,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'poppins'),
                                          ),
                                        ),
                                        Text(
                                          "1200",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff008400),
                                              fontFamily: 'poppins'),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height:
                                  MediaQuery.of(context).size.height / 15,
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                    children: [
                                      IconButton(
                                        highlightColor: Colors.transparent,
                                        icon: const Icon(Icons.add),
                                        iconSize: 10,
                                        //   icon: new Container(width: 35.0, child: new Icon(Icons.search, color: Color(0xff959595))),
                                        onPressed: () {
                                          // var qty = (double.parse(
                                          //     orderDetTable[i]
                                          //         .quantity));
                                          // if (qty > 0.1) {
                                          //   updateQty(2, i);
                                          //
                                          //
                                          // }
                                        },
                                        splashColor: Colors.transparent,
                                      ),
                                      GestureDetector(
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: const [
                                               Center(
                                                  child: Text("Qty",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color:
                                                          Color(0xff2349A4),
                                                          fontWeight:
                                                          FontWeight.bold,
                                                          fontFamily:
                                                          'poppins'))),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 8.0),
                                                child: Center(
                                                  child: Text("12",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          fontWeight:
                                                          FontWeight.w600,
                                                          fontFamily:
                                                          'poppins')),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        onTap: () {},
                                      ),
                                      IconButton(
                                        highlightColor: Colors.transparent,
                                        icon: const Icon(Icons.minimize),
                                        iconSize: 10,
                                        //   icon: new Container(width: 35.0, child: new Icon(Icons.search, color: Color(0xff959595))),
                                        onPressed: () {},
                                        splashColor: Colors.transparent,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            onTap: () async {},
                          ),
                        ),
                      ),
                    );
                  },
                )),
          ),
        ],
      ),
    );
  }

  Widget secondInPage() {
    return ListView(
      shrinkWrap: true,
      children: [

        const SizedBox(
          height: 20,
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.1,
              child: const ListTile(
                tileColor: Color(0xffF3F3F3),
                title: Text(
                  'SL00001',
                  style: TextStyle(color: Color(0xff000000), fontSize: 13),
                ),
                subtitle: Text(
                  'Rs. 100.00',
                  style: TextStyle(color: Color(0xff008400)),
                ),
                trailing: Icon(
                  Icons.play_arrow,
                  color: Color(0xff004488),
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  Widget bottomIconList() {
    return Container(
        decoration: BoxDecoration(border: Border.all(color: const Color(0xffCFCFCF))),
        height: MediaQuery.of(context).size.height / 14,
        width: MediaQuery.of(context).size.width / 1,
        child: selectIconButton());
  }
  Widget selectIconButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              inPage = 0;
              selectPageList(inPage);
            });
          },
          icon: const Icon(Icons.pause),
          color: const Color(0xff2349A4),
        ),
        IconButton(
            onPressed: () {
              setState(() {
                inPage = 1;
                selectPageList(inPage);
              });
            },
            icon: const Icon(Icons.play_arrow),
            color: const Color(0xff2349A4)),
        IconButton(
            onPressed: () {
              setState(() {
                inPage = 2;
                selectPageList(inPage);
              });
            },
            icon: const Icon(Icons.add_photo_alternate_outlined),
            color: const Color(0xff2349A4)),
        IconButton(
          onPressed: () {
            setState(() {
              inPage = 3;
              selectPageList(inPage);
            });
          },
          icon: const Icon(Icons.qr_code_scanner),
          color: const Color(0xff2349A4),
        ),
      ],
    );
  }

  Widget selectButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
            onPressed: () {
              setState(() {
                backPage = 0;
                selectDashboard(backPage);

                buttonColor1=const Color(0xff2349A4);
                buttonColor2=const Color(0xff979797);
              });
            },
            child:  Icon(
              Icons.menu,
              color: buttonColor1,
            )),
        TextButton(
            onPressed: () {
              setState(() {
                backPage = 1;
                selectDashboard(backPage);
                buttonColor2=const Color(0xff2349A4);
                buttonColor1=const Color(0xff979797);
              });
            },
            child:  Icon(
              Icons.radio,
              color: buttonColor2,
            ))
      ],
    );
  }
  Widget bottomBarDetail() {
    return SizedBox(
        height: MediaQuery.of(context).size.height / 13,
        width: MediaQuery.of(context).size.width / 1,
        child: selectButton());
  }

  Widget paymentPageBackgroundDetail() {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.1,
      height: MediaQuery.of(context).size.height / 2,
      child: ListView(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.1,
                height: MediaQuery.of(context).size.height / 5,
                decoration:
                BoxDecoration(border: Border.all(color: const Color(0xffD9D9D9))),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "SUB TOTAL",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text("-")
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.1,
                height: MediaQuery.of(context).size.height / 5,
                decoration:
                BoxDecoration(border: Border.all(color: const Color(0xffD9D9D9))),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "SUB TOTAL",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text("-")
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),

          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.1,
                height: MediaQuery.of(context).size.height / 5,
                decoration:
                BoxDecoration(border: Border.all(color: const Color(0xffD9D9D9))),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "SUB TOTAL",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text("-")
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.1,
                height: MediaQuery.of(context).size.height / 5,
                decoration:
                BoxDecoration(border: Border.all(color: const Color(0xffD9D9D9))),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "SUB TOTAL",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text("-")
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }



}
