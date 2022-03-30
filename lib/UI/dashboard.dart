import 'package:bar_manager/UI/orderspage.dart';
import 'package:bar_manager/UI/storeanalytics.dart';
import 'package:bar_manager/Utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';
import 'package:ms_undraw/ms_undraw.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
    with TickerProviderStateMixin {
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
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 10),
                  child: Row(
                    children: [
                      Text(
                        "Dashboard",
                        style: TextStyle(
                            color: HypeColors.HypeBronze,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.bangers().fontFamily),
                      ),
                    ],
                  ),
                ),
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
                            boxShadow: const [BoxShadow(
                              color: Colors.black26,
                              spreadRadius: 5.0,
                              blurRadius: 10.0,
                              offset: Offset(0, 2),
                            )],
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
                            boxShadow: const [BoxShadow(
                              color: Colors.black26,
                              spreadRadius: 5.0,
                              blurRadius: 7.0,
                              offset: Offset(0, 2),
                            )],
                            borderRadius:
                            BorderRadius.all(Radius.circular(15.0))),
                      ),
                    )
                  ],
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
