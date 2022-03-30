import 'package:bar_manager/UI/orderspage.dart';
import 'package:bar_manager/UI/storeanalytics.dart';
import 'package:bar_manager/Utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';
import 'package:ms_undraw/ms_undraw.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
    with TickerProviderStateMixin {
  List<_SalesData> data = [
    _SalesData('Mon', 35),
    _SalesData('Tue', 28),
    _SalesData('Wed', 34),
    _SalesData('Thur', 32),
    _SalesData('Fri', 40),
    _SalesData('Sat', 45),
    _SalesData('Sun', 20)
  ];
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: 1,
      length: 3,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HypeColors.HypeBgBlue,
      bottomNavigationBar: MotionTabBar(
        initialSelectedTab: "Dashboard",
        labels: const ["Store Analytics", "Dashboard", "Orders"],
        icons: const [
          CupertinoIcons.graph_square,
          CupertinoIcons.home,
          CupertinoIcons.cart
        ],
        onTabItemSelected: (int value) {
          setState(() {
            _tabController!.index = value;
          });
        },
        tabBarColor: HypeColors.HypeFresia,
        tabSelectedColor: HypeColors.HypeBronze,
        tabIconColor: HypeColors.HypeBronze,
        textStyle: TextStyle(
            color: HypeColors.HypeBronze, fontWeight: FontWeight.bold),
      ),
      body: SafeArea(
        child: TabBarView(
          children: [
            const StoreAnalyticsScreen(),
            Column(
              children: [
                //Dashboard heading
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 10),
                  child: Row(
                    children: [
                      Text(
                        "Dashboard",
                        style: TextStyle(
                            color: HypeColors.HypeBronze,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.balooTamma().fontFamily),
                      ),
                    ],
                  ),
                ),
                //Containers to display available bars or distribution points in the rows below
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 45.0, top: 15),
                      child: Container(
                        width: 150,
                        height: 150,
                        child: UnDraw(
                            illustration: UnDrawIllustration.beer,
                            color: HypeColors.HypeLightBlue),
                        decoration: BoxDecoration(
                            color: HypeColors.HypeDeepSea,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 5.0,
                                blurRadius: 10.0,
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 45.0, top: 15),
                      child: Container(
                        width: 150,
                        height: 150,
                        child: UnDraw(
                            illustration: UnDrawIllustration.beer,
                            color: HypeColors.HypeLightBlue),
                        decoration: BoxDecoration(
                            color: HypeColors.HypeDeepSea,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 5.0,
                                blurRadius: 7.0,
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0))),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 40.0,),
                //Graph to be displayed
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      width: MediaQuery.of(context).size.width + 50,
                        child: SfCartesianChart(
                            primaryXAxis: CategoryAxis(
                                labelPlacement: LabelPlacement.onTicks,
                                labelPosition: ChartDataLabelPosition.outside),
                            // Chart title
                            title: ChartTitle(
                                text: 'Weekly Sales Analysis',
                                textStyle: TextStyle(
                                    color: HypeColors.HypeBronze,
                                    fontWeight: FontWeight.bold)),
                            // Enable legend
                            legend: Legend(isVisible: true),
                            // Enable tooltip
                            tooltipBehavior: TooltipBehavior(enable: true),
                            enableAxisAnimation: true,
                            series: <ChartSeries<_SalesData, String>>[
                              SplineSeries<_SalesData, String>(
                                  dataSource: data,
                                  xValueMapper: (_SalesData sales, _) =>
                                      sales.year,
                                  yValueMapper: (_SalesData sales, _) =>
                                      sales.sales,
                                  name: '',
                                  yAxisName: 'Bottles in Thousands'),
                            ])),
                  ),
                )
              ],
            ),
            const OrdersScreen(),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
