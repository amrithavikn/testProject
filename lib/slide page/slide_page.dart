import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class DashBoard extends StatefulWidget {
  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  late PageController controller;

  GlobalKey<PageContainerState> key = GlobalKey();
  GlobalKey<PageContainerState> key1 = GlobalKey();

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  int counter = 0;

  Color button1Color = const Color(0xffEBEBEB);
  Color button2Color = const Color(0xff171717);
  Color buttonColor1 = const Color(0xffEBEBEB);
  int index = 1;

  int dashIndex = 1;
  Color dashColor = const Color(0xff1C8F55);
  Color dayBookColor = const Color(0xffCECECE);
  Color menuColor = const Color(0xffCECECE);
  int iconColor = 0;
  int buttonStatus = 1;
  int dashboardIndex = 1;
  Color button1TextColor = const Color(0xffffffff);
  Color button2TextColor = const Color(0xff858585);
  Color button3TextColor = const Color(0xff858585);
  Color button4TextColor = const Color(0xff858585);
  Color button5TextColor = const Color(0xff858585);
  Color button6TextColor = const Color(0xff858585);
  Color button1BorderColor = const Color(0xffffffff);
  Color button2BorderColor = const Color(0xff040404);
  Color button3BorderColor = const Color(0xff040404);
  Color button4BorderColor = const Color(0xff040404);
  Color button5BorderColor = const Color(0xff040404);
  Color button6BorderColor = const Color(0xff040404);
  Color dashIconBlack = const Color(0xff3B3B3B);
  Color dashIconGrey = const Color(0xffEBEBEB);
  int daybookIndex = 1;
  Color daybookColor1 = const Color(0xff3B3B3B);
  Color daybookColor2 = const Color(0xff858585);
  Color daybookColor3 = const Color(0xff858585);
  Color daybookColor4 = const Color(0xff858585);
  Color button1Text = const Color(0xff000000);
  Color button2Text = const Color(0xffffffff);
  Color buttonIconColor1 = const Color(0xff000000);
  Color buttonIconColor2 = const Color(0xffffffff);
  int buttonColors = 1;
  String dropDownValue1 = 'Monthly';
  var items = [
    'Monthly',
    'Yearly',
    'Weekly',
  ];

  final List<ChartData> chartData = <ChartData>[
    ChartData('Oct \n2022', 128, 129, 101),
    ChartData('Nov \n2021', 123, 92, 93),
    ChartData('Dec \n2021', 107, 106, 90),
    ChartData('Jan \n2022', 87, 95, 71),
    ChartData('Feb \n2021', 100, 45, 90),
    ChartData('Mar \n2022', 34, 44, 50),
  ];
  List<_SaleData> data1 = [
    _SaleData('Jan', 35),
    _SaleData('Feb', 28),
    _SaleData('Mar', 34),
    _SaleData('Apr', 32),
    _SaleData('May', 9),
    _SaleData('Jun', 64),
    _SaleData('July', 65),
    _SaleData('Aug', 40)
  ];

  List<RadialData> radialData = [
    RadialData('Jan', 35),
    RadialData('Feb', 28),
    RadialData('Mar', 34),
  ];
  List<RadialData> radialData2 = [
    RadialData('Jan', 35),
    RadialData('Feb', 28),
    RadialData('Mar', 34),
  ];
  List<RadialData> radialData3 = [
    RadialData('Jan', 35),
    RadialData('Feb', 28),
    RadialData('Mar', 34),
  ];

  final List<Statistics> statisticsData = <Statistics>[
    Statistics('4:00', 34, 129, 101),
    Statistics('8:00', 34, 92, 93),
    Statistics('12:00', 34, 106, 90),
    Statistics('16:00', 34, 95, 71),
    Statistics('20:00', 34, 45, 90),
    Statistics('20:00', 34, 44, 50),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(
        callback: (isOpen) {
          WidgetsBinding.instance!.addPostFrameCallback((_) {
            setState(() {});
          });
        },
      ),
      appBar: AppBar(
        elevation: 0.0,

        ///icon color setting
        title: SizedBox(
          height: MediaQuery.of(context).size.height / 19, //height of button
          width: MediaQuery.of(context).size.width / 1.1,
          child: selectAppBarDetails(dashIndex),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height /
                    1.25, //height of button
                width: MediaQuery.of(context).size.width / 1,
                child: selectDashboardDetails(dashIndex)),
            SizedBox(
              //  color: Repository.textField(context),
              height:
              MediaQuery.of(context).size.height / 11.4, //height of button
              width: MediaQuery.of(context).size.width / 1,
              child: selectBottomNavigation(),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        padding: const EdgeInsets.all(5),
        height: MediaQuery.of(context).size.width * 0.2,
        width: MediaQuery.of(context).size.width * 0.2,
        child: FloatingActionButton.extended(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          onPressed: () {}, label: Icon(Icons.add),
        ),
      ),
    );
  }

  selectDashboardDetails(int dashIndex) {
    if (dashIndex == 1) {
      return Column(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height / 1.28,
              width: MediaQuery.of(context).size.width / 1.1,
              child: PageIndicatorContainer(
                key: key,
                child: PageView(
                  children: <Widget>[
                    dashboardFirstSlidingPage(),
                    dashboardSecondSlidingPage(),
                  ],
                  controller: controller,
                ),
                align: IndicatorAlign.bottom,
                length: 2,
                shape: IndicatorShape.circle(size: 8),
                indicatorSpace: 8.0,
              )),
        ],
      );
    } else if (dashIndex == 2) {
      return Column(
        children: [
          Container(
              decoration:
              BoxDecoration(border: Border.all(color:Colors.grey)),
              height: MediaQuery.of(context).size.height / 1.34,
              width: MediaQuery.of(context).size.width / 1.1,
              child: PageIndicatorContainer(
                key: key,
                child: PageView(
                  children: <Widget>[
                    totalExpenseAndPayment(),
                    topProductsInDayBook(),
                    accountsAndTransactionDetail(),
                    topCustomersDetail(),
                  ],
                  controller: controller,
                ),
                align: IndicatorAlign.bottom,
                shape: IndicatorShape.circle(size: 8),
                length: 4,
                indicatorSpace: 10.0,
              )),
        ],
      );
    } else if (dashIndex == 3) {
      return Column(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height / 1.4,
              width: MediaQuery.of(context).size.width / 1.1,
              child: selectMenuButtonDetail(buttonStatus)),
          SizedBox(
            height: MediaQuery.of(context).size.height / 17,
            width: MediaQuery.of(context).size.width / 1.1,
            child: selectMenuButton(),
          ),
        ],
      );
    }
  }

  Widget totalExpenseAndPayment() {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: const Color(0xffF83D3D),
            radius: 20.0,
            child: ClipRRect(
              child: SvgPicture.asset("assets/svg/money.svg",
                  height: 20, width: 20, fit: BoxFit.contain),
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          title: Text(
            "Total Expenses",
          ),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '2,46,000',
              ),
              const Text(
                '+30%',
                style: TextStyle(color: Color(0xff339E06)),
              )
            ],
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: const Color(0xffC79A07),
            radius: 20.0,
            child: ClipRRect(
              child: SvgPicture.asset("assets/svg/moneybag.svg",
                  height: 20, width: 20, fit: BoxFit.contain),
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          title: Text(
            "Total Payment",
          ),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '2,46,000',
              ),
              const Text(
                '+30%',
                style: TextStyle(color: Color(0xff339E06)),
              )
            ],
          ),
        ),
        lineGraphOfStatistics(),
        const SizedBox(
          height: 10,
        ),
        radialGraphDetails(),
      ],
    );
  }

  Widget radialGraphDetails() {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      height: MediaQuery.of(context).size.height / 3.5,
      width: MediaQuery.of(context).size.width / 1.2,
      child: PageIndicatorContainer(
        length: 3,
        key: key1,
        child: PageView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.7,
                  child: SfCircularChart(series: <CircularSeries>[
                    // Renders radial bar chart
                    RadialBarSeries<RadialData, String>(
                      //   useSeriesColor: (Colors.blue[300])!,
                      dataSource: radialData,
                      xValueMapper: (RadialData sales, _) => sales.year,
                      yValueMapper: (RadialData sales, _) => sales.sales,
                    )
                  ]),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 4.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total\n Purchase",
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        "24600",
                      ),
                      Text(
                        "cash",
                      ),
                      Text(
                        "24600",
                      ),
                      Text(
                        "bank",
                      ),
                      Text(
                        "24600",
                      ),
                      Text(
                        "credit",
                      ),
                      Text(
                        "24600",
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.7,
                  child: SfCircularChart(series: <CircularSeries>[
                    // Renders radial bar chart
                    RadialBarSeries<RadialData, String>(
                      //   useSeriesColor: (Colors.blue[300])!,
                      dataSource: radialData,
                      xValueMapper: (RadialData sales, _) => sales.year,
                      yValueMapper: (RadialData sales, _) => sales.sales,
                    )
                  ]),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 4.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total\n Purchase",
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        "24600",
                      ),
                      Text(
                        "cash",
                      ),
                      Text(
                        "24600",
                      ),
                      Text(
                        "bank",
                      ),
                      Text(
                        "24600",
                      ),
                      Text(
                        "credit",
                      ),
                      Text(
                        "24600",
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.7,
                  child: SfCircularChart(series: <CircularSeries>[
                    // Renders radial bar chart
                    RadialBarSeries<RadialData, String>(
                      //   useSeriesColor: (Colors.blue[300])!,
                      dataSource: radialData,
                      xValueMapper: (RadialData sales, _) => sales.year,
                      yValueMapper: (RadialData sales, _) => sales.sales,
                    )
                  ]),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 4.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total\n Purchase",
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        "24600",
                      ),
                      Text(
                        "cash",
                      ),
                      Text(
                        "24600",
                      ),
                      Text(
                        "bank",
                      ),
                      Text(
                        "24600",
                      ),

                    ],
                  ),
                )
              ],
            )
          ],
        ),
        align: IndicatorAlign.top,
        shape: IndicatorShape.circle(size: 8),
        indicatorSpace: 10.0,
      ),
    );
  }

  Widget lineGraphOfStatistics() {
    return Container(
      decoration: BoxDecoration(border: Border.all(color:  Colors.grey)),
      height: MediaQuery.of(context).size.height / 3.6,
      width: MediaQuery.of(context).size.width / 1.2,
      child:
      SfCartesianChart(primaryXAxis: CategoryAxis(), series: <ChartSeries>[
        StackedLineSeries<Statistics, String>(
            color: const Color(0xff22AB01),
            groupName: 'Group A',
            dataLabelSettings: const DataLabelSettings(useSeriesColor: true),
            dataSource: statisticsData,
            xValueMapper: (Statistics data, _) => data.x,
            yValueMapper: (Statistics data, _) => data.y1),
        StackedLineSeries<Statistics, String>(
            color: const Color(0xffC043EC),
            groupName: 'Group B',
            dataLabelSettings: const DataLabelSettings(useSeriesColor: true),
            dataSource: statisticsData,
            xValueMapper: (Statistics data, _) => data.x,
            yValueMapper: (Statistics data, _) => data.y2),
        StackedLineSeries<Statistics, String>(
          color: const Color(0xff0E5F96),
          groupName: 'Group A',
          dataLabelSettings: const DataLabelSettings(useSeriesColor: true),
          dataSource: statisticsData,
          xValueMapper: (Statistics data, _) => data.x,
          yValueMapper: (Statistics data, _) => data.y,
        ),
      ]),
    );
  }

  Widget topProductsInDayBook() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width / 1.1,
      child: ListView(
        shrinkWrap: true,
        children: [
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Products",)


              ],
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 20,
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              itemExtent: MediaQuery.of(context).size.height / 13,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                    leading: CircleAvatar(
                      radius: 20.0,
                      child: ClipRRect(
                        child: const Text('1'),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "<Product Name>",
                            ),
                            Text(
                              "<No of Unit>",
                            ),
                          ],
                        ),
                        Text(
                          "10000.00",
                        )
                      ],
                    ));
              })
        ],
      ),
    );
  }

  Widget accountsAndTransactionDetail() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 1.8,
        child: ListView(
          shrinkWrap: true,
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 20.0,
                child: ClipRRect(
                  child: SvgPicture.asset("assets/svg/Bank.svg",
                      height: 24,
                      width: 20,
                      fit: BoxFit.contain),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              title: Text(
                "Accounts",
              ),
            ),
            accountDetails(),
            ListTile(
              title: Text(
                "Transactions",
              ),
            ),
            modifiedTransaction(),
            const SizedBox(
              height: 10,
            ),
            deletedTransaction(),
          ],
        ),
      ),
    );
  }

  Widget deletedTransaction() {
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width / 1.2,
      child: ListView(
        itemExtent: MediaQuery.of(context).size.height / 23,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 20.0,
              child: ClipRRect(
                child: SvgPicture.asset("assets/svg/edit.svg",
                    height: 20,
                    width: 20,
                    fit: BoxFit.contain),
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            title: Text(
              "Deleted Transactions",
            ),
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sales",
                ),
                Text(
                  "Purchase",
                )
              ],
            ),
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "1",
                ),
                Text(
                  "1",
                )
              ],
            ),
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Payment",
                ),
                Text(
                  "Receipt",
                )
              ],
            ),
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "1",
                ),
                Text(
                  "1",
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget modifiedTransaction() {
    return Container(
      height: MediaQuery.of(context).size.height / 4.5,
      width: MediaQuery.of(context).size.width / 1.2,
      child: ListView(
        itemExtent: MediaQuery.of(context).size.height / 25,
        children: [
          ListTile(
            leading: CircleAvatar(
              //backgroundColor: Colors.green,
              radius: 20.0,
              child: ClipRRect(
                child: SvgPicture.asset("assets/svg/edit.svg",
                    height: 20,
                    width: 20,
                    fit: BoxFit.contain),
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            title: Text(
              "Modified Transactions",
            ),
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sales",
                ),
                Text(
                  "Purchase",
                )
              ],
            ),
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "1",

                ),
                Text(
                  "1",
                )
              ],
            ),
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Payment",

                ),
                Text(
                  "Receipt",

                )
              ],
            ),
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "1",
                ),
                Text(
                  "1",
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget accountDetails() {
    return Container(
      height: MediaQuery.of(context).size.height / 3.7,
      width: MediaQuery.of(context).size.width / 1.2,
      child: ListView(
        itemExtent: MediaQuery.of(context).size.height / 20,
        children: [
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Cash In Hand",
                ),
                Text(
                  "35356.00",
                )
              ],
            ),
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Bank",
                ),
                Text(
                  "23136.00",
                )
              ],
            ),
          ),ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Bank",
                ),
                Text(
                  "23136.00",
                )
              ],
            ),
          ),ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Bank",
                ),
                Text(
                  "23136.00",
                )
              ],
            ),
          ),ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Bank",
                ),
                Text(
                  "23136.00",
                )
              ],
            ),
          ),

        ],
      ),
    );
  }

  Widget topCustomersDetail() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width / 1.1,
      child: Column(
        children: [
          const SizedBox(
            height: 3,
          ),
          ListTile(
              title: Text(
                "Top Customers",
              )
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width / 1.1,
            child: ListView.builder(
                shrinkWrap: true,
                itemExtent: MediaQuery.of(context).size.height / 13,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                      leading: CircleAvatar(
                        radius: 20.0,
                        child: ClipRRect(
                          child: SvgPicture.asset("assets/svg/Employee.svg",
                              height: 20, width: 20, fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      trailing: Text(
                        "10000.00",
                      ),
                      title: Text(
                        "Savad Farooque",
                      ));
                }),
          ),
        ],
      ),
    );
  }

  Widget dashboardFirstSlidingPage() {
    ///summary dropdown
    return SizedBox(
        width: MediaQuery.of(context).size.width / 1.1,
        height: MediaQuery.of(context).size.height / 18,
        child: Column(
          children: [
            summaryAndDropdownDetail(),
            dashboardGraphDetailInFlutter(),
            const SizedBox(
              height: 20,
            ),
            totalSaleDetailInDashboard(),
            const SizedBox(
              height: 10,
            ),
            totalProfileDetailInDashboard(),
            const SizedBox(
              height: 10,
            ),
            totalExpensesInDashboard(),
          ],
        ));
  }

  Widget dashboardGraphDetailInFlutter() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2.5, //height of button
      width: MediaQuery.of(context).size.width / 1.1,
      child: SfCartesianChart(
        // primaryXAxis: CategoryAxis(),
          primaryXAxis: CategoryAxis(
            //Hide the gridlines of x-axis
            majorGridLines: const MajorGridLines(width: 0),
            //Hide the axis line of x-axis
          ),
          series: <CartesianSeries>[
            ColumnSeries<ChartData, String>(
                color: const Color(0xff017CAB),
                dataSource: chartData,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y,
                spacing: 0.4),
            ColumnSeries<ChartData, String>(
                color: const Color(0xff22AB01),
                dataSource: chartData,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y1,
                spacing: 0.4),
            ColumnSeries<ChartData, String>(
                color: const Color(0xffF83D3D),
                dataSource: chartData,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y2,
                spacing: 0.4)
          ]),
    );
  }

  Widget dashboardSecondSlidingPage() {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width / 1.1,
      child: Column(
        children: [
          const SizedBox(
            height: 3,
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width / 1.1,
              height: MediaQuery.of(context).size.height / 18,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height /
                        20, //height of button
                    width: MediaQuery.of(context).size.width / 2.4,
                    child: TextButton(
                      child: Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: buttonIconColor1,
                          ),
                          const Text(
                            'Customer',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      style: TextButton.styleFrom(
                          primary: button1Text, backgroundColor: button1Color),
                      onPressed: () {
                        setState(() {
                          buttonColors = 1;

                        });
                        // print('Pressed');
                      },
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height /
                        20, //height of button
                    width: MediaQuery.of(context).size.width / 2.4,
                    child: TextButton(
                      child: Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: buttonIconColor2,
                          ),
                          const Text(
                            'Supplier',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      style: TextButton.styleFrom(
                          primary: button2Text, backgroundColor: button2Color),
                      onPressed: () {
                        setState(() {
                          buttonColors = 2;
                        });
                        // print('Pressed');
                      },
                    ),
                  ),
                ],
              )),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width / 1.1,
            child: supplierAndCustomerDetail(buttonColors),
          )
        ],
      ),
    );
  }

  supplierAndCustomerDetail(int buttonColors) {
    if (buttonColors == 1) {
      return customerDetailInDashboard();
    } else if (buttonColors == 2) {
      return supplierDetailsInDashBoard();
    }
  }

  Widget totalSaleDetailInDashboard() {
    return ListTile(
      leading: CircleAvatar(
        radius: 20.0,
        child: ClipRRect(
          child: SvgPicture.asset("assets/svg/sale.svg",
              height: 20, width: 20, fit: BoxFit.contain),
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
      title: Text(
        "Total Sales",
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '2,46,000',
          ),
          const Text(
            '+30%',
            style: TextStyle(color: Color(0xff339E06)),
          )
        ],
      ),
    );
  }

  Widget totalExpensesInDashboard() {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.red,
        radius: 20.0,
        child: ClipRRect(
          child: SvgPicture.asset("assets/svg/money.svg",
              height: 20, width: 20, fit: BoxFit.contain),
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
      title: Text(
        "Total Expenses",
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '2,46,000',
          ),
          const Text(
            '+30%',
            style: TextStyle(color: Color(0xff339E06)),
          )
        ],
      ),
    );
  }

  Widget totalProfileDetailInDashboard() {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.green,
        radius: 20.0,
        child: ClipRRect(
          child: SvgPicture.asset("assets/svg/moneybag.svg",
              height: 20, width: 20, fit: BoxFit.contain),
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
      title: Text(
        "Total Profit",
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '2,46,000',
          ),
          const Text(
            '+30%',
            style: TextStyle(color: Color(0xff339E06)),
          )
        ],
      ),
    );
  }

  Widget summaryAndDropdownDetail() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 20, //height of button
      width: MediaQuery.of(context).size.width / 1.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Summary',
            // color: textColor,

          ),
          DropdownButton(
            underline: const SizedBox(),
            elevation: 0,
            // Initial Value
            value: dropDownValue1,

            icon: Icon(
              Icons.keyboard_arrow_down,

            ),

            items: items.map((String items) {
              return DropdownMenuItem(
                  value: items,
                  child: Text(
                      items,
                      style: TextStyle(
                        fontSize: 12,
                        //color: textColor


                      )));
            }).toList(),

            onChanged: (String? newValue) {
              setState(() {
                dropDownValue1 = newValue!;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget customerDetailInDashboard() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.5,
      width: MediaQuery.of(context).size.width / 1.1,
      child: ListView.builder(
          shrinkWrap: true,
          itemExtent: MediaQuery.of(context).size.height / 13,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: CircleAvatar(
                  radius: 20.0,
                  child: ClipRRect(
                    child: SvgPicture.asset(
                      "assets/svg/Employee.svg",
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                trailing: Text(
                  "1234.00",
                  //  style: TextStyle(color: Repository.textColor(context)),
                ),
                title: Text(
                  "Savad Farooque",
                  //style: TextStyle(color: Repository.textColor(context)),
                ));
          }),
    );
  }

  Widget supplierDetailsInDashBoard() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.5,
      width: MediaQuery.of(context).size.width / 1.1,
      child: ListView.builder(
          shrinkWrap: true,
          itemExtent: MediaQuery.of(context).size.height / 13,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: CircleAvatar(
                  radius: 20.0,
                  child: ClipRRect(
                    child: SvgPicture.asset(
                      "assets/svg/ledger.svg",
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                trailing: Text(
                  "1234.00",
                  //style: TextStyle(color: Repository.textColor(context)),
                ),
                title: Text(
                  "Suhaib Ali",
                  //style: TextStyle(color: Repository.textColor(context)),
                ));
          }),
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
                  bottom: BorderSide(color: button1BorderColor, width: 3),
                ),
              ),
              child: TextButton(
                child: const Text(
                  'Accounts',
                  style: TextStyle(),
                ),
                style: TextButton.styleFrom(
                  primary: button1TextColor,

                  // print('Pressed');

                ), onPressed: () {  },
              ),),
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: button2BorderColor, width: 3),
                ),
              ),
              child: TextButton(
                child: const Text(
                  'Finances',
                  style: TextStyle(),
                ),
                style: TextButton.styleFrom(
                  primary: button2TextColor,
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
                  bottom: BorderSide(color: button3BorderColor, width: 3),
                ),
              ),
              child: TextButton(
                child: const Text(
                  'Sales',
                  style: TextStyle(),
                ),
                style: TextButton.styleFrom(
                  primary: button3TextColor,
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
                  bottom: BorderSide(color: button4BorderColor, width: 3),
                ),
              ),
              child: TextButton(
                child: const Text(
                  'Purchase',
                  style: TextStyle(),
                ),
                style: TextButton.styleFrom(
                  primary: button4TextColor,
                ),
                onPressed: () {
                  setState(() {
                    buttonStatus = 4;

                  });
                  // print('Pressed');
                },
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: button5BorderColor, width: 3),
                ),
              ),
              child: TextButton(
                child: const Text(
                  'Products',
                  style: TextStyle(),
                ),
                style: TextButton.styleFrom(
                  primary: button5TextColor,
                ),
                onPressed: () {
                  setState(() {
                    buttonStatus = 5;
                    ;
                  });
                  // print('Pressed');
                },
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: button6BorderColor, width: 3),
                ),
              ),
              child: TextButton(
                child: const Text(
                  'Inventory',
                  style: TextStyle(),
                ),
                style: TextButton.styleFrom(
                  primary: button6TextColor,
                ),
                onPressed: () {
                  setState(() {
                    buttonStatus = 6;
                    ;
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

  selectDashboardButtons() {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  dashboardIndex = 1;
                });
              },
              icon: const Icon(Icons.circle),
              iconSize: 10,
              color: dashIconBlack,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  dashboardIndex = 2;
                });
              },
              icon: const Icon(Icons.circle),
              iconSize: 10,
              color: dashIconGrey,
            )
          ],
        )
      ],
    );
  }


  _onPageViewChange(int page) {
    print("Current Page: " + page.toString());
  }

  test(int initialPage) {
    return PageView(
      controller: controller,
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      pageSnapping: true,
      onPageChanged: _onPageViewChange,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width / 1.1,
          decoration:
          BoxDecoration(border: Border.all(color: Colors.grey)),
          child: Column(
            children: [
              const SizedBox(
                height: 3,
              ),
              SizedBox(
                height:
                MediaQuery.of(context).size.height / 17, //height of button
                width: MediaQuery.of(context).size.width / 1.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          color: index == 1 ? buttonColor1 : Colors.transparent,
                          borderRadius:
                          const BorderRadius.all(Radius.circular(5.0)),
                        ),

                        height: MediaQuery.of(context).size.height /
                            17, //height of button
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 6,
                            ),
                            Icon(
                              Icons.person,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              height: MediaQuery.of(context).size.height /
                                  14, //height of button
                              width: MediaQuery.of(context).size.width / 5,
                              child: Text(
                                'Customer',
                                style: TextStyle(
                                    fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          index = 1;
                        });
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          color: index == 2 ? buttonColor1 : Colors.transparent,
                          borderRadius: const BorderRadius.all(Radius.circular(
                              5.0) //                 <--- border radius here
                          ),
                        ),
                        height: MediaQuery.of(context).size.height /
                            17, //height of button
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 6,
                            ),
                            Icon(
                              Icons.person_pin,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              height: MediaQuery.of(context).size.height /
                                  14, //height of button
                              width: MediaQuery.of(context).size.width / 6,
                              child: Text(
                                'Supplier',
                                style: TextStyle(
                                    fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          index = 2;
                        });
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.5,
                width: MediaQuery.of(context).size.width / 1.1,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemExtent: MediaQuery.of(context).size.height / 13,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                          leading: SvgPicture.asset("assets/svg/Employee.svg"),
                          trailing: Text(
                            "1234.00",
                          ),
                          title: Text(
                            "Savad Farooque",
                          ));
                    }),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.yellow,
        )
      ],
    );
  }

  selectMenuButtonDetail(int buttonStatus) {
    if (buttonStatus == 1) {
      return accountDetailInMenu();
    } else if (buttonStatus == 2) {
      return financeDetailInMenu();
    } else if (buttonStatus == 3) {
      return salesDetailInMenu();
    } else if (buttonStatus == 4) {
      return purchaseDetailInMenu();
    } else if (buttonStatus == 5) {
      return productDetailInMenu();
    } else if (buttonStatus == 6) {
      return inventoryDetailsInMenu();
    }
  }

  Widget accountDetailInMenu() {
    return ListView(
      itemExtent: MediaQuery.of(context).size.height / 17,
      children: [
        ListTile(
          title: Text(
            'Accounts',
          ),
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/svg/ledger.svg',
            height: 23,
            width: 22,
          ),
          title: Text(
            'Ledger',
          ),
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => LedgerListPage()),
            // );
          },
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
          leading: SvgPicture.asset(
            'assets/svg/Payment.svg',
            height: 23,
            width: 22,
          ),
          title: Text(
            'Payments',
          ),
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => PaymentListPage()),
            // );
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
          leading: SvgPicture.asset(
            'assets/svg/Invoice.svg',
            height: 23,
            width: 22,
          ),
          title: Text(
            'Sales Invoice',
          ),
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => SalesInvoiceList()),
            // );
          },
        ),



      ],
    );
  }

  Widget purchaseDetailInMenu() {
    return ListView(
      itemExtent: MediaQuery.of(context).size.height / 17,
      children: [
        ListTile(
          title: Text(
            'Purchases',
          ),
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/svg/Order.svg',
            height: 23,
            width: 22,
          ),
          title: Text(
            'Purchase Order',
          ),

        ),
      ],
    );
  }

  Widget productDetailInMenu() {
    return ListView(
      itemExtent: MediaQuery.of(context).size.height / 17,
      children: [
        ListTile(
          title: Text(
            'Products',
          ),
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/svg/brand.svg',
            height: 23,
            width: 22,
          ),
          title: Text(
            'Brand',
          ),
          onTap: () {

          },
        ),
      ],
    );
  }

  Widget inventoryDetailsInMenu() {
    return ListView(
      itemExtent: MediaQuery.of(context).size.height / 17,
      children: [
        ListTile(
          title: Text(
            'Inventory',
          ),
        ),
        ListTile(
          leading: SvgPicture.asset(
            'assets/svg/Routes.svg',
            height: 23,
            width: 22,
          ),
          title: Text(
            'Route',
          ),
          onTap: () {

          },
        ),
      ],
    );
  }

  selectAppBarDetails(int dashIndex) {
    if (dashIndex == 1) {
      return Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Dashboard',
            ),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/svg/search.svg',
                  height: 18,
                  width: 20,
                ))
          ],
        ),
      );
    } else if (dashIndex == 2) {
      return Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Daybook',
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/svg/printer.svg',
                      height: 18,
                      width: 20,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/svg/search.svg',
                      height: 18,
                      width: 20,
                    ))
              ],
            ),
          ],
        ),
      );
    } else if (dashIndex == 3) {
      return Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Menu',
            ),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/svg/search.svg',
                  height: 18,
                  width: 20,
                ))
          ],
        ),
      );
    }
  }

  selectBottomNavigation() {
    return Container(
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(blurRadius: 6, color: Colors.grey, offset: Offset(1, 3))
          ],
          borderRadius: const BorderRadius.all(Radius.circular(10.0))),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    dashIndex = 1;
                    bottomBarColor(dashIndex);
                  });
                },
                icon: SvgPicture.asset(
                  'assets/svg/dashboard.svg',
                  color: dashColor,
                ),
              ),
            ),
            AspectRatio(
              aspectRatio: 1,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    dashIndex = 2;

                    bottomBarColor(dashIndex);
                  });
                },
                icon: SvgPicture.asset(
                  'assets/svg/daybook.svg',
                  color: dayBookColor,
                ),
              ),
            ),
            AspectRatio(
                aspectRatio: 1,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      dashIndex = 3;
                      bottomBarColor(dashIndex);
                    });
                  },
                  icon: SvgPicture.asset(
                    'assets/svg/menulist.svg',
                    color: menuColor,
                  ),
                )),
            AspectRatio(
                aspectRatio: 1,
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/svg/Blank.svg',
                    color: Colors.transparent,
                  ),
                )),
          ],
        ),
      ),
    );
  }

  bottomBarColor(int iconColor) {
    if (iconColor == 1) {
      dashColor = const Color(0xff1C8F55);
      dayBookColor = const Color(0xffCECECE);
      menuColor = const Color(0xffCECECE);
    } else if (iconColor == 2) {
      dashColor = const Color(0xffCECECE);
      dayBookColor = const Color(0xff1C8F55);
      menuColor = const Color(0xffCECECE);
    } else if (iconColor == 3) {
      dashColor = const Color(0xffCECECE);
      dayBookColor = const Color(0xffCECECE);
      menuColor = const Color(0xff1C8F55);
    }
  }
}


