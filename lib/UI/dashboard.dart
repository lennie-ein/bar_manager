import 'package:bar_manager/UI/orderspage.dart';
import 'package:bar_manager/UI/storeanalytics.dart';
import 'package:bar_manager/Utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';

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
      body: TabBarView(
        children: const [StoreAnalyticsScreen(),
          Center(
            child: Text("Home"),
          ),
          OrdersScreen(),
          ],
        controller: _tabController,
        physics: AlwaysScrollableScrollPhysics(),
      ),
    );
  }
}