class Statistics {
  Statistics(this.x, this.y, this.y1, this.y2);

  final String x;
  final double? y;
  final double? y1;
  final double? y2;
}

class ChartData {
  ChartData(this.x, this.y, this.y1, this.y2);

  final String x;
  final double? y;
  final double? y1;
  final double? y2;
}

class _SaleData {
  _SaleData(this.year, this.sales);

  final String year;
  final double sales;
}

class RadialData {
  RadialData(this.year, this.sales);

  final String year;
  final double sales;
}

class NavDrawer extends StatefulWidget {
  const NavDrawer({
    this.elevation = 16.0,
    required this.callback,
  }) : assert(elevation != null && elevation >= 0.0);

  final double elevation;

  final DrawerCallback callback;

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  void initState() {
    if (widget.callback != null) {
      widget.callback(true);
    }

    super.initState();
  }

  @override
  void dispose() {
    if (widget.callback != null) {
      widget.callback(false);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height / 5,
            child: DrawerHeader(
                margin: const EdgeInsets.all(0.0),
                padding: const EdgeInsets.all(0.0),
                child: ListTile(
                  ///image of user
                  leading: SizedBox(
                    height: MediaQuery.of(context).size.height /
                        17, //height of button
                    width: MediaQuery.of(context).size.width / 7,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xff858585),
                          shape: const CircleBorder(),
                        ),
                        child: const Text('')),
                  ),

                  title: Text(
                    'Savad Farooque',
                    style: TextStyle(
                        fontSize: 17),
                  ),
                  // trailing: IconButton(


                )),
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/svg/setting.svg',
              height: 23,
              width: 22,
            ),
            title: Text(
              'Settings',
              style: TextStyle(
              ),
            ),
            onTap: () {

            },
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/svg/printer.svg',
              height: 23,
              width: 22,
            ),
            title: Text(
              'Printer Settings',
            ),
          ),


        ],
      ),
    );
  }
}


